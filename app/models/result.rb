class Result < ApplicationRecord
  validates_presence_of :vote_id,
                        :result
  belongs_to :vote
end
