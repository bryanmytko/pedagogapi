module Api::V1
  class PeopleController < ApiController
    def index
      @people = Person.all
    end

    def show
      @person = Person.find(person_params[:id])
    end

    private

    def person_params
      params.permit(:id)
    end
  end
end
