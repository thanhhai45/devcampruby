class Skill < ApplicationRecord
    includes Placeholder
    validates_presence_of :title

    def set_defaults
        self.badge ||= Placeholder.image_generator(height: '250', weight: '250')

    end
end
