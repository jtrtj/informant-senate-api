class PreDatabaseVote
  def initialize(data)
    @data = data
  end

  def number
    data[type_of.to_sym][:number]
  end

  def question
    data[:question]
  end

  def description
    data[:description]
  end

  def type_of
    if data[:bill][:number].nil?
      'nomination'
    else
      'bill'
    end
  end

  private
  attr_reader :data
end