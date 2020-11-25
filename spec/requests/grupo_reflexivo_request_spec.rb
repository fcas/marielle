require 'rails_helper'

RSpec.describe "GrupoReflexivos", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/grupo_reflexivo/new"
      expect(response).to have_http_status(:success)
    end
  end

end
