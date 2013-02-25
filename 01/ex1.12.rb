#!env ruby

def calc(r,c)
  if (c == 1 || c == r)
    return 1
  elsif (c > r)
    raise "invalid column number"
  else
    return calc(r - 1, c - 1) + calc(r - 1, c)
  end
end

puts calc(5,3)

