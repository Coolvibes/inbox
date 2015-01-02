require_dependency "inbox/application_controller"

module Inbox
  class InboxController < ApplicationController

  	#layout 'inbox/application'

    def view
    	#@emails=Email.joins(:receivers).where(inbox_receivers: { receiver_email: current_user.email },is_draft:false).order(created_at: :desc).paginate(:page => params[:page], :per_page => 4)
    	@emails=Email.joins(:receivers).where(is_draft:false).order(created_at: :desc).paginate(:page => params[:page], :per_page => 4)
    end

    def sent
    end

    def show_msg
    end
  end
end
