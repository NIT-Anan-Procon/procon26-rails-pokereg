class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
#  scope :receipts_at ->(year, month){
#    s = Time.mktime(year, month, 1, 00, 00, 00)
#    e = s + 1.month
#    c1 = Receipt.arel_table[:bought_at].gteq(s)
#    c2 = Receipt.arel_table[:bought_at].lt(e)
#    c3 = Receipt.arel_table[:owner_id].eq( self.id )
#    Receipt.where(c1.and(c2).and(c3))
#  }
  
end
