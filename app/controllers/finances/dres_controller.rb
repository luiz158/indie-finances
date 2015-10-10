module Finances
  class DresController < ApplicationController
    def index
      @index = IndexDrePage.new
    end

    def show
      @show = DrePage.new(params)
    end

    def new
      @resource = NewDrePage.new
    end

    def edit
      @resource = EditDrePage.new(params)
    end

    def create
      @dre = CreateDrePage.new(params)

      redirect_to dres_path(@dre)
    end

    def update
      @dre = UpdateDrePage.new(params)

      redirect_to dres_path(@dre)
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
