require "rails_helper"

describe "People", type: :request do
  describe "GET /api/v1/people/" do
    before { get "/api/v1/people", { format: :json } }

    it "responds with OK status" do
      expect(response.status).to eq(200)
    end
  end

  describe "GET /api/v1/people/:id" do
    let(:person) { FactoryGirl.create(:person) }

    context "when the request is valid" do
      before { get "/api/v1/people/#{person.id}", { format: :json } }

      it "responds with OK status" do
        expect(response.status).to eq(200)
      end
    end

    context "when the request is invalid" do
      before { get "/api/v1/people/9000+", { format: :json } }

      it "responds with ERROR status" do
        expect(response.status).to eq(404)
      end
    end
  end
end
