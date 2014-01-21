class PackingsController < ApplicationController
  def index
    @packings = Packing.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @packings }
    end
  end

  def new
    @packings=Packing.new
  end

  def create
    @packings = Packing.new(params[:packing])
    respond_to do |format|
      if @packings.save
        format.html { redirect_to @packings, notice: 'Product was successfully created.' }
        format.json { render json: @packings, status: :created, location: @packings }
      else
        format.html { render action: "new" }
        format.json { render json: @packings.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @packing = Packing.find(params[:id])
  end

  def edit
    @packings = Packing.find(params[:id])
  end

  def update
    @packing = Packing.find(params[:id])

    respond_to do |format|
      if @packing.update_attributes(params[:packing])
        format.html { redirect_to @packing, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @packing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @packing = Packing.find(params[:id])
    @packing.destroy

    respond_to do |format|
      format.html { redirect_to packings_url }
      format.json { head :no_content }
    end
  end
end
