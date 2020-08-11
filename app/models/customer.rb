class Customer < ApplicationRecord
    has_many :brew_customers, dependent: :destroy
    has_many :brews, through: :brew_customers


    validates :name, {presence: true, uniqueness: true}
end
