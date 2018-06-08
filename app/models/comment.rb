class Comment < ApplicationRecord
  belongs_to :job, touch: true
  
  validates :name, presence: true
  validates :body, presence: true
  validates :job,  presence: true
end
