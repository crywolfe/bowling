# == Schema Information
#
# Table name: frames
#
#  id                :integer          not null, primary key
#  game_id           :integer
#  frame_number      :integer
#  chance_one_points :integer
#  chance_two_points :integer
#  total_points      :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Frame < ActiveRecord::Base
  belongs_to :game

  # ??? Should I set up a comments class that belongs to each frame or simply have comments be an attribute of game... multiple comments may make it more appropriate for its own model and table. TBD  ???

  # Set up frame methods

  def build_frame
  end

  def start_frame

  end

  def finish_frame

  end

  def score_frame

  end

  def score_chance_one
  end

  def score_chance_two
  end



end
