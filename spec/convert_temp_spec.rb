require 'convert_temp'

RSpec.describe 'convert_temp' do

  it 'interconversion between temperaturs' do

    table = [
      {temp: 0, input_scale: 'celsius', output_scale: 'kelvin', result: 273.15},
      {temp: 0, input_scale: 'celsius', output_scale: 'fahrenheit', result: 32.0},
      {temp: 0, input_scale: 'fahrenheit', output_scale: 'kelvin', result: 255.372},
      {temp: 0, input_scale: 'fahrenheit', output_scale: 'celsius', result: -17.7778},
      {temp: 0, input_scale: 'kelvin', output_scale: 'celsius', result: -273.15},
      {temp: 10, input_scale: 'kelvin', output_scale: 'celsius', result: -263.15},
      {temp: 200, input_scale: 'kelvin', output_scale: 'celsius', result: -73.15},
      {temp: 10, input_scale: 'kelvin', output_scale: 'fahrenheit', result: -441.67},
      {temp: 200, input_scale: 'kelvin', output_scale: 'fahrenheit', result: -99.67}
    ]

    table.each do |example|
      temp = example.delete(:temp)
      expected_result = example.delete(:result)
      result = convert_temp(temp, example)
      expect(result).to eql(expected_result)
    end

  end


end
