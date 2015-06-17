class Basic < ActiveRecord::Base
  has_many :open_applies
  has_many :referrals
  has_many :inquiries
end
