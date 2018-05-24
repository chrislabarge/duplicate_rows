require 'rubyXL'
require 'optparse'

options = {}

OptionParser.new do |parser|
  parser.on("-l", "--limit LIMIT", "Number of Rows to limit appendage") do |num|
    options[:num] = num.to_i
  end
end.parse!

workbook = RubyXL::Parser.parse(ARGV[0])
options[:num] ||= -1
all_rows = workbook[0].sheet_data.rows
row_count = all_rows.count
rows = all_rows[0..(options[:num])]

rows.each_with_index do |row, index|
  next if index == 0 || row.nil?

  data = row.cells.map do |cell|
    cell ? cell.value.to_s : cell.to_s
  end

  row_count = row_count += 1

  data.each_with_index do |value, i|
    workbook[0].add_cell(row_count, i, value)
  end
end

workbook.write(ARGV[1])

