class Account < ApplicationRecord
    belongs_to :employee
    validates :number, presence: true
end
