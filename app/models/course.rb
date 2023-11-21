# frozen_string_literal: true

class Course < ActiveRecord::Base
  self.table_name = 'course'
  self.primary_key = :course_id

  belongs_to :department, foreign_key: :dept_name

  has_many :sections
end
