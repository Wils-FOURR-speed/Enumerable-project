module MyEnumerable
  def all?(&block)
    each { |elements| return false unless block.call(elements) }
    true
  end

  def any?(&block)
    each { |elements| return true if block.call(elements) }
    false
  end

  def filter?(&block)
    outputs = []
    each { |elements| outputs << element if block.call(elements) }
    outputs
  end
end
