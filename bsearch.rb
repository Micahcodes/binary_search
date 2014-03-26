require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
    # If the array is empty return a result
    # Otherwise call your helper _bsearch method

    if array == []
      return false
    elsif array.length == 1 && array[0] == element
      return true
    elsif array.length == 1 && array[0] != element
      return false
    end

    self._bsearch(array, element, 0, array.length - 1)

  end

  def self._bsearch(array, element, start_index, end_index)
    # If the indexs are the same, search it and return
    if start_index == end_index
      return element == array[start_index]
    end

    # Otherwise, find the midpoint
    midpoint = start_index + (end_index - start_index) / 2

    # If the element is greater than the one at midpoint, call
    #   _bsearch on the right half of the remaining array
    # Otherwise, call _bsearch on left half of the remaining array


    if element == array[midpoint]
      return true
    elsif element > array[midpoint]
      self._bsearch(array, element, midpoint+1, end_index)
    else
      self._bsearch(array, element, start_index, midpoint)
    end
  end
end
