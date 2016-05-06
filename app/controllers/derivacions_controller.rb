class DerivacionsController < ApplicationController
  before_action :set_derivacion, only: [:show, :edit, :update, :destroy]

  # GET /derivacions
  # GET /derivacions.json
  def index
    @derivacions = Derivacion.all
  end

  # GET /derivacions/1
  # GET /derivacions/1.json
  def show
  end

  # GET /derivacions/new
  def new
    @derivacion = Derivacion.new
  end

  # GET /derivacions/1/edit
  def edit
  end

  # POST /derivacions
  # POST /derivacions.json
  def create
    @derivacion = Derivacion.new(derivacion_params)

    respond_to do |format|
      if @derivacion.save
        format.html { redirect_to derivacions_path, notice: 'Derivacion was successfully created.' }
        format.json { render :index, status: :created, location: @derivacion }
      else
        format.html { render :new }
        format.json { render json: @derivacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /derivacions/1
  # PATCH/PUT /derivacions/1.json
  def update
    respond_to do |format|
      if @derivacion.update(derivacion_params)
        format.html { redirect_to derivacions_path, notice: 'Derivacion was successfully created.' }
        format.json { render :index, status: :created, location: @derivacion }
      else
        format.html { render :edit }
        format.json { render json: @derivacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /derivacions/1
  # DELETE /derivacions/1.json
  def destroy
    @derivacion.destroy
    respond_to do |format|
      format.html { redirect_to derivacions_url, notice: 'Derivacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_derivacion
      @derivacion = Derivacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def derivacion_params
      params.require(:derivacion).permit(:observaciones, :entrevista_id, :deparmanto_id)
    end
end
