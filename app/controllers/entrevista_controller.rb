class EntrevistaController < ApplicationController
  before_action :set_entrevistum, only: [:show, :edit, :update, :destroy]

  # GET /entrevista
  # GET /entrevista.json
  def index
    @entrevista = Entrevistum.all
  end

  # GET /entrevista/1
  # GET /entrevista/1.json
  def show
  end

  # GET /entrevista/new
  def new
    @entrevistum = Entrevistum.new
  end

  # GET /entrevista/1/edit
  def edit
  end

  # POST /entrevista
  # POST /entrevista.json
  def create
    @entrevistum = Entrevistum.new(entrevistum_params)

    respond_to do |format|
      if @entrevistum.save
        format.html { redirect_to entrevista_path, notice: 'Entrevistum was successfully created.' }
        format.json { render :index, status: :created, location: @entrevistum }
      else
        format.html { render :new }
        format.json { render json: @entrevistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entrevista/1
  # PATCH/PUT /entrevista/1.json
  def update
    respond_to do |format|
      if @entrevistum.update(entrevistum_params)
        format.html { redirect_to entrevista_path, notice: 'Entrevistum was successfully created.' }
        format.json { render :index, status: :created, location: @entrevistum }
      else
        format.html { render :edit }
        format.json { render json: @entrevistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrevista/1
  # DELETE /entrevista/1.json
  def destroy
    @entrevistum.destroy
    respond_to do |format|
      format.html { redirect_to entrevista_url, notice: 'Entrevistum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrevistum
      @entrevistum = Entrevistum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entrevistum_params
      params.require(:entrevistum).permit(:asistencia, :tipo, :horario_id, :aula_id, :motivo_id)
    end
end
