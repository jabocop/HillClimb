# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Track do
  before {@track = Track.new(name: "TestTrack")}
  subject {@track}
  it {should respond_to(:name)}
  it {should be_valid}
  
  describe "When name not presetnt" do
    before {@track.name = " "}
    it {should_not be_valid}
  end
  
  describe "when duplicate name" do
    before do
      duplicate_track = @track.dup
      duplicate_track.name = @track.name.upcase
      duplicate_track.save
    end
    it { should_not be_valid }
  end
end
