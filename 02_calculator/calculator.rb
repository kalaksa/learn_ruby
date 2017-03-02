#write your code here
def add(a,b)
  a + b
end
def subtract(a,b)
  a - b
end

def sum(arr)
  total = 0
  i = 0
  while i < arr.length do
    total += arr[i]
    i += 1
  end
  return total
end

def sum(arr)
  sum = 0
  arr.each do |x|
    sum += x
  end
    sum
end

def multiply(a,b)
  a * b
end

def power(a,b)
  a ** b
end

def factorial2(a)
  if a == 0
    return 1
  else
    return a * factorial2(a-1)
  end
end


def factorial(num)
  if num == 0
    return 1
  else
    value = num
    while num > 1
      value *= (num-1)
      num -= 1
    end
  end
  value
end
