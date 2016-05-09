class DistrictController < ApplicationController
  def index
    @districts = District.all
  end
end
