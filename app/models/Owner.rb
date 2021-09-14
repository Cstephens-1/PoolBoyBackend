class Owner < ActiveRecord::Base
has_many :pools
has_many :cleaners, through: :pools
has_many :reviews

end