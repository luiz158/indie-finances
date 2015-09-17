module Finances
  class DresController < ApplicationController
    # GET /dres
    # GET /dres.json
    def index
      @dres = Dre.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @dres }
      end
    end
  
    # GET /dres/1
    # GET /dres/1.json
    def show
      @dre = Dre.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @dre }
      end
    end
  
    # GET /dres/new
    # GET /dres/new.json
    def new
      @dre = Dre.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @dre }
      end
    end
  
    # GET /dres/1/edit
    def edit
      @dre = Dre.find(params[:id])
    end
  
    # POST /dres
    # POST /dres.json
    def create
      @dre = Dre.new(params[:dre])
  
      respond_to do |format|
        if @dre.save
          format.html { redirect_to @dre, notice: 'Dre was successfully created.' }
          format.json { render json: @dre, status: :created, location: @dre }
        else
          format.html { render action: "new" }
          format.json { render json: @dre.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /dres/1
    # PUT /dres/1.json
    def update
      @dre = Dre.find(params[:id])
  
      respond_to do |format|
        if @dre.update_attributes(params[:dre])
          format.html { redirect_to @dre, notice: 'Dre was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @dre.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /dres/1
    # DELETE /dres/1.json
    def destroy
      @dre = Dre.find(params[:id])
      @dre.destroy
  
      respond_to do |format|
        format.html { redirect_to dres_url }
        format.json { head :ok }
      end
    end
  end
end
