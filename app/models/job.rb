#Antes herdava de ActiveRecord::Base
class Job < ApplicationRecord
	has_many :comments

	validates :title, presence: true
	validates :description, presence: true
	validates :premium, presence: true

	scope :most_recent, -> { order("created_at DESC") }
end
