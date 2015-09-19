module Finances
  class DresController < ApplicationController
    def index
      @index = IndexDreVO.new
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
      @dre = CreateDreVO.new(params)

      redirect_to dres_path(@dre, notice: 'Dre was successfully created.')
    end

    def update
      @dre = UpdateDreVO.new(params)

      redirect_to dres_path(@dre, notice: 'Dre was successfully updated.')
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
