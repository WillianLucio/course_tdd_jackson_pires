require 'calculator'

RSpec.describe Calculator, "- Sobre a Calculadora" do

  context '#div' do
    it 'divide by 0' do
      expect{subject.div(3,0)}.to raise_exception
      expect { subject.div(3,0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(3,0) }.to raise_error('divided by 0')
      expect { subject.div(3,0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect { subject.div(3,0) }.to raise_error(/divided/)
    end
  end

  context '#sum' do
    # subject(:subject) { described_class.new(param1, param2) } Caso a classe precise de parâmetros
    subject(:calc) { described_class.new() }
    it 'with positive numbers' do
      result = calc.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'with negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end
end
