class Plop < ActiveRecord::Base
    belongs_to :customer
    scope :trending, lambda { |limit| order("heart_count DESC").limit(limit) }
    scope :latest, lambda { |limit| order("created_at DESC").limit(limit) }
end
