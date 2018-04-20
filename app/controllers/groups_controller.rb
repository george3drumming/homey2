class GroupsController < ApplicationController
  before_action :authenticate_user!
    
    
    def index
        
      #use models slides week 6
  end
  
  def new_group
          @nu_grp = params{:new_group}
          @res = "group_address"
             
  end  
end
