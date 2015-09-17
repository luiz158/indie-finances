module Finances
  class DresController < ApplicationController
    def index
      @dres = Dre.all
    end

    def show
      @dre = Dre.find(params[:id])
    end

    def new
      @dre = Dre.new
    end

    def edit
      @dre = Dre.find(params[:id])
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
