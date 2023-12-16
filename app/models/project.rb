class Project < ApplicationRecord
def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "developer", "id", "id_value", "name", "updated_at"]
 end
end
