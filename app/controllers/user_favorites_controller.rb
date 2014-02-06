class UserFavoritesController < ApplicationController
  before_action :set_user_favorite, only: [:show, :edit, :update, :destroy]

  # GET /user_favorites
  # GET /user_favorites.json
  def index
    @user_favorites = UserFavorite.all
  end

  # GET /user_favorites/1
  # GET /user_favorites/1.json
  def show
  end

  # GET /user_favorites/new
  def new
    @user_favorite = UserFavorite.new
  end

  # GET /user_favorites/1/edit
  def edit
  end

  # POST /user_favorites
  # POST /user_favorites.json
  def create
    @user_favorite = UserFavorite.new(user_favorite_params)

    respond_to do |format|
      if @user_favorite.save
        format.html { redirect_to @user_favorite, notice: 'User favorite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_favorite }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_favorites/1
  # PATCH/PUT /user_favorites/1.json
  def update
    respond_to do |format|
      if @user_favorite.update(user_favorite_params)
        format.html { redirect_to @user_favorite, notice: 'User favorite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_favorites/1
  # DELETE /user_favorites/1.json
  def destroy
    @user_favorite.destroy
    respond_to do |format|
      format.html { redirect_to user_favorites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_favorite
      @user_favorite = UserFavorite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_favorite_params
      params[:user_favorite]
    end
end
