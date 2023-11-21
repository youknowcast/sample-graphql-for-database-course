# frozen_string_literal: true

class TimeSlot < ActiveRecord::Base
  self.table_name = 'time_slot'
  self.primary_key = %i[time_slot_id day start_hr start_min]

  validates :start_hr, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 24 }
  validates :end_hr, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 24 }
  validates :start_min, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 60 }
  validates :end_min, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 60 }
  # sample data を見る限り，木曜 (Thu'r'sday) は `R`
  validates :day, inclusion: { in: %w[M T W R F S U], message: 'invalid weekday: %<value>s' }
end
