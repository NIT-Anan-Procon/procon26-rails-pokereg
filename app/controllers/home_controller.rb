class HomeController < ApplicationController
  def index
  end

  def show
  end

  def after_sign_in_path_for(resource)
    account/charts
  end

  def after_sign_out_path_for(resource)
    account/charts
  end
end
