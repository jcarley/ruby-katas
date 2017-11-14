

def convert_temp(temp, input_scale: '', output_scale: 'celsius')
  {
    celsius: {
      kelvin: lambda { |temp| temp + 273.15 },
      fahrenheit: lambda { |temp| temp * 1.8 + 32 }
    },
    fahrenheit: {
      kelvin: lambda { |temp| ((temp + 459.67) * 5/9).round(3) },
      celsius: lambda { |temp| ((temp - 32).to_f * 5/9).round(4) }
    },
    kelvin: {
      celsius: lambda { |temp| (temp - 273.15).round(2) },
      fahrenheit: lambda { |temp| (temp * 9/5 - 459.67).round(2) }
    }
  }[input_scale.to_sym][output_scale.to_sym].(temp)
end

