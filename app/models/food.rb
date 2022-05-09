class Food < ApplicationRecord
    validates :name, {presence: true}
    validates :fleshness, {presence: true}
    validates :module_id, {presence: true, uniqueness: true}
end
