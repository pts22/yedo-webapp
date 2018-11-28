class Choice < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :subcategory
end
