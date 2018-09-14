class Vote < ApplicationRecord
  validates_presence_of :number,
                        :question,
                        :description,
                        :type_of,
                        :result,
                        :democrat_yes,
                        :democrat_no,
                        :democrat_not_voting,
                        :republican_yes,
                        :republican_no,
                        :republican_not_voting,
                        :independent_yes,
                        :independent_no,
                        :independent_not_voting,
                        :total_yes,
                        :total_no,
                        :total_not_voting

  enum type_of: [:bill, :nomination]

  has_many :articles
end
