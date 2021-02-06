# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :scores,
           inverse_of: :game,
           dependent:  :destroy

  validates :name,
            presence:   true,
            uniqueness: true
end
