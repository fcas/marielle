class CreateRawRegistrosOcorrenciasSspSpGovBrs < ActiveRecord::Migration[6.0]
  def change
    create_table :raw_registros_ocorrencias_ssp_sp_gov_brs do |t|
      t.integer :ano_bo
      t.integer :num_bo
      t.text :numero_boletim
      t.text :bo_iniciado
      t.text :bo_emitido
      t.text :dataocorrencia
      t.text :horaocorrencia
      t.text :peridoocorrencia
      t.text :datacomunicacao
      t.text :dataelaboracao
      t.text :bo_autoria
      t.text :flagrante
      t.text :numero_boletim_principal
      t.text :logradouro
      t.integer :numero
      t.text :bairro
      t.text :cidade
      t.text :uf
      t.text :latitude
      t.text :longitude
      t.text :descricaolocal
      t.text :exame
      t.text :solucao
      t.text :delegacia_nome
      t.text :delegacia_circunscricao
      t.text :especie
      t.text :rubrica
      t.text :desdobramento
      t.text :status
      t.text :nomepessoa
      t.text :tipopessoa
      t.text :vitimafatal
      t.text :rg
      t.text :rg_uf
      t.text :naturalidade
      t.text :nacionalidade
      t.text :sexo
      t.text :datanascimento
      t.text :idade
      t.text :estadocivil
      t.text :profissao
      t.text :grauinstrucao
      t.text :corcutis
      t.text :naturezavinculada
      t.text :tipovinculo
      t.text :relacionamento
      t.text :parentesco
      t.text :placa_veiculo
      t.text :uf_veiculo
      t.text :cidade_veiculo
      t.text :descr_cor_veiculo
      t.text :descr_marca_veiculo
      t.integer :ano_fabricacao
      t.integer :ano_modelo
      t.text :descr_tipo_veiculo
      t.text :quant_celular
      t.text :marca_celular

      t.timestamps
    end
  end
end
