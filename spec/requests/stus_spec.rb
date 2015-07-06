require 'rails_helper'

RSpec.describe "Stus", type: :request do
  describe "GET /stus" do
    it "works! (now write some real specs)" do
      get stus_path
      expect(response).to have_http_status(200)
    end
  end
end
