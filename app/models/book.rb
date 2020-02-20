class Book < ApplicationRecord
    belongs_to :author
    has_many :images, as: :imageable
    accepts_nested_attributes_for :images, reject_if: ->(attributes){ attributes['imagename'].blank? }, allow_destroy: true
end
