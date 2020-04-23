class BoardCase
  attr_accessor :value

  def initialize
    @value = ' '
  end

  def change_value(case_value)
    @value = case_value

  end
end
