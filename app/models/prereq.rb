# frozen_string_literal: true

class Prereq < ActiveRecord::Base
  self.table_name = 'prereq'
  self.primary_key = %i[course_id prereq_id]

  belongs_to :course, foreign_key: :course_id
  belongs_to :prereq, foreign_key: :prereq_id, class_name: 'Course'
end
