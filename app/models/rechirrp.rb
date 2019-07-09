class Rechirrp < ApplicationRecord
    belongs_to :rechirrper, class_name: "User"
    belongs_to :source_chirrp, class_name: "Chirrp"
    
end
