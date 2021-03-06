class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: { case_sensitive: false }
  validates :title, uniqueness: { case_sensitive: false }

  def to_s
    self.first_name + " " + self.last_name
  end
end
