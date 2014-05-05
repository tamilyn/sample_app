FactoryGirl.define do
  factory :user do |user|
	user.name                  "test user"
	user.password_confirmation "foobar"
	user.password              "foobar"
	user.email                 "test1@test.edu"
  end
end
