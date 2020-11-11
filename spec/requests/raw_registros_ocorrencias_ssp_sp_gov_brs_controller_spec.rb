require 'rails_helper'

RSpec.describe RawRegistrosOcorrenciasSspSpGovBrsController, type: :request do
  it 'should get index' do
    get raw_registros_ocorrencias_ssp_sp_gov_brs_url
    expect(response).to render_template('index')
  end
end