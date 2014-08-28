class MainController < ApplicationController
  def index
    @reports = Report.last(10)
  end
end
