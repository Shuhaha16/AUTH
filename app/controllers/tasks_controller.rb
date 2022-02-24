class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.new(params["task"])
    @task.save
    redirect_to "/tasks"
  end

  def destroy
    @task = Task.find(params["id"])
    @task.destroy
    redirect_to "/tasks"
  end
end
