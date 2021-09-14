class Pool < ActiveRecord::Base
    belongs_to :cleaner
    belongs_to :owner
    has_many :reviews
    
end