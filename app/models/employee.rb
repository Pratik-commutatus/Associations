class Employee < ApplicationRecord
    has_one :account
    accepts_nested_attributes_for :account, reject_if: lambda {|attributes| attributes['bookname'].blank? }
end
