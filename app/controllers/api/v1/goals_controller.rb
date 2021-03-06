class Api::V1::GoalsController < ApplicationController

  def index
    goals = Goal.all
    render json: goals
  end

  def new
    # displays a form to create a new user
  end

  def create
    goal = Goal.create(goal_params)
    render json: goal
  end

  def show
    # info about one particular row
  end

  def edit
  end

  def update
    goal = Goal.find(params[:id])
    goal.update(goal_params)
    render json: goal
  end

  def destroy
    goal = Goal.find(params[:id])
    goal.destroy
    render json: goal  
  end

  private

  def goal_params
    params.require(:goal).permit(:id, :name, :amount, :date, :saved, :rate)
  end

end
