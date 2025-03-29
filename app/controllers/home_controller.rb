class HomeController < ApplicationController
  allow_unauthenticated_access only: %i[ index ]
  def index
    # Add any logic for the home page here
  end
end
