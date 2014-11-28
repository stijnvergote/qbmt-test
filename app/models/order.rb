class Order < ActiveRecord::Base
  has_one :car
  has_many :options
end
