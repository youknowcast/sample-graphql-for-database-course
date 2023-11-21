# frozen_string_literal: true

class Instructor < ActiveRecord::Base
  self.table_name = 'instructor'

  belongs_to :department, foreign_key: :dept_name
  has_many :instructor_students, foreign_key: :i_ID, class_name: 'Advisor'
  has_many :students, through: :instructor_students
  has_many :teaches, foreign_key: :ID
end
