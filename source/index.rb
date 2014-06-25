class Index < Fron::Component
  component :label, 'label Input: '
  component :input, 'input'
  component :label, 'label Result: '
  component :result, 'span'

  on :input, :convert

  def convert
    @result.text = @input.value.to_i * 9 / 5 + 32
  end
end
