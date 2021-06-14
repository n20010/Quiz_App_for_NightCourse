class Linux < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true
end
