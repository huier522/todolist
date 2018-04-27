class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validate :due_date_cannot_be_in_the_past
  
  def due_date_cannot_be_in_the_past
    if due_date.present? && due_date < Date.today
      errors.add(:due_date, "Can't be in the pest!")
    end
  end
end
