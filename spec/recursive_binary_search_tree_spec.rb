require 'karate_chop_kata/recursive_binary_search_tree'

describe ::KarateChopKata::RecursiveBinarySearchTree do
  describe '#search' do
    context 'when searching in an empty tree' do
      it 'should return -1' do
        array = []

        subject = described_class.new(array)
        result = subject.search(0)

        expect(result).to be(-1)
      end
    end

    context 'when searching for a non-existing item' do
      it 'should return -1' do
        array = [1, 2, 3]

        subject = described_class.new(array)
        result = subject.search(0)

        expect(result).to be(-1)
      end
    end

    context 'when searching for an existing item' do
      it 'should return the index of this item in the array' do
        array = [1, 2, 3]

        subject = described_class.new(array)
        result = subject.search(1)

        expect(result).to be(0)
      end
    end

    context 'when searching for an item in the maximum extremity of the tree' do
      it 'the number of hops should be log2(tree length)' do
        array = (0..1_000_000).to_a

        subject = described_class.new(array)
        result = subject.search(1_000_000)

        expect(result).to be(1_000_000)
        expect(subject.num_of_hops).to be(19)
      end
    end

    context 'when searching for an item in the minimum extremity of the tree' do
      it 'the number of hops should be log2(tree length)' do
        array = (0..1_000_000).to_a

        subject = described_class.new(array)
        result = subject.search(0)

        expect(result).to be(0)
        expect(subject.num_of_hops).to be(19)
      end
    end

    context 'when searching for a item in the center of the tree' do
      it 'the number of hops should be 1' do
        array = (0..1_000_000).to_a

        subject = described_class.new(array)
        result = subject.search(1_000_000 / 2)

        expect(result).to be(1_000_000 / 2)
        expect(subject.num_of_hops).to be(1)
      end
    end
  end
end