class RegimentRequestsController < ApplicationController
  before_action :set_regiment_request, only: [:show, :edit, :update, :destroy]

  # GET /regiment_requests
  # GET /regiment_requests.json
  def index
    @regiment_requests = RegimentRequest.all
  end

  # GET /regiment_requests/1
  # GET /regiment_requests/1.json
  def show
  end

  # GET /regiment_requests/new
  def new
    @regiment_request = RegimentRequest.new
  end

  # GET /regiment_requests/1/edit
  def edit
  end

  # POST /regiment_requests
  # POST /regiment_requests.json
  def create
    @regiment_request = RegimentRequest.new(regiment_request_params)

    respond_to do |format|
      if @regiment_request.save
        format.html { redirect_to @regiment_request, notice: 'Regiment request was successfully created.' }
        format.json { render action: 'show', status: :created, location: @regiment_request }
      else
        format.html { render action: 'new' }
        format.json { render json: @regiment_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regiment_requests/1
  # PATCH/PUT /regiment_requests/1.json
  def update
    respond_to do |format|
      if @regiment_request.update(regiment_request_params)
        format.html { redirect_to @regiment_request, notice: 'Regiment request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @regiment_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regiment_requests/1
  # DELETE /regiment_requests/1.json
  def destroy
    @regiment_request.destroy
    respond_to do |format|
      format.html { redirect_to regiment_requests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regiment_request
      @regiment_request = RegimentRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regiment_request_params
      params.require(:regiment_request).permit(:opt1, :opt2, :opt3, :opt4, :opt5, :opt6, :opt7)
    end
end
