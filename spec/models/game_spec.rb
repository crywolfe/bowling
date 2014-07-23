# == Schema Information
#
# Table name: games
#
#  id             :integer          not null, primary key
#  comment        :string(255)
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#  frame_10c      :string(255)
#  frame_1_score  :string(255)
#  frame_2_score  :string(255)
#  frame_3_score  :string(255)
#  frame_4_score  :string(255)
#  frame_5_score  :string(255)
#  frame_6_score  :string(255)
#  frame_7_score  :string(255)
#  frame_8_score  :string(255)
#  frame_9_score  :string(255)
#  frame_10_score :string(255)
#  scorecard      :integer          is an Array
#  frame_number   :integer
#

describe Game do

  it "should have 10 frames" do
    pending
  end

  it "should keep track of the frame the user is on" do
    pending
  end

   it "should return true for a spare" do
    game = Game.new([[3,7]])
    expect(game.spare?).to be_true
  end

  it "should return true when a strike is rolled" do
    game = Game.new([[10]])
    expect(game.strike?).to be_true
  end

  it "should score each frame (1 through 9) correctly" do
    game = Game.new([[2,3]])
    expect(game.score).to eql(5)
  end

  it "should score 300 if it is a perfect game of strikes" do
    game = Game.new([[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,10]])
    expect(game.score).to eql(300)
  end

  it "should score 261 if first 9 frames are strikes but the last one isn't" do
    game = Game.new([[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[1,4]])
    expect(game.score).to eql(258)

end
