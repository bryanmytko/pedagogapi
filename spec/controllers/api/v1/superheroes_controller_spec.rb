require "rails_helper"

describe Api::V1::SuperheroesController, type: :controller do
  let(:superhero) { FactoryGirl.create(:superhero) }

  describe "GET #index" do
    it "returns all superheroes" do
      get :index, format: :json
      expect(assigns[:superheroes]).to eq(Superhero.all)
    end
  end

  describe "GET #show" do
    context "valid request" do
      it "returns the superhero" do
        get :show, format: :json, id: superhero.id
        expect(assigns[:superhero]).to eq(superhero)
      end
    end

    context "invalid request" do
      it "returns nil" do
        get :show, format: :json, id: -1
        expect(assigns[:superhero]).to be_nil
      end
    end
  end
end
