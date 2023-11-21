# frozen_string_literal: true

class Take < ActiveRecord::Base
  self.primary_key = %i[ID course_id sec_id semester year]

  belongs_to :student, foreign_key: :ID
  belongs_to :section, query_constraints: %i[course_id sec_id semester year]
  belongs_to :course
end
