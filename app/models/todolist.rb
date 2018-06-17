class Todolist < ApplicationRecord
  validates_presence_of :name, :due_date, :note

  validate :due_date_cannot_be_in_the_past
  def due_date_cannot_be_in_the_past
    if due_date.present? && due_date < Date.today
      errors.add(:due_date, "can't be in the pest!")
    end
  end
end
