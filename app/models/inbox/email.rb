module Inbox
  class Email < ActiveRecord::Base

  	has_many :receivers
  	
  end
end
