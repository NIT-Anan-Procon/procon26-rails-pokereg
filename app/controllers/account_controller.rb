class AccountController < ApplicationController
  before_action :sign_in_required
  def home
  end

  def things
    @receipts = Receipt.where('owner' => current_user)
    @things = Thing.where('receipt' => current_user )

  end
end
