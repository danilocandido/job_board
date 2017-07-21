class Comment < ApplicationRecord
  belongs_to :job
  
  validates :name, presence: true
  validates :body, presence: true
  validates :job,  presence: true
end
