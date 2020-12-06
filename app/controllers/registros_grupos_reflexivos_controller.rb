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
    @registros_grupos_reflexivo = RegistrosGruposReflexivo.new(registros_grupos_reflexivo_params)
    respond_to do |format|
      if @registros_grupos_reflexivo.save
        format.html { redirect_to @registros_grupos_reflexivo, notice: 'Grupo reflexivo was successfully created.' }
        format.json { render json: {message: 'Grupo reflexivo registrado com sucesso!', data:@registros_grupos_reflexivo}, status: :created }
      else
        format.html { render :new }
        format.json { render json: {message: 'Erro ao salvar ocorrência', data:@registros_grupos_reflexivo.errors}, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def registros_grupos_reflexivo_params
    params.require(:registros_grupos_reflexivo).permit(:telefone, :logradouro, :numero, :bairro, :cidade, :uf, :nomegruporeflexivo)
  end

end
