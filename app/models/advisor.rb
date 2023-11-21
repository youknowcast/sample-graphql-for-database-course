# frozen_string_literal: true

class Advisor < ActiveRecord::Base
  self.table_name = 'advisor'

  belongs_to :student, foreign_key: :s_ID
  belongs_to :instructor, foreign_key: :i_ID, optional: true
end
