class Author < ApplicationRecord
    has_many :books, dependent: :destroy
    has_many :images, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :books, reject_if: lambda {|attributes| attributes['bookname'].blank? }
    accepts_nested_attributes_for :images, reject_if: lambda {|attributes| attributes['imagename'].blank? }
   
end
