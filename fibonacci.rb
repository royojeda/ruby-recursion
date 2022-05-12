def fibs(number)
  first = 0
  second = 1
  result = []

  until result.length == number
    result.push case result.length
                when 0
                  first
                when 1
                  second
                else
                  current = first + second
                  first = second
                  second = current
                  current
                end
  end
  result
end

def fibs_rec(number)
  case number
  when 0
    []
  when 1
    fibs_rec(number - 1) + [0]
  when 2
    fibs_rec(number - 1) + [1]
  else
    arr = fibs_rec(number - 1)
    arr.push(arr[-1] + arr[-2])
  end
end

p fibs(8)
p fibs_rec(8)
