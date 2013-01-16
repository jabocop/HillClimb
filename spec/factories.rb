FactoryGirl.define do
  factory :user do
    name "Test Testman"
    email "test@testman.com"
    password "foobar"
    password_confirmation "foobar"
  end
end