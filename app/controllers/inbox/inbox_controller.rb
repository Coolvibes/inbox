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

    #Shows the page with full contents of a single email
    #also handles the is_read and is_read_by_all function

    @email = Email.find(params[:id])
    read =params[:read]

    r=Receiver.where(email_id: @email.id,receiver_email: current_user.email)


    if(r.blank? == false)
      Receiver.update(r.first.id,is_read: read)
    end

  end
  end
end
