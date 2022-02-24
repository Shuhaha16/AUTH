class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params["id"])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(params["company"])
    @company.save
    redirect_to "/companies"
  end

  def edit
    @company = Company.find(params["id"])
  end

  def update
    @company = Company.find(params["id"])
    @company.update(params["company"])
    redirect_to "/companies"
  end

  def destroy
    @company = Company.find(params["id"])
    @company.destroy
    redirect_to "/companies"
  end

end