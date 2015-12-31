require "rails_helper"

describe Api::V1::PeopleController, type: :controller do
  let(:person) { FactoryGirl.create(:person) }

  describe "GET #index" do
    it "returns all people" do
      get :index, format: :json
      expect(assigns[:people]).to eq(Person.all)
    end
  end

  describe "GET #show" do
    context "valid request" do
      it "returns the person" do
        get :show, format: :json, id: person.id
        expect(assigns[:person]).to eq(person)
      end
    end

    context "invalid request" do
      it "returns nil" do
        get :show, format: :json, id: -1
        expect(assigns[:person]).to be_nil
      end
    end
  end
end
