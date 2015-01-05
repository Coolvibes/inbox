#require 'faker'

 FactoryGirl.define  do

  factory :email, :class => Inbox::Email do |f|
    f.id {30}
    f.sender { "xyz@josh.com" }
    f.subject { ""}
    f.message { "hghqgdh" }
    f.is_draft {true}
  end

end
