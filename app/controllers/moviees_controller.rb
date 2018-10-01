class MovieesController < ApplicationController
  before_action :set_moviee, only: [:show, :edit, :update, :destroy]

  # GET /moviees
  # GET /moviees.json
  def index
    @moviees = Moviee.all
  end

  # GET /moviees/1
  # GET /moviees/1.json
  def show
  end

  # GET /moviees/new
  def new
    @moviee = Moviee.new
  end

  # GET /moviees/1/edit
  def edit
  end

  # POST /moviees
  # POST /moviees.json
  def create
    @moviee = Moviee.new(moviee_params)

    respond_to do |format|
      if @moviee.save
        format.html { redirect_to @moviee, notice: 'Moviee was successfully created.' }
        format.json { render :show, status: :created, location: @moviee }
      else
        format.html { render :new }
        format.json { render json: @moviee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moviees/1
  # PATCH/PUT /moviees/1.json
  def update
    respond_to do |format|
      if @moviee.update(moviee_params)
        format.html { redirect_to @moviee, notice: 'Moviee was successfully updated.' }
        format.json { render :show, status: :ok, location: @moviee }
      else
        format.html { render :edit }
        format.json { render json: @moviee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moviees/1
  # DELETE /moviees/1.json
  def destroy
    @moviee.destroy
    respond_to do |format|
      format.html { redirect_to moviees_url, notice: 'Moviee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moviee
      @moviee = Moviee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moviee_params
      params.require(:moviee).permit(:title, :description, :movie_length, :director, :rating)
    end
end
