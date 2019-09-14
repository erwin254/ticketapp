class PagesController < ApplicationController
  def index
  	if user_signed_in?
	  	if current_user.has_role? :admin
	  		@tickets = Ticket.all
	  	else
	  		@tickets = Ticket.where( user_id: current_user.id)
	  	end
	 end
  end

  def contact
  end
end
