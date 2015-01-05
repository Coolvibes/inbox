require 'rails_helper'

RSpec.describe Inbox::InboxHelper, :type => :helper do

  describe "test show_time" do

    it "gets the correct time" do

      email = Inbox::Email.create

      (helper.show_time(email)).should eq (((Time.now - email.created_at)/5.day) > 1)

    end
  end

  describe "test show_mess" do

     it "handles blank messages" do

       email = Inbox::Email.create(:message=>nil)

       helper.show_mess(email,8).should eq "..."

     end

  end
end
