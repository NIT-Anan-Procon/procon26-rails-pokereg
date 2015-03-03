class AccountController < ApplicationController
  before_action :sign_in_required
  def home
  end

  def things
    @things = Thing.all
  end
end
