require 'fron'
require 'converter_controller'

class Converter < Fron::Application
  config.title = "Temperature Converter"

  config.routes do
    map CoverterController
  end

  config.layout do |main|
    self << main
  end
end

Converter.new
