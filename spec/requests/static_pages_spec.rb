require 'spec_helper'

describe "StaticPages" do
  it "should have the content 'Sample App'" do
      visit root_path
      page.should have_selector('h1', text: 'Hill climb racer')
    end
end
