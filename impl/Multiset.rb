class Multiset
  @@hash

  def initialize(n)
    @@hash = Hash.new(0) #default:0
    @@hash[n] = 1
  end

  def contains(n)
    if @@hash[n] > 0
      return true
    else
      return false
    end
  end

  def add(n)
    @@hash[n] += 1
  end

  def remove(n)
    if @@hash[n] == 0
      raise
    else
      @@hash[n] -= 1
    end
  end
end
