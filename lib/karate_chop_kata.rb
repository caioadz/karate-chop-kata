require "karate_chop_kata/version"
require "karate_chop_kata/recursive_binary_search_tree"

module KarateChopKata
  class << self
    def create(array, method)
      RecursiveBinarySearchTree.new(array)
    end
  end  
end
