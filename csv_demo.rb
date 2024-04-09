require "csv" # csv library

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# Parsing
CSV.foreach(filepath, headers: :first_row) do |row|
  # puts "#{row[0]} #{row[1]} plays the #{row[2]}"
  p row["First Name"]
end



# Storing
new_filepath = "data/new_beatles.csv"

CSV.open(new_filepath, "wb") do |csv|
  csv << ["First Name","Last Name","Instrument"]
  csv << ["Stan", "Zalewski","Piano"]
  csv << ["Matthew", "Davies","Guitar"]
  csv << ["Kimberly", "Tecson","Vocals"]
end

# [[...][...]]