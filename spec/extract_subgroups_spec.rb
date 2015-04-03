require "extract_subgroups"

describe ExtractSubgroups, ".call" do
  specify do
    grid = [
      [1,2,3,1,2,3,1,2,3],
      [4,5,6,4,5,6,4,5,6],
      [7,8,9,7,8,9,7,8,9],
      [1,2,3,1,2,3,1,2,3],
      [4,5,6,4,5,6,4,5,6],
      [7,8,9,7,8,9,7,8,9],
      [1,2,3,1,2,3,1,2,3],
      [4,5,6,4,5,6,4,5,6],
      [7,8,9,7,8,9,7,8,9]
    ]

    result = described_class.call(grid)

    expect(result).to eq([
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9],
      [1, 2, 3, 4, 5, 6, 7, 8, 9]
    ])
  end
end
