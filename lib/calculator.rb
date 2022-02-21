require 'dry/monads'

class Calculator
  include Dry::Monads[:result, :do]

  def call(input:)
    value = Integer(input)

    value_add_3 = yield add_3_if_gt_1(value)
    value_mult_2 = yield mult_2_if_even(value_add_3)

    Success(value_mult_2)
  rescue ArgumentError => e
    Failure(e)
  end

  private

  def add_3_if_gt_1(value)
    if value > 1
      Success(value + 3)
    else
      Failure(:less_than_one)
    end
  end

  def mult_2_if_even(value)
    if value.even?
      Success(value * 2)
    else
      Failure(:not_even)
    end
  end
end
