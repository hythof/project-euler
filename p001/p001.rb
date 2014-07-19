puts (1..999).select{|e| e%3 == 0 || e%5 == 0}.inject(:+)
