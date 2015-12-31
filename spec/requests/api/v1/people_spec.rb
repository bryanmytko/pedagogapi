require "rails_helper"

describe "People", type: :request do
  describe "GET /api/v1/people/" do
    before { get "/api/v1/people", { format: :json } }

    it "responds with OK status" do
      expect(response.status).to eq(200)
    end
  end
end
