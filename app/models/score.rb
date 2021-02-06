# frozen_string_literal: true

class Score < ApplicationRecord
  belongs_to :game,     inverse_of: :scores
  belongs_to :category

  validates :game,
            presence:  true,
            null:      false,
            uniquness: { scope: :category }
end
