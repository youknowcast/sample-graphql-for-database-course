# frozen_string_literal: true

class Classroom < ActiveRecord::Base
  self.table_name = 'classroom'
  self.primary_key = %i[building room_number]

  validates :capacity, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 9_999 }
end
