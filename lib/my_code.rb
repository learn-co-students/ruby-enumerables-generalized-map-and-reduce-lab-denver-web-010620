# Your Code Here
def map (source_array)
  i = 0
  freshArray = []
  while i < source_array.length do
    freshArray [i] = yield(source_array[i])
    i += 1
  end
  freshArray
end

def reduce (source_array, starting_point = nil)
  i = 0
  if starting_point
      memo = starting_point
      while i < source_array.length do
        memo = yield(memo, source_array[i])
        i += 1
      end
  else
      starting_point = source_array[0]
      i += 1
      memo = starting_point
      while i < source_array.length do
        memo = yield(memo, source_array[i])
        i += 1
      end
  end
  memo
end
