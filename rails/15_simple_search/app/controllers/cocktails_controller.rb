class CocktailsController < ApplicationController
  def index
    # @cocktails = Cocktail.all
    # @search = params["search"]
    # if @search.present?
    #   @name = @search["name"]
    #   @cocktails = Cocktail.where("name ILIKE ?", "%#{@name}%")
    # end

    if params["search"]
      @filter = params["search"]["flavors"].concat(params["search"]["strengths"]).flatten.reject(&:blank?)
      @cocktails = @filter.empty? ? Cocktail.all : Cocktail.all.tagged_with(@filter, any: true)
    else
      @cocktails = Cocktail.all
    end
  end
end
