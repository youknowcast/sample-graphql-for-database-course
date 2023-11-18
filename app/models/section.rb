class Section < ActiveRecord::Base
  self.table_name = 'section'
  self.primary_key = %i[course_id sec_id semester year]

  belongs_to :course, foreign_key: :course_id
  belongs_to :classroom, query_constraints: %i[building room_number]

  # Section -> TimeSlot でうまく has_many がつながらないため，別個に取得する
  def time_slots
    TimeSlot.where(time_slot_id:)
  end
end