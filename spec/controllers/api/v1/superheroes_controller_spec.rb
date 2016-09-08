require "rails_helper"

describe Api::V1::SuperheroesController, type: :controller do
  let(:superhero) { FactoryGirl.create(:superhero) }

  describe "GET #index" do
    it "returns all superheroes" do
      get :index, format: :json
      expect(response.status).to eq 200
    end
  end

  describe "GET #show" do
    context "valid request" do
      it "returns the superhero" do
        get :show, format: :json, params: { id: superhero.id }
        expect(response.status).to eq 200
      end
    end

    context "invalid request" do
      it "returns nil" do
        get :show, format: :json, params: { id: -1 }
        expect(response.status).to eq 404
      end
    end
  end
end
