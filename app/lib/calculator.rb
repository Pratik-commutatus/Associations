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
      sorted=array.sort
      len= sorted.length
      if (len%2 == 0)
      return (sorted[(len/2.0)]+sorted[((len-2)/2.0)])/2.0
      else
        0
      end
      sorted[len/2]

    end

    def self.mode(o)
      array= o.split(' ').map(&:to_i)
      hash = Hash.new(0)
  array.each do |i|
    hash[i]+=1
  end
  hash.max_by{|k,v| k}
end


   

   




  end