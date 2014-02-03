class RegimentExercisesController < ApplicationController
  before_action :set_regiment_exercise, only: [:show, :edit, :update, :destroy]

  # GET /regiment_exercises
  # GET /regiment_exercises.json
  def index
    @regiment_exercises = RegimentExercise.all
  end

  # GET /regiment_exercises/1
  # GET /regiment_exercises/1.json
  def show
  end

  # GET /regiment_exercises/new
  def new
    @regiment_exercise = RegimentExercise.new
  end

  # GET /regiment_exercises/1/edit
  def edit
  end

  # POST /regiment_exercises
  # POST /regiment_exercises.json
  def create
    @regiment_exercise = RegimentExercise.new(regiment_exercise_params)

    respond_to do |format|
      if @regiment_exercise.save
        format.html { redirect_to @regiment_exercise, notice: 'Regiment exercise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @regiment_exercise }
      else
        format.html { render action: 'new' }
        format.json { render json: @regiment_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regiment_exercises/1
  # PATCH/PUT /regiment_exercises/1.json
  def update
    respond_to do |format|
      if @regiment_exercise.update(regiment_exercise_params)
        format.html { redirect_to @regiment_exercise, notice: 'Regiment exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @regiment_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regiment_exercises/1
  # DELETE /regiment_exercises/1.json
  def destroy
    @regiment_exercise.destroy
    respond_to do |format|
      format.html { redirect_to regiment_exercises_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regiment_exercise
      @regiment_exercise = RegimentExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regiment_exercise_params
      params[:regiment_exercise].permit(:order, :reps)
    end
end
