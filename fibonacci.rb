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

p fibs(gets.chomp.to_i)
