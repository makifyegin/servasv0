# app/controllers/countries_controller.rb
class CountriesController < ApplicationController
  allow_unauthenticated_access only: %i[ index ]

  def index
    # If a name parameter is provided, filter countries based on the name

    if params[:name].present?
      @countries = Country.where("LOWER(name) LIKE ?", "%#{params[:name].downcase}%")
    else
      @countries = Country.all
    end
  end

  def show
  end
end
