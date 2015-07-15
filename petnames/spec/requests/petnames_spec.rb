require 'rails_helper'

RSpec.describe "Petnames", type: :request do
  describe "GET /petnames" do
    it "works! (now write some real specs)" do
      get petnames_path
      expect(response).to have_http_status(200)
    end
  end
end
