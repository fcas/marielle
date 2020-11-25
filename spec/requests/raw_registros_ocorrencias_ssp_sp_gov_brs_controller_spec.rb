require 'rails_helper'

RSpec.describe RawRegistrosOcorrenciasSspSpGovBrsController, type: :request do

  before(:all) do
    @raw_registros_ocorrencias_ssp_sp_gov_br = RawRegistrosOcorrenciasSspSpGovBr.create numero_boletim: '1234', dataocorrencia: '20/04/2020', horaocorrencia: '15:30', logradouro: 'Rua Antônio Guerra', numero: 166, bairro: 'Jardim Tucunduva', cidade: 'Carapicuiba', uf: 'SP', nomepessoa: 'Fedentina de Jesus', rg: '34.382.584-3', nacionalidade: 'Brasileira', sexo: 'Feminino', datanascimento: '20/04/1970', estadocivil: 'Casado', profissao: 'Atendente de loja'
  end

  describe "GET /" do
    it 'should get index' do
        get raw_registros_ocorrencias_ssp_sp_gov_brs_url
        expect(response).to render_template('index')
    end

    it 'given JSON request, should get list of registers' do
        get raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { format: :json }
        assert_response :success
        data = JSON.parse(@response.body)
        assert data.size > 0
    end

    describe "visit index" do

      raw_registros_ocorrencias_ssp_sp_gov_br_alt = RawRegistrosOcorrenciasSspSpGovBr.create numero_boletim: '4321', dataocorrencia: '19/04/2020', horaocorrencia: '15:30', logradouro: 'Rua Antônio Guerra', numero: 166, bairro: 'Jacarei', cidade: 'Poa', uf: 'RJ', nomepessoa: 'Fedentina de Jesus', rg: '13.036.974-3', nacionalidade: 'Brasileira', sexo: 'Feminino', datanascimento: '20/04/1970', estadocivil: 'Casado', profissao: 'Atendente de loja'
      [
        'numero_boletim', 'dataocorrencia', 'bairro', 'cidade', 'uf', 'rg'
      ].each do |missing_field| 
    
        it "should get index filtered by #{missing_field}" do
          visit "/raw_registros_ocorrencias_ssp_sp_gov_brs?#{missing_field}=#{@raw_registros_ocorrencias_ssp_sp_gov_br[missing_field]}"
          expect(page).to have_content(@raw_registros_ocorrencias_ssp_sp_gov_br[missing_field]) 
          expect(page).to have_no_content(raw_registros_ocorrencias_ssp_sp_gov_br_alt[missing_field]) 
        end
      end
    end
  end

  describe "GET /show" do
    it 'should show raw_registros_ocorrencias_ssp_sp_gov_br' do
        get raw_registros_ocorrencias_ssp_sp_gov_br_url(@raw_registros_ocorrencias_ssp_sp_gov_br)
        expect(response).to render_template('show')
    end

    it 'given JSON request, should get raw_registros_ocorrencias_ssp_sp_gov_br' do
        get raw_registros_ocorrencias_ssp_sp_gov_br_url(@raw_registros_ocorrencias_ssp_sp_gov_br), params: { format: :json }
        assert_response :success

        data = JSON.parse(@response.body)
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, data['dataocorrencia']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, data['horaocorrencia']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, data['logradouro']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.numero, data['numero']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, data['bairro']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, data['cidade']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.uf, data['uf']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, data['descricaolocal']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, data['nomepessoa']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.rg, data['rg']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, data['nacionalidade']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, data['sexo']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, data['datanascimento']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, data['estadocivil']
        assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, data['profissao']
    end
  end

  describe "GET /new" do
    it 'should get new' do
        get new_raw_registros_ocorrencias_ssp_sp_gov_br_url
        expect(response).to render_template('new')
    end
  end

  describe "POST /create" do
    it 'should create raw_registros_ocorrencias_ssp_sp_gov_br' do
      expect {
        post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { raw_registros_ocorrencias_ssp_sp_gov_br: { ano_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_bo, ano_fabricacao: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_fabricacao, ano_modelo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_modelo, bairro: @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, bo_autoria: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_autoria, bo_emitido: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_emitido, bo_iniciado: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_iniciado, cidade: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, cidade_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade_veiculo, corcutis: @raw_registros_ocorrencias_ssp_sp_gov_br.corcutis, datacomunicacao: @raw_registros_ocorrencias_ssp_sp_gov_br.datacomunicacao, dataelaboracao: @raw_registros_ocorrencias_ssp_sp_gov_br.dataelaboracao, datanascimento: @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, dataocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, delegacia_circunscricao: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_circunscricao, delegacia_nome: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_nome, descr_cor_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_cor_veiculo, descr_marca_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_marca_veiculo, descr_tipo_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_tipo_veiculo, descricaolocal: @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, desdobramento: @raw_registros_ocorrencias_ssp_sp_gov_br.desdobramento, especie: @raw_registros_ocorrencias_ssp_sp_gov_br.especie, estadocivil: @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, exame: @raw_registros_ocorrencias_ssp_sp_gov_br.exame, flagrante: @raw_registros_ocorrencias_ssp_sp_gov_br.flagrante, grauinstrucao: @raw_registros_ocorrencias_ssp_sp_gov_br.grauinstrucao, horaocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, idade: @raw_registros_ocorrencias_ssp_sp_gov_br.idade, latitude: @raw_registros_ocorrencias_ssp_sp_gov_br.latitude, logradouro: @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, longitude: @raw_registros_ocorrencias_ssp_sp_gov_br.longitude, marca_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.marca_celular, nacionalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, naturalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.naturalidade, naturezavinculada: @raw_registros_ocorrencias_ssp_sp_gov_br.naturezavinculada, nomepessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, num_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.num_bo, numero: @raw_registros_ocorrencias_ssp_sp_gov_br.numero, numero_boletim: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim, numero_boletim_principal: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim_principal, parentesco: @raw_registros_ocorrencias_ssp_sp_gov_br.parentesco, peridoocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.peridoocorrencia, placa_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.placa_veiculo, profissao: @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, quant_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.quant_celular, relacionamento: @raw_registros_ocorrencias_ssp_sp_gov_br.relacionamento, rg: @raw_registros_ocorrencias_ssp_sp_gov_br.rg, rg_uf: @raw_registros_ocorrencias_ssp_sp_gov_br.rg_uf, rubrica: @raw_registros_ocorrencias_ssp_sp_gov_br.rubrica, sexo: @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, solucao: @raw_registros_ocorrencias_ssp_sp_gov_br.solucao, status: @raw_registros_ocorrencias_ssp_sp_gov_br.status, tipopessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.tipopessoa, tipovinculo: @raw_registros_ocorrencias_ssp_sp_gov_br.tipovinculo, uf: @raw_registros_ocorrencias_ssp_sp_gov_br.uf, uf_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.uf_veiculo, vitimafatal: @raw_registros_ocorrencias_ssp_sp_gov_br.vitimafatal } }
      }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(1)
  
      assert_redirected_to raw_registros_ocorrencias_ssp_sp_gov_br_url(RawRegistrosOcorrenciasSspSpGovBr.last)
    end

    it 'given JSON request, should create raw_registros_ocorrencias_ssp_sp_gov_br' do
      raw_registros_ocorrencias_ssp_sp_gov_br = { ano_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_bo, ano_fabricacao: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_fabricacao, ano_modelo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_modelo, bairro: @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, bo_autoria: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_autoria, bo_emitido: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_emitido, bo_iniciado: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_iniciado, cidade: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, cidade_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade_veiculo, corcutis: @raw_registros_ocorrencias_ssp_sp_gov_br.corcutis, datacomunicacao: @raw_registros_ocorrencias_ssp_sp_gov_br.datacomunicacao, dataelaboracao: @raw_registros_ocorrencias_ssp_sp_gov_br.dataelaboracao, datanascimento: @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, dataocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, delegacia_circunscricao: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_circunscricao, delegacia_nome: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_nome, descr_cor_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_cor_veiculo, descr_marca_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_marca_veiculo, descr_tipo_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_tipo_veiculo, descricaolocal: @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, desdobramento: @raw_registros_ocorrencias_ssp_sp_gov_br.desdobramento, especie: @raw_registros_ocorrencias_ssp_sp_gov_br.especie, estadocivil: @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, exame: @raw_registros_ocorrencias_ssp_sp_gov_br.exame, flagrante: @raw_registros_ocorrencias_ssp_sp_gov_br.flagrante, grauinstrucao: @raw_registros_ocorrencias_ssp_sp_gov_br.grauinstrucao, horaocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, idade: @raw_registros_ocorrencias_ssp_sp_gov_br.idade, latitude: @raw_registros_ocorrencias_ssp_sp_gov_br.latitude, logradouro: @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, longitude: @raw_registros_ocorrencias_ssp_sp_gov_br.longitude, marca_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.marca_celular, nacionalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, naturalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.naturalidade, naturezavinculada: @raw_registros_ocorrencias_ssp_sp_gov_br.naturezavinculada, nomepessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, num_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.num_bo, numero: @raw_registros_ocorrencias_ssp_sp_gov_br.numero, numero_boletim: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim, numero_boletim_principal: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim_principal, parentesco: @raw_registros_ocorrencias_ssp_sp_gov_br.parentesco, peridoocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.peridoocorrencia, placa_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.placa_veiculo, profissao: @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, quant_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.quant_celular, relacionamento: @raw_registros_ocorrencias_ssp_sp_gov_br.relacionamento, rg: @raw_registros_ocorrencias_ssp_sp_gov_br.rg, rg_uf: @raw_registros_ocorrencias_ssp_sp_gov_br.rg_uf, rubrica: @raw_registros_ocorrencias_ssp_sp_gov_br.rubrica, sexo: @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, solucao: @raw_registros_ocorrencias_ssp_sp_gov_br.solucao, status: @raw_registros_ocorrencias_ssp_sp_gov_br.status, tipopessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.tipopessoa, tipovinculo: @raw_registros_ocorrencias_ssp_sp_gov_br.tipovinculo, uf: @raw_registros_ocorrencias_ssp_sp_gov_br.uf, uf_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.uf_veiculo, vitimafatal: @raw_registros_ocorrencias_ssp_sp_gov_br.vitimafatal }
      expect {
        post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { format: :json, raw_registros_ocorrencias_ssp_sp_gov_br: raw_registros_ocorrencias_ssp_sp_gov_br }
      }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(1)

      assert_equal 201, @response.status

      body = JSON.parse(@response.body)
      assert body['message'].include?('sucesso')

      data = body['data']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, data['dataocorrencia']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, data['horaocorrencia']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, data['logradouro']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.numero, data['numero']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, data['bairro']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, data['cidade']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.uf, data['uf']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, data['descricaolocal']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, data['nomepessoa']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.rg, data['rg']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, data['nacionalidade']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, data['sexo']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, data['datanascimento']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, data['estadocivil']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, data['profissao']
    end

    it 'given minimal raw_registros_ocorrencias_ssp_sp_gov_br, should create' do
      expect {
        post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { raw_registros_ocorrencias_ssp_sp_gov_br: { ano_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_bo, ano_fabricacao: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_fabricacao, ano_modelo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_modelo, bairro: @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, bo_autoria: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_autoria, bo_emitido: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_emitido, bo_iniciado: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_iniciado, cidade: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, cidade_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade_veiculo, corcutis: @raw_registros_ocorrencias_ssp_sp_gov_br.corcutis, datacomunicacao: @raw_registros_ocorrencias_ssp_sp_gov_br.datacomunicacao, dataelaboracao: @raw_registros_ocorrencias_ssp_sp_gov_br.dataelaboracao, datanascimento: @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, dataocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, delegacia_circunscricao: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_circunscricao, delegacia_nome: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_nome, descr_cor_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_cor_veiculo, descr_marca_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_marca_veiculo, descr_tipo_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_tipo_veiculo, descricaolocal: @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, desdobramento: @raw_registros_ocorrencias_ssp_sp_gov_br.desdobramento, especie: @raw_registros_ocorrencias_ssp_sp_gov_br.especie, estadocivil: @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, exame: @raw_registros_ocorrencias_ssp_sp_gov_br.exame, flagrante: @raw_registros_ocorrencias_ssp_sp_gov_br.flagrante, grauinstrucao: @raw_registros_ocorrencias_ssp_sp_gov_br.grauinstrucao, horaocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, idade: @raw_registros_ocorrencias_ssp_sp_gov_br.idade, latitude: @raw_registros_ocorrencias_ssp_sp_gov_br.latitude, logradouro: @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, longitude: @raw_registros_ocorrencias_ssp_sp_gov_br.longitude, marca_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.marca_celular, nacionalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, naturalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.naturalidade, naturezavinculada: @raw_registros_ocorrencias_ssp_sp_gov_br.naturezavinculada, nomepessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, num_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.num_bo, numero: @raw_registros_ocorrencias_ssp_sp_gov_br.numero, numero_boletim: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim, numero_boletim_principal: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim_principal, parentesco: @raw_registros_ocorrencias_ssp_sp_gov_br.parentesco, peridoocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.peridoocorrencia, placa_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.placa_veiculo, profissao: @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, quant_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.quant_celular, relacionamento: @raw_registros_ocorrencias_ssp_sp_gov_br.relacionamento, rg: @raw_registros_ocorrencias_ssp_sp_gov_br.rg, rg_uf: @raw_registros_ocorrencias_ssp_sp_gov_br.rg_uf, rubrica: @raw_registros_ocorrencias_ssp_sp_gov_br.rubrica, sexo: @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, solucao: @raw_registros_ocorrencias_ssp_sp_gov_br.solucao, status: @raw_registros_ocorrencias_ssp_sp_gov_br.status, tipopessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.tipopessoa, tipovinculo: @raw_registros_ocorrencias_ssp_sp_gov_br.tipovinculo, uf: @raw_registros_ocorrencias_ssp_sp_gov_br.uf, uf_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.uf_veiculo, vitimafatal: @raw_registros_ocorrencias_ssp_sp_gov_br.vitimafatal } }
      }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(1)
  
      assert_redirected_to raw_registros_ocorrencias_ssp_sp_gov_br_url(RawRegistrosOcorrenciasSspSpGovBr.last)
    end

    it 'given minimal JSON request, should create raw_registros_ocorrencias_ssp_sp_gov_br' do
      raw_registros_ocorrencias_ssp_sp_gov_br = { dataocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, cidade: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, uf: @raw_registros_ocorrencias_ssp_sp_gov_br.uf, rg: @raw_registros_ocorrencias_ssp_sp_gov_br.rg }
      expect {
        post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { format: :json, raw_registros_ocorrencias_ssp_sp_gov_br: raw_registros_ocorrencias_ssp_sp_gov_br }
      }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(1)

      assert_equal 201, @response.status

      body = JSON.parse(@response.body)
      assert body['message'].include?('sucesso')

      data = body['data']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, data['dataocorrencia']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, data['cidade']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.uf, data['uf']
      assert_equal @raw_registros_ocorrencias_ssp_sp_gov_br.rg, data['rg']
    end

    [
      'dataocorrencia', 'cidade', 'uf', 'rg'
    ].each do |missing_field| 

      raw_registros_ocorrencias_ssp_sp_gov_br = { dataocorrencia: '20/04/2020', cidade: 'Carapicuiba', uf: 'SP', rg: '34.382.584-3' }
      raw_registros_ocorrencias_ssp_sp_gov_br[missing_field] = nil

      it "given raw_registros_ocorrencias_ssp_sp_gov_br without #{missing_field}, should not create" do
        expect {
          post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { raw_registros_ocorrencias_ssp_sp_gov_br: raw_registros_ocorrencias_ssp_sp_gov_br }
        }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(0)

        assert_template :new
      end

      it "given JSON request without #{missing_field}, should not create" do
        expect {
          post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { format: :json, raw_registros_ocorrencias_ssp_sp_gov_br: raw_registros_ocorrencias_ssp_sp_gov_br }
        }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(0)

        assert_equal 422, @response.status

        body = JSON.parse(@response.body)
        assert body['message'].include?('Erro')

        data = body['data']
        assert data[missing_field][0].include?('É necessário informar')
      end
    end

    [
      'dataocorrencia', 'uf', 'rg'
    ].each do |validated_field| 

      raw_registros_ocorrencias_ssp_sp_gov_br = { }
      raw_registros_ocorrencias_ssp_sp_gov_br['dataocorrencia'] = '20/04/2020'
      raw_registros_ocorrencias_ssp_sp_gov_br['cidade'] = 'Carapicuiba'
      raw_registros_ocorrencias_ssp_sp_gov_br['uf'] = 'SP'
      raw_registros_ocorrencias_ssp_sp_gov_br['rg'] = '34.382.584-3'

      raw_registros_ocorrencias_ssp_sp_gov_br[validated_field] = (raw_registros_ocorrencias_ssp_sp_gov_br[validated_field])[0..-2]

      it "given raw_registros_ocorrencias_ssp_sp_gov_br with #{validated_field} lower length, should not create" do
        expect {
          post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { raw_registros_ocorrencias_ssp_sp_gov_br: raw_registros_ocorrencias_ssp_sp_gov_br }
        }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(0)

        assert_template :new
      end

      it "given JSON request with #{validated_field} lower length, should not create" do
        expect {
          post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { format: :json, raw_registros_ocorrencias_ssp_sp_gov_br: raw_registros_ocorrencias_ssp_sp_gov_br }
        }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(0)
        
        assert_equal 422, @response.status

        body = JSON.parse(@response.body)
        assert body['message'].include?('Erro')

        data = body['data']
        assert data[validated_field][0].include?('is too short')
        
      end
    end

    [
      'dataocorrencia', 'uf', 'rg', 'horaocorrencia', 'datanascimento'
    ].each do |validated_field| 

      raw_registros_ocorrencias_ssp_sp_gov_br = { }
      raw_registros_ocorrencias_ssp_sp_gov_br['dataocorrencia'] = '20/04/2020'
      raw_registros_ocorrencias_ssp_sp_gov_br['cidade'] = 'Carapicuiba'
      raw_registros_ocorrencias_ssp_sp_gov_br['uf'] = 'SP'
      raw_registros_ocorrencias_ssp_sp_gov_br['rg'] = '34.382.584-3'
      raw_registros_ocorrencias_ssp_sp_gov_br['horaocorrencia'] = '15:30'
      raw_registros_ocorrencias_ssp_sp_gov_br['datanascimento'] = '20/04/1970'

      raw_registros_ocorrencias_ssp_sp_gov_br[validated_field] = (raw_registros_ocorrencias_ssp_sp_gov_br[validated_field]) + 'A'

      it "given raw_registros_ocorrencias_ssp_sp_gov_br with #{validated_field} higher length, should not create" do
        expect {
          post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { raw_registros_ocorrencias_ssp_sp_gov_br: raw_registros_ocorrencias_ssp_sp_gov_br }
        }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(0)

        assert_template :new
      end

      it "given JSON request with #{validated_field} higher length, should not create" do
        expect {
          post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { format: :json, raw_registros_ocorrencias_ssp_sp_gov_br: raw_registros_ocorrencias_ssp_sp_gov_br }
        }. to change {RawRegistrosOcorrenciasSspSpGovBr.count}.by(0)
        
        assert_equal 422, @response.status

        body = JSON.parse(@response.body)
        assert body['message'].include?('Erro')

        data = body['data']
        assert data[validated_field][0].include?('is too long')
      end
    end

  end
end