class Recipe < ApplicationRecord
  belongs_to :user
  has_many :foods, through: :recipe_foods
  has_many :recipe_foods, dependent: :destroy
  
  validates :name, presence: true
  validates :description, presence: true

  def editing_times?
    preparation_time.nil? && cooking_time.nil?
  end
end
