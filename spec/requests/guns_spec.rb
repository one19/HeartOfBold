require 'rails_helper'

RSpec.describe "Guns", type: :request do
  describe "GET /guns" do
    it "works! (now write some real specs)" do
      get guns_path
      expect(response).to have_http_status(200)
    end
  end
end
