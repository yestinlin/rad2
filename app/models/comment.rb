class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :submit
  
  validates :body,  presence: true, length: { minimum:3, maximum: 1000 }
end
