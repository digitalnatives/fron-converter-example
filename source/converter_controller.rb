require 'index'

class CoverterController < Fron::Controller
  route :index

  base Index

  def index
    @base.convert
  end
end
