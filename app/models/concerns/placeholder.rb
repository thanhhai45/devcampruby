module Placeholder
    extend ActiveSupport::Concern

    def self.image_generator(height:, weight:)
        "http://via.placeholder.com/#{height}x#{weight}"
    end
end