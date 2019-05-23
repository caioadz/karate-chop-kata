require "karate_chop_kata/version"

module KarateChopKata
  NOT_FOUND = -1

  class Error < StandardError; end

  def self.binary_search(item, array, min_index = 0, max_index = array.length)
    return NOT_FOUND if halt?(array, min_index, max_index)

    index_of_current_node = (max_index + min_index) / 2
    current_node = array[index_of_current_node]

    return index_of_current_node if current_node == item
    
    return search_left(item, array, min_index, max_index, index_of_current_node) if current_node > item

    search_right(item, array, min_index, max_index, index_of_current_node)
  end

  private

  def self.halt?(array, min_index, max_index)
    array.empty? || 
      max_index > array.length || 
      max_index < min_index ||
      min_index < 0
  end

  def self.search_left(item, array, min_index, max_index, current_index)
    binary_search(item, array, min_index, current_index - 1)
  end

  def self.search_right(item, array, min_index, max_index, current_index)
    binary_search(item, array, current_index + 1, max_index)
  end
end
