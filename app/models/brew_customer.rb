class BrewCustomer < ApplicationRecord
  belongs_to :brew
  belongs_to :customer
end
