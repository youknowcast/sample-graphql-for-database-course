# frozen_string_literal: true

class Department < ActiveRecord::Base
  self.table_name = 'department'

  has_many :students, foreign_key: :dept_name
  has_many :courses, foreign_key: :dept_name
end
