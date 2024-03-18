class DasController < ApplicationController
	before_action :set_da, only: %i[ show edit update destroy ]
	before_action :authenticate_user!
	# GET /das or /das.json
	def index
	  @das = Da.all
	end
  
	# GET /das/1 or /das/1.json
	def show
	end
  
	# GET /das/new
	def new
	  @da = Da.new
	end
  
	# GET /das/1/edit
	def edit
	end
  
	# POST /das or /das.json
	def create
	  @da = Da.new(da_params)
  
	  respond_to do |format|
		if @da.save
		  format.html { redirect_to da_url(@da), notice: "Da was successfully created." }
		  format.json { render :show, status: :created, location: @da }
		else
		  format.html { render :new, status: :unprocessable_entity }
		  format.json { render json: @da.errors, status: :unprocessable_entity }
		end
	  end
	end
  
	# PATCH/PUT /das/1 or /das/1.json
	def update
	  respond_to do |format|
		if @da.update(da_params)
		  format.html { redirect_to da_url(@da), notice: "Da was successfully updated." }
		  format.json { render :show, status: :ok, location: @da }
		else
		  format.html { render :edit, status: :unprocessable_entity }
		  format.json { render json: @da.errors, status: :unprocessable_entity }
		end
	  end
	end
  
	# DELETE /das/1 or /das/1.json
	def destroy
	  @da.destroy
  
	  respond_to do |format|
		format.html { redirect_to das_url, notice: "Da was successfully destroyed." }
		format.json { head :no_content }
	  end
	end
  
	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_da
		@da = Da.find(params[:id])
	  end
  
	  # Only allow a list of trusted parameters through.
	  def da_params
		params.require(:da).permit(:name, :city, :caseNumber, :feedback, :rating)
	  end
  end

