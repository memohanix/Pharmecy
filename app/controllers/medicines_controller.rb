class MedicinesController < ApplicationController
  def index
    @medicines = Medicine.all
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
  end

  def update
  end

  def show
    @medicine = Medicine.find(params[:id])
  end

  def destroy
  end
end
