require "rails_helper"

describe "Superheroes", type: :request do
  describe "GET /api/v1/superheroes/" do
    before { get "/api/v1/superheroes", params: { format: :json } }

    it "responds with OK status" do
      expect(response.status).to eq(200)
    end
  end

  describe "GET /api/v1/superheroes/:id" do
    let(:superhero) { FactoryGirl.create(:superhero) }

    context "when the request is valid" do
      before { get "/api/v1/superheroes/#{superhero.id}", params: { format: :json } }

      it "responds with OK status" do
        expect(response.status).to eq(200)
      end
    end

    context "when the request is invalid" do
      before { get "/api/v1/superheroes/9000+", params: { format: :json } }

      it "responds with ERROR status" do
        expect(response.status).to eq(404)
      end
    end
  end
end
