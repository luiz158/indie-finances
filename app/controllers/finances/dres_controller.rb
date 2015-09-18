module Finances
  class DresController < ApplicationController
    def index
      @dres = IndexDreVO.all
    end

    def show
      @show = DreVO.new(params)
    end

    def new
      @resource = NewDreVO.new
    end

    def edit
      @resource = EditDreVO.new(params)
    end

    def create
      @dre = Dre.new(params[:dre])

      respond_to do |format|
        if @dre.save
          format.html { redirect_to @dre, notice: 'Dre was successfully created.' }
        else
          format.html { render action: "new" }
        end
      end
    end

    def update
      @dre = Dre.find(params[:id])

      puts params.inspect
      respond_to do |format|
        if @dre.update_attributes(params[:dre])
          format.html { redirect_to @dre, notice: 'Dre was successfully updated.' }
        else
          format.html { render action: "edit" }
        end
      end
    end

    def destroy
      @dre = Dre.find(params[:id])
      @dre.destroy

      respond_to do |format|
        format.html { redirect_to dres_url }
      end
    end
  end
end
