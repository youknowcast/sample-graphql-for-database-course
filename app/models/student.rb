# frozen_string_literal: true

class Student < ActiveRecord::Base
  self.table_name = 'student'

  belongs_to :department, foreign_key: :dept_name
  has_many :takes, foreign_key: :id
  # Advisor は一人のみ
  has_one :student_instructor, foreign_key: :s_ID, class_name: 'Advisor'
  has_one :instructor, through: :student_instructor
end
