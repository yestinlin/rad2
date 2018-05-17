class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :submit
  validates :body, presence: true
end
