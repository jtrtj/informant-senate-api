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

  def self.last_thirty_days
    includes(:articles)
    .where('created_at > ?', 30.days.ago)
    .order(:created_at)
  end

  def self.most_recent
    includes(:articles)
    .order(created_at: :desc)
    .limit(1)
  end
end
