class RegimentsController < ApplicationController
  before_action :set_regiment, only: [:show, :edit, :update, :destroy]

  # GET /regiments
  # GET /regiments.json
  def index
    @regiments = Regiment.all
  end

  # GET /regiments/1
  # GET /regiments/1.json
  def show
  end

  # GET /regiments/new
  def new
    @regiment = Regiment.new
  end

  # GET /regiments/1/edit
  def edit
  end

  # POST /regiments
  # POST /regiments.json
  def create
    @regiment = Regiment.new(regiment_params)

    respond_to do |format|
      if @regiment.save
        format.html { redirect_to @regiment, notice: 'Regiment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @regiment }
      else
        format.html { render action: 'new' }
        format.json { render json: @regiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regiments/1
  # PATCH/PUT /regiments/1.json
  def update
    respond_to do |format|
      if @regiment.update(regiment_params)
        format.html { redirect_to @regiment, notice: 'Regiment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @regiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regiments/1
  # DELETE /regiments/1.json
  def destroy
    @regiment.destroy
    respond_to do |format|
      format.html { redirect_to regiments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regiment
      @regiment = Regiment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regiment_params
      params.require(:regiment).permit(:name, :description)
    end
end
