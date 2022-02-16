require 'calculator'
require 'dry/matcher/result_matcher'

class CrunchNumbers
  def crunch(input)
    calculator = Calculator.new
    Dry::Matcher::ResultMatcher.call(calculator.call(input: input)) do |m|
      m.success do
        'Yay!'
      end

      m.failure do
        'Nay'
      end
    end
  end
end
