require 'crunch_numbers'

RSpec.describe CrunchNumbers do
  describe '#crunch' do
    context 'valid input' do
      it 'returns "Yay! Value is <expect_value>" when the return value is greater than 1 and even' do
        expect(subject.crunch(3)).to eq('Yay! Value is 12')
      end
    end

    context 'invalid input' do
      it 'returns "Nay less than one" when the add_3 fails > 1 validation' do
        expect(subject.crunch(1)).to eq('Nay less than one')
      end

      it 'returns "Nay not even" when the return value is odd' do
        expect(subject.crunch(2)).to eq('Nay not even')
      end
    end
  end
end
