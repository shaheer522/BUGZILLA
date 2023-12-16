class Bug < ApplicationRecord
def self.ransackable_attributes(auth_object = nil)
    ["created_at", "deadline", "details", "developer", "id", "id_value", "status", "title", "updated_at"]
 end
end
