class Vote < ApplicationRecord
  validates_presence_of :number,
                        :question,
                        :description,
                        :type

  has_one :result
end
