class Plop < ActiveRecord::Base
    belongs_to :customer
    scope :trending, lambda { |limit| order("created_at DESC").limit(limit) }
end
