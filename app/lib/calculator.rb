class Calculator
    def self.sum(a, b)
      a.to_i + b.to_i
    end
  
    def self.subtr(a, b)
      a.to_i - b.to_i
    end

    def self.mult(c)
      array= c.split('*').map(&:to_i)
      array.reject(&:zero?).inject(:*)
       
      
    end


    def self.mean(m)
      array= m.split(' ').map(&:to_i)
      array.inject{ |sum, el| sum + el }.to_f / array.size
    end

    def self.median(n)
      array= n.split(' ').map(&:to_i)
      sorted=array
      len= sorted.length
      (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0

    end

   




  end