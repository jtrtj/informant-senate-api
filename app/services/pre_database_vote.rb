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

  def result
    data[:result]
  end

  def democrat_yes
    data[:democratic][:yes]
  end

  def democrat_no
    data[:democratic][:no]
  end

  def democrat_not_voting
    data[:democratic][:not_voting]
  end

  def republican_yes
    data[:republican][:yes]
  end

  def republican_no
    data[:republican][:no]
  end

  def republican_not_voting
    data[:republican][:not_voting]
  end

  def independent_yes
    data[:independent][:yes]
  end

  def independent_no
    data[:independent][:no]
  end

  def independent_not_voting
    data[:independent][:not_voting]
  end

  def total_yes
    data[:total][:yes]
  end

  def total_no
    data[:total][:no]
  end

  def total_not_voting
    data[:total][:not_voting]
  end
  
  private
  attr_reader :data
end