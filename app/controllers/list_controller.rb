class ListController < ApplicationController
    #Get all clinics
    get "/list" do
      List.all.to_json
    end  
    
  end

  #tinking htis will list oll the deffernt lists we he for the users ?? 
  #what are your thuoghts
  
