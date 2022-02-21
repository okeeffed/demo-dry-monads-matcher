require 'calculator'
require 'dry/matcher/result_matcher'

class CrunchNumbers
  include Dry::Monads[:result]

  def crunch(calculator:, input:)
    # Dry::Matcher::ResultMatcher.call(calculator.call(input: input)) do |m|
    #   m.success do |response|
    #     "Yay! Value is #{response}"
    #   end

    #   m.failure :less_than_one do
    #     'Nay less than one'
    #   end

    #   m.failure :not_even do
    #     'Nay not even'
    #   end
    # end

    case calculator.call(input: input)
    	in Success(Integer => response) then "Yay! Value is #{response}"
    	in Failure(:less_than_one) then 'Nay less than one'
    	in Failure(:not_even) then 'Nay not even'
      in Failure(ArgumentError => e) then "Nay #{e.message}"
    end
  end
end
