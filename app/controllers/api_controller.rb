class ApiController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def pay_off
    d = JSON.parse(params[:data])
    r = Receipt.new
    r.bought_at = Time.now

    user =  User.find_by_email(d["email"])
    if user.valid_password?(d["password"])
      r.owner = user
      d["things"].each{|p|
        t = Thing.new
        t.category = p["category"]
        t.price = p["price"]
        t.amount = p["amount"]
        r.things.push t
      }
      r.save
      render text: "success!!"
    else
      render :json => {result: "failed"}
    end 
  end
end
