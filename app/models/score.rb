# frozen_string_literal: true

class Score < ApplicationRecord
  belongs_to :game, inverse_of: :scores

  validates :game, presence: true
end
