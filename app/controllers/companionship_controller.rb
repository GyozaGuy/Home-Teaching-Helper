class CompanionshipController < ApplicationController
  def index
    @companionships = Companionship.all
  end
end
