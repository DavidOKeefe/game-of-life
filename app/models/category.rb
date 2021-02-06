# frozen_string_literal: true

class Category < ApplicationRecord
  NAMES = {
    hard:   'hard',
    medium: 'medium',
    easy:   'easy'
  }

  validates :name,
            presence:   true,
            uniqueness: true
end
