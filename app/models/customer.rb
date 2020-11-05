class Customer < ApplicationRecord
  validates :fullname, presence: true

  validates :phone, numericality: true,
                    length: { minimum: 10, maximum: 15 }

  has_one_attached :image
end
