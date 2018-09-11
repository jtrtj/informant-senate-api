class Vote < ApplicationRecord
  validates_presence_of :number,
                        :question,
                        :description,
                        :type_of
  enum type_of: [:bill, :nomination]
  has_one :result
end
