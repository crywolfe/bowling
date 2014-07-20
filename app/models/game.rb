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

class Game < ActiveRecord::Base

  belongs_to :user
  has_many :frames

  # Set up game methods

  def build_game
  end

  def start_game

  end

  def finish_game

  end

  def current_frame

  end

  def score_game
  end



end
