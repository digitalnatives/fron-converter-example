require 'fron'
require '../source/index'

describe Index do
  describe '#convert' do
    it 'should covert celcius to fahrenheit' do
      { 'asd' => 32, 0 => 32, 10 => 50 }.each do |celcius, fahrenheit|
        subject.input.value = celcius
        subject.convert
        subject.result.text.to_i.should eq fahrenheit
      end
    end
  end
end
