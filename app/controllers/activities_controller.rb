class ActivitiesController < ApplicationController
  def create
    @activity = Activity.new(params["activity"])
    @activity.save
    redirect_to "/contacts/#{@activity.contact_id}"
  end
end
