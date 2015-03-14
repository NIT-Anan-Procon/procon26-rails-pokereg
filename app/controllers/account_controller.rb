class AccountController < ApplicationController
  before_action :sign_in_required
  def home
  end

  def things
       @receipts = Receipt.where(owner_id: current_user.id) 
  end
  
 end
