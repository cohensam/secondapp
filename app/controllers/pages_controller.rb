class PagesController < ApplicationController
  skip_before_filter :authenticate_name!
  def front
  end
end
