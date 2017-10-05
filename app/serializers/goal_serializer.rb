class GoalSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper

  attributes :id, :name, :amount, :date, :rate, :saved

  def amount
    number_to_currency(object.amount)
  end

  def date
    object.date.strftime("%m/%d/%y")
  end

  def rate
    number_to_percentage(object.rate * 100, precision: 2)
  end

  def saved
    number_to_currency(object.saved)
  end
end
