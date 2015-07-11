require 'rails_helper'

RSpec.describe "Projectiles", type: :request do
  describe "GET /projectiles" do
    it "works! (now write some real specs)" do
      get projectiles_path
      expect(response).to have_http_status(200)
    end
  end
end
