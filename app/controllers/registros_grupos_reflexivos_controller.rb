class RegistrosGruposReflexivosController < ApplicationController
  # GET /registros_grupos_reflexivos
  # GET /registros_grupos_reflexivos.json
  def index
    @registros_grupos_reflexivos = RegistrosGruposReflexivo.all

    respond_to do |format|
      format.html
      format.json { render json: @registros_grupos_reflexivos, status: :ok }
    end
  end

  # GET /registros_grupos_reflexivos/1
  # GET /registros_grupos_reflexivos/1.json
  def show
    @registros_grupos_reflexivos = RegistrosGruposReflexivo.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @registros_grupos_reflexivos, status: :ok }
    end
  end

  # GET /registros_grupos_reflexivos/new
  def new
    @registros_grupos_reflexivos = RegistrosGruposReflexivo.new
  end

  # POST /registros_grupos_reflexivos
  # POST /registros_grupos_reflexivos.json
  def create
    @registros_grupos_reflexivos = RegistrosGruposReflexivo.new
    respond_to do |format|
      if @registros_grupos_reflexivos.save
        format.html { redirect_to @registros_grupos_reflexivos, notice: 'Grupo reflexivo was successfully created.' }
        format.json { render json: {message: 'Grupo reflexivo registrado com sucesso!', data:@registros_grupos_reflexivos}, status: :created }
      else
        format.html { render :new }
        format.json { render json: {message: 'Erro ao salvar ocorrência', data:@registros_grupos_reflexivos.errors}, status: :unprocessable_entity }
      end
    end
  end

end
