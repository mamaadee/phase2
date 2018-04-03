class Camp < ApplicationRecord
    has_one :location, :curriculum
    belongs_to :curriculum
    belongs_to :location
end
