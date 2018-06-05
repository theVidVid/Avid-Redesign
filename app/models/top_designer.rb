class TopDesigner < ApplicationRecord
    def self.search(search)
        where("first_name ILIKE ? OR last_name ILIKE ? OR company_name ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end
end
