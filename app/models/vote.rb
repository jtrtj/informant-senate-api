class Vote < ApplicationRecord
  validates_presence_of :number,
                        :question,
                        :description,
                        :type
  enum type: [:bill, :nomination]
  has_one :result
end
