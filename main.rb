def fibs(num)
  result = [0,1]
  until result.length == num do
    result.push(result[-2]+result[-1])
  end
  result
end


def fib_rec(num)
  result = []
  if num  == 1
    return [0]
  elsif num == 2
    return[0,1]
  else
    result = fib_rec(num-1)
    result.push(result[-2] + result[-1])
  end
  result
end



def merge_sort(array)
  return array if array.length < 2

  lefty = merge_sort(array[0...array.length/2])
  righty = merge_sort(array[array.length/2..array.length])

  sort(lefty, righty)
end


def sort(lefty, righty, result = [])
  until lefty.empty? || righty.empty?
    lefty.first <= righty.first ? result.push(lefty.shift) : result.push(righty.shift)
  end
  result + lefty + righty
end

puts merge_sort([2,5,8,9,3,22])