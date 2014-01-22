class MedicinesController < ApplicationController
  def index
    @medicines = Medicine.joins(:packing)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medicines}
    end
  end

  def new
    @medicines = Medicine.new
  end

  def create
    @medicines = Medicine.new(params[:medicine])
    respond_to do |format|
      if @medicines.save
        format.html { redirect_to @medicines, notice: 'Medicine was successfully created.' }
        format.json { render json: @medicines, status: :created, location: @packings }
      else
        format.html { render action: "new" }
        format.json { render json: @medicines.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @medicines = Medicine.find(params[:id])
  end

  def update
    @medicine = Medicine.find(params[:id])

    respond_to do |format|
      if @medicine.update_attributes(params[:medicine])
        format.html { redirect_to @medicine, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @medicine = Medicine.find(params[:id])
  end

  def destroy
    @medicine = Medicine.find(params[:id])
    @medicine.destroy
    respond_to do |format|
      format.html { redirect_to medicines_url }
      format.json { head :no_content }
    end
  end
end