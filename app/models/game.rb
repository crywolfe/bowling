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

class Game < ActiveRecord::Base

  belongs_to :user
  has_many :frames

  PINS = 10

  # def alt_initialize
  #
  #   self.scorecard = [Frame.new({:frame_number => "1"}),
  #             Frame.new({:frame_number => "2"}),
  #             Frame.new({:frame_number => "3"}),
  #             Frame.new({:frame_number => "4"}),
  #             Frame.new({:frame_number => "5"}),
  #             Frame.new({:frame_number => "6"}),
  #             Frame.new({:frame_number => "7"}),
  #             Frame.new({:frame_number => "8"}),
  #             Frame.new({:frame_number => "9"}),
  #             Frame.new({:frame_number => "10"})]
  # end

  def frame_score(frame_number)
    if frame_number < 10
      frame_1_9(frame_number)
    elsif frame_number == 10
      frame_10(frame_number)
    end
  end

  def frame_1_9(frame_number)

    # Frames 1 through 9
    if frame_number < 10 && strike(frame_number)
      frame_score = scorecard[frame_number-1][0] + scorecard[frame_number-1][1] + scorecard[frame_number][0] + scorecard[frame_number][1]
    elsif frame_number < 10 && spare(frame_number)
      frame_score = scorecard[frame_number-1][0] + scorecard[frame_number-1][1] + scorecard[frame_number][0]
    else
      frame_score = scorecard[frame_number-1][0] + scorecard[frame_number-1][1]
    end
    frame_score
  end

    # the 10th frame
  def frame_10(frame_number)
    if frame_number == 10 && (strike(frame_number) || spare(frame_number))
      frame_score = scorecard[frame_number-1][0] + scorecard[frame_number-1][1] + scorecard[frame_number-1][2]
    else
      frame_score = scorecard[frame_number-1][0] + scorecard[frame_number-1][1] + scorecard[frame_number-1][0]
    end
    frame_score
  end

  def strike(frame_number)
    scorecard[frame_number-1][0] == PINS
  end

  def spare(frame_number)
    scorecard[frame_number-1][0] + scorecard[frame_number-1][1] == PINS
  end


  def total_score


  end



end
