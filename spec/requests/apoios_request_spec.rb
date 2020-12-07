require 'rails_helper'

RSpec.describe "Apoios", type: :request do

  before(:all) do
    @apoio = Apoio.create telefone: '11111111111', logradouro: 'Avenida Paulista', numero: '113', bairro: 'Cerqueira César', cidade: 'São Paulo', uf: 'SP', nomegrupoapoio: 'MEMOH'
  end

  describe "GET /index" do
    it "returns http success" do
      get "/apoios"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it 'should show apoios' do
      get apoio_url(@apoio)
      expect(response).to render_template('show')
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/apoios/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get apoio_url(@apoio)
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET /destroy" do
  #   it "returns http success" do
  #     get "/apoios/destroy"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
