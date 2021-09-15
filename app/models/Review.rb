class Review < ActiveRecord::Base
    belongs_to :owner
    belongs_to :cleaner
    belongs_to :pool

    

end