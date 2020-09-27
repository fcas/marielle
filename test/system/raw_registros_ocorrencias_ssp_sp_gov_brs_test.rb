require "application_system_test_case"

class RawRegistrosOcorrenciasSspSpGovBrsTest < ApplicationSystemTestCase
  setup do
    @raw_registros_ocorrencias_ssp_sp_gov_br = raw_registros_ocorrencias_ssp_sp_gov_brs(:one)
  end

  test "visiting the index" do
    visit raw_registros_ocorrencias_ssp_sp_gov_brs_url
    assert_selector "h1", text: "Raw Registros Ocorrencias Ssp Sp Gov Brs"
  end

  test "creating a Raw registros ocorrencias ssp sp gov br" do
    visit raw_registros_ocorrencias_ssp_sp_gov_brs_url
    click_on "New Raw Registros Ocorrencias Ssp Sp Gov Br"

    fill_in "Ano bo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_bo
    fill_in "Ano fabricacao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_fabricacao
    fill_in "Ano modelo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_modelo
    fill_in "Bairro", with: @raw_registros_ocorrencias_ssp_sp_gov_br.bairro
    fill_in "Bo autoria", with: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_autoria
    fill_in "Bo emitido", with: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_emitido
    fill_in "Bo iniciado", with: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_iniciado
    fill_in "Cidade", with: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade
    fill_in "Cidade veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade_veiculo
    fill_in "Corcutis", with: @raw_registros_ocorrencias_ssp_sp_gov_br.corcutis
    fill_in "Datacomunicacao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.datacomunicacao
    fill_in "Dataelaboracao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.dataelaboracao
    fill_in "Datanascimento", with: @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento
    fill_in "Dataocorrencia", with: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia
    fill_in "Delegacia circunscricao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_circunscricao
    fill_in "Delegacia nome", with: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_nome
    fill_in "Descr cor veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_cor_veiculo
    fill_in "Descr marca veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_marca_veiculo
    fill_in "Descr tipo veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_tipo_veiculo
    fill_in "Descricaolocal", with: @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal
    fill_in "Desdobramento", with: @raw_registros_ocorrencias_ssp_sp_gov_br.desdobramento
    fill_in "Especie", with: @raw_registros_ocorrencias_ssp_sp_gov_br.especie
    fill_in "Estadocivil", with: @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil
    fill_in "Exame", with: @raw_registros_ocorrencias_ssp_sp_gov_br.exame
    fill_in "Flagrante", with: @raw_registros_ocorrencias_ssp_sp_gov_br.flagrante
    fill_in "Grauinstrucao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.grauinstrucao
    fill_in "Horaocorrencia", with: @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia
    fill_in "Idade", with: @raw_registros_ocorrencias_ssp_sp_gov_br.idade
    fill_in "Latitude", with: @raw_registros_ocorrencias_ssp_sp_gov_br.latitude
    fill_in "Logradouro", with: @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro
    fill_in "Longitude", with: @raw_registros_ocorrencias_ssp_sp_gov_br.longitude
    fill_in "Marca celular", with: @raw_registros_ocorrencias_ssp_sp_gov_br.marca_celular
    fill_in "Nacionalidade", with: @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade
    fill_in "Naturalidade", with: @raw_registros_ocorrencias_ssp_sp_gov_br.naturalidade
    fill_in "Naturezavinculada", with: @raw_registros_ocorrencias_ssp_sp_gov_br.naturezavinculada
    fill_in "Nomepessoa", with: @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa
    fill_in "Num bo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.num_bo
    fill_in "Numero", with: @raw_registros_ocorrencias_ssp_sp_gov_br.numero
    fill_in "Numero boletim", with: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim
    fill_in "Numero boletim principal", with: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim_principal
    fill_in "Parentesco", with: @raw_registros_ocorrencias_ssp_sp_gov_br.parentesco
    fill_in "Peridoocorrencia", with: @raw_registros_ocorrencias_ssp_sp_gov_br.peridoocorrencia
    fill_in "Placa veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.placa_veiculo
    fill_in "Profissao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.profissao
    fill_in "Quant celular", with: @raw_registros_ocorrencias_ssp_sp_gov_br.quant_celular
    fill_in "Relacionamento", with: @raw_registros_ocorrencias_ssp_sp_gov_br.relacionamento
    fill_in "Rg", with: @raw_registros_ocorrencias_ssp_sp_gov_br.rg
    fill_in "Rg uf", with: @raw_registros_ocorrencias_ssp_sp_gov_br.rg_uf
    fill_in "Rubrica", with: @raw_registros_ocorrencias_ssp_sp_gov_br.rubrica
    fill_in "Sexo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.sexo
    fill_in "Solucao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.solucao
    fill_in "Status", with: @raw_registros_ocorrencias_ssp_sp_gov_br.status
    fill_in "Tipopessoa", with: @raw_registros_ocorrencias_ssp_sp_gov_br.tipopessoa
    fill_in "Tipovinculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.tipovinculo
    fill_in "Uf", with: @raw_registros_ocorrencias_ssp_sp_gov_br.uf
    fill_in "Uf veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.uf_veiculo
    fill_in "Vitimafatal", with: @raw_registros_ocorrencias_ssp_sp_gov_br.vitimafatal
    click_on "Create Raw registros ocorrencias ssp sp gov br"

    assert_text "Raw registros ocorrencias ssp sp gov br was successfully created"
    click_on "Back"
  end

  test "updating a Raw registros ocorrencias ssp sp gov br" do
    visit raw_registros_ocorrencias_ssp_sp_gov_brs_url
    click_on "Edit", match: :first

    fill_in "Ano bo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_bo
    fill_in "Ano fabricacao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_fabricacao
    fill_in "Ano modelo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.ano_modelo
    fill_in "Bairro", with: @raw_registros_ocorrencias_ssp_sp_gov_br.bairro
    fill_in "Bo autoria", with: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_autoria
    fill_in "Bo emitido", with: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_emitido
    fill_in "Bo iniciado", with: @raw_registros_ocorrencias_ssp_sp_gov_br.bo_iniciado
    fill_in "Cidade", with: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade
    fill_in "Cidade veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.cidade_veiculo
    fill_in "Corcutis", with: @raw_registros_ocorrencias_ssp_sp_gov_br.corcutis
    fill_in "Datacomunicacao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.datacomunicacao
    fill_in "Dataelaboracao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.dataelaboracao
    fill_in "Datanascimento", with: @raw_registros_ocorrencias_ssp_sp_gov_br.datanascimento
    fill_in "Dataocorrencia", with: @raw_registros_ocorrencias_ssp_sp_gov_br.dataocorrencia
    fill_in "Delegacia circunscricao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_circunscricao
    fill_in "Delegacia nome", with: @raw_registros_ocorrencias_ssp_sp_gov_br.delegacia_nome
    fill_in "Descr cor veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_cor_veiculo
    fill_in "Descr marca veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_marca_veiculo
    fill_in "Descr tipo veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.descr_tipo_veiculo
    fill_in "Descricaolocal", with: @raw_registros_ocorrencias_ssp_sp_gov_br.descricaolocal
    fill_in "Desdobramento", with: @raw_registros_ocorrencias_ssp_sp_gov_br.desdobramento
    fill_in "Especie", with: @raw_registros_ocorrencias_ssp_sp_gov_br.especie
    fill_in "Estadocivil", with: @raw_registros_ocorrencias_ssp_sp_gov_br.estadocivil
    fill_in "Exame", with: @raw_registros_ocorrencias_ssp_sp_gov_br.exame
    fill_in "Flagrante", with: @raw_registros_ocorrencias_ssp_sp_gov_br.flagrante
    fill_in "Grauinstrucao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.grauinstrucao
    fill_in "Horaocorrencia", with: @raw_registros_ocorrencias_ssp_sp_gov_br.horaocorrencia
    fill_in "Idade", with: @raw_registros_ocorrencias_ssp_sp_gov_br.idade
    fill_in "Latitude", with: @raw_registros_ocorrencias_ssp_sp_gov_br.latitude
    fill_in "Logradouro", with: @raw_registros_ocorrencias_ssp_sp_gov_br.logradouro
    fill_in "Longitude", with: @raw_registros_ocorrencias_ssp_sp_gov_br.longitude
    fill_in "Marca celular", with: @raw_registros_ocorrencias_ssp_sp_gov_br.marca_celular
    fill_in "Nacionalidade", with: @raw_registros_ocorrencias_ssp_sp_gov_br.nacionalidade
    fill_in "Naturalidade", with: @raw_registros_ocorrencias_ssp_sp_gov_br.naturalidade
    fill_in "Naturezavinculada", with: @raw_registros_ocorrencias_ssp_sp_gov_br.naturezavinculada
    fill_in "Nomepessoa", with: @raw_registros_ocorrencias_ssp_sp_gov_br.nomepessoa
    fill_in "Num bo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.num_bo
    fill_in "Numero", with: @raw_registros_ocorrencias_ssp_sp_gov_br.numero
    fill_in "Numero boletim", with: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim
    fill_in "Numero boletim principal", with: @raw_registros_ocorrencias_ssp_sp_gov_br.numero_boletim_principal
    fill_in "Parentesco", with: @raw_registros_ocorrencias_ssp_sp_gov_br.parentesco
    fill_in "Peridoocorrencia", with: @raw_registros_ocorrencias_ssp_sp_gov_br.peridoocorrencia
    fill_in "Placa veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.placa_veiculo
    fill_in "Profissao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.profissao
    fill_in "Quant celular", with: @raw_registros_ocorrencias_ssp_sp_gov_br.quant_celular
    fill_in "Relacionamento", with: @raw_registros_ocorrencias_ssp_sp_gov_br.relacionamento
    fill_in "Rg", with: @raw_registros_ocorrencias_ssp_sp_gov_br.rg
    fill_in "Rg uf", with: @raw_registros_ocorrencias_ssp_sp_gov_br.rg_uf
    fill_in "Rubrica", with: @raw_registros_ocorrencias_ssp_sp_gov_br.rubrica
    fill_in "Sexo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.sexo
    fill_in "Solucao", with: @raw_registros_ocorrencias_ssp_sp_gov_br.solucao
    fill_in "Status", with: @raw_registros_ocorrencias_ssp_sp_gov_br.status
    fill_in "Tipopessoa", with: @raw_registros_ocorrencias_ssp_sp_gov_br.tipopessoa
    fill_in "Tipovinculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.tipovinculo
    fill_in "Uf", with: @raw_registros_ocorrencias_ssp_sp_gov_br.uf
    fill_in "Uf veiculo", with: @raw_registros_ocorrencias_ssp_sp_gov_br.uf_veiculo
    fill_in "Vitimafatal", with: @raw_registros_ocorrencias_ssp_sp_gov_br.vitimafatal
    click_on "Update Raw registros ocorrencias ssp sp gov br"

    assert_text "Raw registros ocorrencias ssp sp gov br was successfully updated"
    click_on "Back"
  end

  test "destroying a Raw registros ocorrencias ssp sp gov br" do
    visit raw_registros_ocorrencias_ssp_sp_gov_brs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Raw registros ocorrencias ssp sp gov br was successfully destroyed"
  end
end
