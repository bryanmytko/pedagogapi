module Api::V1
  class SuperheroesController < ApiController
    def index
      @superheroes = Superhero.all
    end

    def show
      @superhero = Superhero.find(superhero_params[:id])
    end

    private

    def superhero_params
      params.permit(:id)
    end
  end
end
