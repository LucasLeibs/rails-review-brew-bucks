class Brew < ApplicationRecord
    has_many :brew_customers, dependent: :destroy
    has_many :customers, through: :brew_customers

    validates :blend_name, uniqueness: true
end
