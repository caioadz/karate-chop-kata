module KarateChopKata
  class RecursiveBinarySearchTree
    attr_reader :num_of_hops

    def initialize(array)
      @array = array
      @num_of_hops = 0
    end

    def search(item)
      @num_of_hops = 0
      binary_search(item)
    end

    private

    def binary_search(item, min_index = 0, max_index = @array.length)
      hop

      return -1 if not_found?(min_index, max_index)
      
      index_of_current_node = (max_index + min_index) / 2
      current_node = @array[index_of_current_node]
      
      return index_of_current_node if current_node == item
      
      return binary_search(item, min_index, index_of_current_node - 1) if current_node > item
  
      binary_search(item, index_of_current_node + 1, max_index)
    end
  
    def not_found?(min_index, max_index)
      @array.empty? || 
        max_index > @array.length || 
        max_index < min_index ||
        min_index < 0
    end

    def hop
      @num_of_hops += 1
    end
  end
end