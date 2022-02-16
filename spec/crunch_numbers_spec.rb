require 'crunch_numbers'

RSpec.describe CrunchNumbers do
  describe '#crunch' do
    context 'valid input' do
      it 'returns "Yay!" when the input is greater than 1 and even' do
        expect(subject.crunch(3)).to eq('Yay!')
      end
    end

    context 'invalid input' do
      it 'returns "Nay" when the input is odd' do
        expect(subject.crunch(1)).to eq('Nay')
      end
    end
  end
end
