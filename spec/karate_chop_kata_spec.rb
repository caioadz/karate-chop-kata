require 'karate_chop_kata'

describe KarateChopKata do
  it 'should pass' do
    expect(search(0, [])).to be(-1)
    expect(search(0, [1])).to be(-1)
    expect(search(0, [1, 2, 3])).to be(-1)

    expect(search(0, [0])).to be(0)
    expect(search(0, [0, 1, 2])).to be(0)
    expect(search(0, [0, 1, 2, 3])).to be(0)

    expect(search(0, [1, 0])).to be(1)
    expect(search(0, [1, 0, 2])).to be(1)
    expect(search(1, [0, 1, 2, 3])).to be(1)

    expect(search(2, [1, 0, 2])).to be(2)
    expect(search(3, [1, 2, 3, 4])).to be(2)
    expect(search(2, [0, 1, 2, 3])).to be(2)
  end

  def search(item, array)
    described_class.binary_search(item, array)
  end
end