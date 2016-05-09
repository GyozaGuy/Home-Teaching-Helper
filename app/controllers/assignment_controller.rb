class AssignmentController < ApplicationController
  def index
    @assignments = Assignment.all
  end
end
