class Cleaner < ActiveRecord::Base
    has_many :reviews
    has_many :pools
    has_many :owners, through: :pools
end