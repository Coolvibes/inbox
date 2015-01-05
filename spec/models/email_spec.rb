require 'rails_helper'

RSpec.describe Inbox::Email, :type => :model do

  it "has a valid factory" do
     FactoryGirl.create(:email).should be_valid
  end
    #it "is invalid without a firstname"
  #it "is invalid without a lastname"
  #it "returns a contact's full name as a string"

end