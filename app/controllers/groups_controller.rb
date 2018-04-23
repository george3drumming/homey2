class GroupsController < ApplicationController
        
    
    
    def index
        @group = Group.all     #use models slides week 6
  end
  
  def new_group
          @nu_grp = params[:new_group]
          @res = params[:group_address]
          
  end  
end
