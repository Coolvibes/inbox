module Inbox
  class Receiver < ActiveRecord::Base

   belongs_to :email

  end
end
