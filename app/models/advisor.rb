# frozen_string_literal: true

class Advisor < ActiveRecord::Base
  self.table_name = 'advisor'

  belongs_to :student, foreign_key: :s_id
  belongs_to :instructor, foreign_key: :i_id, optional: true
end
