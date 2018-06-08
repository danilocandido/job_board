class Job < ApplicationRecord
	has_many :comments

	validates :title, presence: true
	validates :description, presence: true

	scope :most_recent, -> { order("created_at DESC") }
end
