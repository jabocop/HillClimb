require 'spec_helper'

describe "TrackPages" do
  subject {page}
  describe "index" do

    
    let(:admin) { FactoryGirl.create(:admin) }
    before do
      sign_in admin
      visit tracks_path
    end
    
    it {should have_selector('title', text: full_title('All tracks')) }
    it { should have_selector('h1',    text: 'All tracks') }
    it {should have_link('New track')}
  end
  
  describe "Add track page" do
    let(:admin) { FactoryGirl.create(:admin) }
    before do
      sign_in admin
      visit new_track_path
    end
    
    let (:submit) { "Save" }
    describe "with invalid information" do
      it "should not create a track" do
        expect { click_button submit }.not_to change(Track, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example Track"
      end

      it "should create a track" do
        expect { click_button submit }.to change(Track, :count).by(1)
      end
      describe "after saving the track" do
        before { click_button submit }
        
        it { should have_selector('title', text: 'All tracks') }
             
      end
      
      
      
    end
  end
end
