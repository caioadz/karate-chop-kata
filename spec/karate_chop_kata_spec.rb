require 'karate_chop_kata'
require 'karate_chop_kata/recursive_binary_search_tree'

describe KarateChopKata do
  describe '.create' do
    context 'when creating a recursive Binary Search Tree' do
      it 'should return a object of the type RecursiveBinarySearchTree' do
        subject = described_class.create([], :recursive)

        expect(subject).to be_instance_of(
          ::KarateChopKata::RecursiveBinarySearchTree
        )
      end
    end
  end
end