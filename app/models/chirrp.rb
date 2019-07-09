class Chirrp < ApplicationRecord
    belongs_to :user
    belongs_to :parent, class_name: "Chirrp"
    has_many :replies, class_name: "Chirrp", foreign_key: "parent_id"
    has_many :squawks
    has_many :rechirrps, foreign_key: "source_chirrp_id"

    
end
