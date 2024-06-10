require_relative 'stock_picker'

RSpec.describe '#stock_picker' do
  it 'returns the pair of days representing the best day to buy and sell for maximum profit' do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    expect(stock_picker([10, 8, 6, 4, 2])).to eq([0, 0])
    expect(stock_picker([1, 2, 3, 4, 5])).to eq([0, 4])
    expect(stock_picker([5, 4, 3, 2, 1])).to eq([0, 0])
    expect(stock_picker([1, 2, 1, 2, 1])).to eq([0, 1])
  end

  it 'handles edge cases when the lowest day is the last day or the highest day is the first day' do
    expect(stock_picker([5, 4, 3, 2, 1])).to eq([0, 0])
    expect(stock_picker([6, 5, 4, 3, 2, 1])).to eq([0, 0])
    expect(stock_picker([1, 2, 3, 4, 5])).to eq([0, 4])
    expect(stock_picker([2, 1, 3, 4, 5])).to eq([1, 4])
  end
end

