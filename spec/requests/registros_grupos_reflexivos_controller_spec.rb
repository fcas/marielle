require 'rails_helper'
require 'active_support'

RSpec.describe RegistrosGruposReflexivosController, type: :request do

  before(:all) do
    @registros_grupos_reflexivo = RegistrosGruposReflexivo.create telefone: '11111111111', logradouro: 'Avenida Paulista', numero: '113', bairro: 'Cerqueira César', cidade: 'São Paulo', uf: 'SP', nomegruporeflexivo: 'MEMOH'
  end

  describe "GET /" do
    it 'returns http success' do
      get "/registros_grupos_reflexivos"
      expect(response).to have_http_status(:success)
    end

    it 'given JSON request, should get list of registers' do
      get registros_grupos_reflexivos_url, params: {format: :json}
      assert_response :success
      data = JSON.parse(@response.body)
      assert data.size > 0
    end
  end

  describe "GET /show" do
    it 'should show registros_grupos_reflexivos' do
      get registros_grupos_reflexivo_url(@registros_grupos_reflexivo)
      expect(response).to render_template('show')
    end

    it 'given JSON request, should get registros_grupos_reflexivos' do
      get registros_grupos_reflexivo_url(@registros_grupos_reflexivo), params: {format: :json}
      assert_response :success

      data = JSON.parse(@response.body)
      assert_equal @registros_grupos_reflexivo.telefone, data['telefone']
      assert_equal @registros_grupos_reflexivo.logradouro, data['logradouro']
      assert_equal @registros_grupos_reflexivo.numero, data['numero']
      assert_equal @registros_grupos_reflexivo.bairro, data['bairro']
      assert_equal @registros_grupos_reflexivo.cidade, data['cidade']
      assert_equal @registros_grupos_reflexivo.uf, data['uf']
      assert_equal @registros_grupos_reflexivo.nomegruporeflexivo, data['nomegruporeflexivo']
    end
  end

  describe "GET /new" do
    it 'should get new' do
      get registros_grupos_reflexivos_url
      render_template('new')
    end
  end

  describe "POST /create" do
    it 'should create registros_grupos_reflexivos' do
      expect {
        post registros_grupos_reflexivos_url, params: {registros_grupos_reflexivo: {telefone: @registros_grupos_reflexivo.telefone, logradouro: @registros_grupos_reflexivo.logradouro, cidade: @registros_grupos_reflexivo.cidade, bairro: @registros_grupos_reflexivo.bairro, nomegruporeflexivo: @registros_grupos_reflexivo.nomegruporeflexivo, numero: @registros_grupos_reflexivo.numero, uf: @registros_grupos_reflexivo.uf }}
      }.to change { RegistrosGruposReflexivo.count }.by(1)

      assert_redirected_to registros_grupos_reflexivo_url(RegistrosGruposReflexivo.last)
    end
  end
end