class School < ApplicationRecord
  has_many :teachers
  has_many :students

  CREDITS_FOR_GRADUATION = 180

  def self.credits_for_standing(class_standing)
    if class_standing.between?(1, 4)
      return CREDITS_FOR_GRADUATION / class_standing # evenly spaced
    end
    return nil # not a valid class standing
  end
end
