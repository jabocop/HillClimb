require 'spec_helper'

describe "StaticPages" do
  subject {page}
  describe "Home page" do
    before {visit root_path}
    
    it { should have_selector('h1',text: 'Hill climb racer') }
    it { should have_selector('title', text: 'Hill Climb Highscore') }
    it { should_not have_selector('title', text: '|')}
    
  end
  
  describe "About Page" do
    before {visit about_path}
    
    it {should have_selector('h1',text: 'About')}
    it { should have_selector('title', text: 'Hill Climb Highscore | About') }
    
  
  end  
end
