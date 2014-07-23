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

class Frame < ActiveRecord::Base
  belongs_to :game

  attr_accessor :frame_number, :ball1, :ball2

  PINS = 10
  FRAMES = 10

  # Set up frame methods
  def alt_initialize(frame_number, ball1 = 0, ball2 = 0)

    self.frame_number = frame_number.to_i
    self.ball1 = ball1.to_i
    self.ball2 = ball2.to_i
  end

  # def frame_number
  #   @frame_number
  # end
  #
  # def strike?
  #   @ball1 == PINS
  # end
  #
  # def spare?
  #   @ball1 + @ball2 == PINS
  # end

  def complete_frame
    @game.scorecard[0].ball1 = params[:frame_1a]
    @game.scorecard[0].ball2 = params[:frame_1b]
  end

  def basic_score
    @total_points = @ball1 + @ball2

  end

  # def strike_score
  #   next_frame = @frame_number + 1
  #   if strike?
  #
  #     total = @ball1 + NEXT TWO THROWS
  #   end
  # end

end
