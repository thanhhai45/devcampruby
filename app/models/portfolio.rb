class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :subtitle, :main_image, :thumb_image
end
