class Todo < ActiveRecord::Base
    belongs_to :user
    belongs_to :list


    
end