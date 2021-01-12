class Toolbelt < ApplicationRecord
        belongs_to :user 
        belongs_to :skill

        def self.search(search)
                byebug
        
                if search 
                    where(["skill_id LIKE ?","%#{search}%"])
                else
                    all
                end
            end 
end
