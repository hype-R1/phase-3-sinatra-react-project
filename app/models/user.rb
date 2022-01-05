class User < ActiveRecord::Base
    has_many :todos
    has_many :lists through: :todos
    
end


#thinking this might be a little weird but I'm not sure
#the user will have many todos on a single list and a user might have many lists or we can just
#do a one to many here your call just settign up 