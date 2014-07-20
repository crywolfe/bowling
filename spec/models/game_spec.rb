# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  scorecard  :string(255)      is an Array
#  comment    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

describe Game do

  it "should have 10 frames" do
    pending
  end

  it "should keep track of the frame the user is on" do
    pending
  end



end
