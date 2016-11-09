class BunniesController < ApplicationController
  before_action :set_bunny, only: [:show, :edit, :update, :destroy]

  # GET /bunnies
  # GET /bunnies.json
  def index
    @bunnies = Bunny.all
  end

  # GET /bunnies/1
  # GET /bunnies/1.json
  def show
    @bunny = Bunny.find(params[:id])
  end

  # GET /bunnies/new
  def new
    @bunny = Bunny.new
  end

  # GET /bunnies/1/edit
  def edit
  end

  # POST /bunnies
  # POST /bunnies.json
  def create
    @bunny = Bunny.new(bunny_params)

    respond_to do |format|
      if @bunny.save
        format.html { redirect_to @bunny, notice: 'Bunny was successfully created.' }
        format.json { render :show, status: :created, location: @bunny }
      else
        format.html { render :new }
        format.json { render json: @bunny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bunnies/1
  # PATCH/PUT /bunnies/1.json
  def update
    respond_to do |format|
      if @bunny.update(bunny_params)
        format.html { redirect_to @bunny, notice: 'Bunny was successfully updated.' }
        format.json { render :show, status: :ok, location: @bunny }
      else
        format.html { render :edit }
        format.json { render json: @bunny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bunnies/1
  # DELETE /bunnies/1.json
  def destroy
    @bunny.destroy
    respond_to do |format|
      format.html { redirect_to bunnies_url, notice: 'Bunny was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bunny
      @bunny = Bunny.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bunny_params
      params.require(:bunny).permit(:name, :color, :dob, :mother_id, :father_id)
    end
end
