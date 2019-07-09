class Relationship < ApplicationRecord
    belongs_to :user
    belogns_to :friend, class_name: "User"

end
