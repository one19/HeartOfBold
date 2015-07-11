require 'rails_helper'

RSpec.describe "Biomes", type: :request do
  describe "GET /biomes" do
    it "works! (now write some real specs)" do
      get biomes_path
      expect(response).to have_http_status(200)
    end
  end
end
