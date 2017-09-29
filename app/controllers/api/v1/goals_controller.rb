class Api::V1::GoalsController < ApplicationController

  def index
    binding.pry
    goals = Goal.all
    render json: goals
  end

  def new
    # displays a form to create a new user
  end

  def create
    # creates a new row in the users table
  end

  def show
    # info about one particular row
  end

  def edit
    # form to edit an existing row
  end

  def update
    #updates an existing row
  end

  def destroy
    # deletes an existing row
  end


end
