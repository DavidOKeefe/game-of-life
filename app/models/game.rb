# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :scores,
           inverse_of: :game,
           dependent:  :destroy

  belongs_to :user, inverse_of: :games

  validates :name,
            presence:   true,
            uniqueness: { scope: :user }

  validates :user,
            presence: true
end
