class RawRegistrosOcorrenciasSspSpGovBrsController < ApplicationController
  before_action :set_raw_registros_ocorrencias_ssp_sp_gov_br, only: [:show, :edit, :update, :destroy]

  # GET /raw_registros_ocorrencias_ssp_sp_gov_brs
  # GET /raw_registros_ocorrencias_ssp_sp_gov_brs.json
  def index
    @raw_registros_ocorrencias_ssp_sp_gov_brs = RawRegistrosOcorrenciasSspSpGovBr.all
  end

  # GET /raw_registros_ocorrencias_ssp_sp_gov_brs/1
  # GET /raw_registros_ocorrencias_ssp_sp_gov_brs/1.json
  def show
  end

  # GET /raw_registros_ocorrencias_ssp_sp_gov_brs/new
  def new
    @raw_registros_ocorrencias_ssp_sp_gov_br = RawRegistrosOcorrenciasSspSpGovBr.new
  end

  # GET /raw_registros_ocorrencias_ssp_sp_gov_brs/1/edit
  def edit
  end

  # POST /raw_registros_ocorrencias_ssp_sp_gov_brs
  # POST /raw_registros_ocorrencias_ssp_sp_gov_brs.json
  def create
    @raw_registros_ocorrencias_ssp_sp_gov_br = RawRegistrosOcorrenciasSspSpGovBr.new(raw_registros_ocorrencias_ssp_sp_gov_br_params)

    respond_to do |format|
      if @raw_registros_ocorrencias_ssp_sp_gov_br.save
        format.html { redirect_to @raw_registros_ocorrencias_ssp_sp_gov_br, notice: 'Raw registros ocorrencias ssp sp gov br was successfully created.' }
        format.json { render :show, status: :created, location: @raw_registros_ocorrencias_ssp_sp_gov_br }
      else
        format.html { render :new }
        format.json { render json: @raw_registros_ocorrencias_ssp_sp_gov_br.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_registros_ocorrencias_ssp_sp_gov_brs/1
  # PATCH/PUT /raw_registros_ocorrencias_ssp_sp_gov_brs/1.json
  def update
    respond_to do |format|
      if @raw_registros_ocorrencias_ssp_sp_gov_br.update(raw_registros_ocorrencias_ssp_sp_gov_br_params)
        format.html { redirect_to @raw_registros_ocorrencias_ssp_sp_gov_br, notice: 'Raw registros ocorrencias ssp sp gov br was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_registros_ocorrencias_ssp_sp_gov_br }
      else
        format.html { render :edit }
        format.json { render json: @raw_registros_ocorrencias_ssp_sp_gov_br.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_registros_ocorrencias_ssp_sp_gov_brs/1
  # DELETE /raw_registros_ocorrencias_ssp_sp_gov_brs/1.json
  def destroy
    @raw_registros_ocorrencias_ssp_sp_gov_br.destroy
    respond_to do |format|
      format.html { redirect_to raw_registros_ocorrencias_ssp_sp_gov_brs_url, notice: 'Raw registros ocorrencias ssp sp gov br was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_registros_ocorrencias_ssp_sp_gov_br
      @raw_registros_ocorrencias_ssp_sp_gov_br = RawRegistrosOcorrenciasSspSpGovBr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raw_registros_ocorrencias_ssp_sp_gov_br_params
      params.require(:raw_registros_ocorrencias_ssp_sp_gov_br).permit(:ano_bo, :num_bo, :numero_boletim, :bo_iniciado, :bo_emitido, :dataocorrencia, :horaocorrencia, :peridoocorrencia, :datacomunicacao, :dataelaboracao, :bo_autoria, :flagrante, :numero_boletim_principal, :logradouro, :numero, :bairro, :cidade, :uf, :latitude, :longitude, :descricaolocal, :exame, :solucao, :delegacia_nome, :delegacia_circunscricao, :especie, :rubrica, :desdobramento, :status, :nomepessoa, :tipopessoa, :vitimafatal, :rg, :rg_uf, :naturalidade, :nacionalidade, :sexo, :datanascimento, :idade, :estadocivil, :profissao, :grauinstrucao, :corcutis, :naturezavinculada, :tipovinculo, :relacionamento, :parentesco, :placa_veiculo, :uf_veiculo, :cidade_veiculo, :descr_cor_veiculo, :descr_marca_veiculo, :ano_fabricacao, :ano_modelo, :descr_tipo_veiculo, :quant_celular, :marca_celular)
    end
end
