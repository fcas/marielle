require 'test_helper'

class RawRegistrosOcorrenciasSspSpGovBrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raw_registros_ocorrencias_ssp_sp_gov_br = raw_registros_ocorrencias_ssp_sp_gov_brs(:one)
  end

  test "should get index" do
    get raw_registros_ocorrencias_ssp_sp_gov_brs_url
    assert_response :success
  end

  test "should get new" do
    get new_raw_registros_ocorrencias_ssp_sp_gov_br_url
    assert_response :success
  end

  test "should create raw_registros_ocorrencias_ssp_sp_gov_br" do
    assert_difference('RawRegistrosOcorrenciasSspSpGovBr.count') do
      post raw_registros_ocorrencias_ssp_sp_gov_brs_url, params: { raw_registros_ocorrencias_ssp_sp_gov_br: { ano_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_bo, ano_fabricacao: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_fabricacao, ano_modelo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_modelo, bairro: @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, bo_autoria: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_autoria, bo_emitido: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_emitido, bo_iniciado: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_iniciado, cidade: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, cidade_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade_veiculo, corcutis: @raw_registros_ocorrencias_ssp_sp_gov_br.corcutis, datacomunicacao: @raw_registros_ocorrencias_ssp_sp_gov_br.datacomunicacao, dataelaboracao: @raw_registros_ocorrencias_ssp_sp_gov_br.dataelaboracao, datanascimento: @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, dataocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, delegacia_circunscricao: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_circunscricao, delegacia_nome: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_nome, descr_cor_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_cor_veiculo, descr_marca_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_marca_veiculo, descr_tipo_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_tipo_veiculo, descricaolocal: @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, desdobramento: @raw_registros_ocorrencias_ssp_sp_gov_br.desdobramento, especie: @raw_registros_ocorrencias_ssp_sp_gov_br.especie, estadocivil: @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, exame: @raw_registros_ocorrencias_ssp_sp_gov_br.exame, flagrante: @raw_registros_ocorrencias_ssp_sp_gov_br.flagrante, grauinstrucao: @raw_registros_ocorrencias_ssp_sp_gov_br.grauinstrucao, horaocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, idade: @raw_registros_ocorrencias_ssp_sp_gov_br.idade, latitude: @raw_registros_ocorrencias_ssp_sp_gov_br.latitude, logradouro: @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, longitude: @raw_registros_ocorrencias_ssp_sp_gov_br.longitude, marca_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.marca_celular, nacionalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, naturalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.naturalidade, naturezavinculada: @raw_registros_ocorrencias_ssp_sp_gov_br.naturezavinculada, nomepessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, num_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.num_bo, numero: @raw_registros_ocorrencias_ssp_sp_gov_br.numero, numero_boletim: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim, numero_boletim_principal: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim_principal, parentesco: @raw_registros_ocorrencias_ssp_sp_gov_br.parentesco, peridoocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.peridoocorrencia, placa_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.placa_veiculo, profissao: @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, quant_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.quant_celular, relacionamento: @raw_registros_ocorrencias_ssp_sp_gov_br.relacionamento, rg: @raw_registros_ocorrencias_ssp_sp_gov_br.rg, rg_uf: @raw_registros_ocorrencias_ssp_sp_gov_br.rg_uf, rubrica: @raw_registros_ocorrencias_ssp_sp_gov_br.rubrica, sexo: @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, solucao: @raw_registros_ocorrencias_ssp_sp_gov_br.solucao, status: @raw_registros_ocorrencias_ssp_sp_gov_br.status, tipopessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.tipopessoa, tipovinculo: @raw_registros_ocorrencias_ssp_sp_gov_br.tipovinculo, uf: @raw_registros_ocorrencias_ssp_sp_gov_br.uf, uf_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.uf_veiculo, vitimafatal: @raw_registros_ocorrencias_ssp_sp_gov_br.vitimafatal } }
    end

    assert_redirected_to raw_registros_ocorrencias_ssp_sp_gov_br_url(RawRegistrosOcorrenciasSspSpGovBr.last)
  end

  test "should show raw_registros_ocorrencias_ssp_sp_gov_br" do
    get raw_registros_ocorrencias_ssp_sp_gov_br_url(@raw_registros_ocorrencias_ssp_sp_gov_br)
    assert_response :success
  end

  test "should get edit" do
    get edit_raw_registros_ocorrencias_ssp_sp_gov_br_url(@raw_registros_ocorrencias_ssp_sp_gov_br)
    assert_response :success
  end

  test "should update raw_registros_ocorrencias_ssp_sp_gov_br" do
    patch raw_registros_ocorrencias_ssp_sp_gov_br_url(@raw_registros_ocorrencias_ssp_sp_gov_br), params: { raw_registros_ocorrencias_ssp_sp_gov_br: { ano_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_bo, ano_fabricacao: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_fabricacao, ano_modelo: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_modelo, bairro: @raw_registros_ocorrencias_ssp_sp_gov_br.bairro, bo_autoria: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_autoria, bo_emitido: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_emitido, bo_iniciado: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_iniciado, cidade: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade, cidade_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade_veiculo, corcutis: @raw_registros_ocorrencias_ssp_sp_gov_br.corcutis, datacomunicacao: @raw_registros_ocorrencias_ssp_sp_gov_br.datacomunicacao, dataelaboracao: @raw_registros_ocorrencias_ssp_sp_gov_br.dataelaboracao, datanascimento: @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento, dataocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia, delegacia_circunscricao: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_circunscricao, delegacia_nome: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_nome, descr_cor_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_cor_veiculo, descr_marca_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_marca_veiculo, descr_tipo_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_tipo_veiculo, descricaolocal: @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal, desdobramento: @raw_registros_ocorrencias_ssp_sp_gov_br.desdobramento, especie: @raw_registros_ocorrencias_ssp_sp_gov_br.especie, estadocivil: @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil, exame: @raw_registros_ocorrencias_ssp_sp_gov_br.exame, flagrante: @raw_registros_ocorrencias_ssp_sp_gov_br.flagrante, grauinstrucao: @raw_registros_ocorrencias_ssp_sp_gov_br.grauinstrucao, horaocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia, idade: @raw_registros_ocorrencias_ssp_sp_gov_br.idade, latitude: @raw_registros_ocorrencias_ssp_sp_gov_br.latitude, logradouro: @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro, longitude: @raw_registros_ocorrencias_ssp_sp_gov_br.longitude, marca_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.marca_celular, nacionalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade, naturalidade: @raw_registros_ocorrencias_ssp_sp_gov_br.naturalidade, naturezavinculada: @raw_registros_ocorrencias_ssp_sp_gov_br.naturezavinculada, nomepessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa, num_bo: @raw_registros_ocorrencias_ssp_sp_gov_br.num_bo, numero: @raw_registros_ocorrencias_ssp_sp_gov_br.numero, numero_boletim: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim, numero_boletim_principal: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim_principal, parentesco: @raw_registros_ocorrencias_ssp_sp_gov_br.parentesco, peridoocorrencia: @raw_registros_ocorrencias_ssp_sp_gov_br.peridoocorrencia, placa_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.placa_veiculo, profissao: @raw_registros_ocorrencias_ssp_sp_gov_br.profissao, quant_celular: @raw_registros_ocorrencias_ssp_sp_gov_br.quant_celular, relacionamento: @raw_registros_ocorrencias_ssp_sp_gov_br.relacionamento, rg: @raw_registros_ocorrencias_ssp_sp_gov_br.rg, rg_uf: @raw_registros_ocorrencias_ssp_sp_gov_br.rg_uf, rubrica: @raw_registros_ocorrencias_ssp_sp_gov_br.rubrica, sexo: @raw_registros_ocorrencias_ssp_sp_gov_br.sexo, solucao: @raw_registros_ocorrencias_ssp_sp_gov_br.solucao, status: @raw_registros_ocorrencias_ssp_sp_gov_br.status, tipopessoa: @raw_registros_ocorrencias_ssp_sp_gov_br.tipopessoa, tipovinculo: @raw_registros_ocorrencias_ssp_sp_gov_br.tipovinculo, uf: @raw_registros_ocorrencias_ssp_sp_gov_br.uf, uf_veiculo: @raw_registros_ocorrencias_ssp_sp_gov_br.uf_veiculo, vitimafatal: @raw_registros_ocorrencias_ssp_sp_gov_br.vitimafatal } }
    assert_redirected_to raw_registros_ocorrencias_ssp_sp_gov_br_url(@raw_registros_ocorrencias_ssp_sp_gov_br)
  end

  test "should destroy raw_registros_ocorrencias_ssp_sp_gov_br" do
    assert_difference('RawRegistrosOcorrenciasSspSpGovBr.count', -1) do
      delete raw_registros_ocorrencias_ssp_sp_gov_br_url(@raw_registros_ocorrencias_ssp_sp_gov_br)
    end

    assert_redirected_to raw_registros_ocorrencias_ssp_sp_gov_brs_url
  end
end
