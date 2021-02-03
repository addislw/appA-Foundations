# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  
  def span
    return nil if self.empty?
    self.max - self.min
  end

  def average
    return nil if self.empty?
    self.sum / self.length.to_f
  end

  def median
    return nil if self.empty?
    length = self.length
    if length.odd?
      self.sort!
      return self[length / 2]
    else
      self.sort!
      sum = self[length / 2] + self[(length / 2) - 1]
      sum / 2.0
    end
  end

end
