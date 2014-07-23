# == Schema Information
#
# Table name: frames
#
#  id           :integer          not null, primary key
#  game_id      :integer
#  frame_number :integer
#  ball1        :integer
#  ball2        :integer
#  total_points :integer
#  created_at   :datetime
#  updated_at   :datetime
#

describe Frame do

  it "should have two throws" do
    pending
  end

  it "should return a strike if all ten pins are knocked down on the first throw" do
    pending
  end


  it "should return a spare if all ten pins are knocked down after two throws" do
    pending
  end

end
