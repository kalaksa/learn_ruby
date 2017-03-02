# iterative way
# def factorial(num)
#   if num == 0
#     return 1
#   else
#     value = num
#     while num > 1
#       value *= (num-1)
#       num -= 1
#     end
#   end
#   value
# end


#recursive way
def factorial(num)
  if num == 0
    return 1
  else
    num * factorial(num-1)
  end
end


puts factorial(4)
puts factorial(10)
