class Submit < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    default_scope -> { order(created_at: :desc) }
    
  validates :title,  presence: true, length: { minimum:10, maximum: 200 },
                    uniqueness: { case_sensitive: false }
                    
                    
   validates :url, presence: true
validates :url, format: { with: URI.regexp }, if: 'url.present?'
end
