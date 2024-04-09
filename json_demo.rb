require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"


# PARSING
serialized_beatles = File.read(filepath)

beatles = JSON.parse(serialized_beatles)

p beatles["title"]

p beatles["beatles"][1]["last_name"]



# STORING
neatles = {
  neatles: [
    {
      first_name: "Stan",
      last_name: "Zalewski",
      instrument: "piano"
    },
    {
      first_name: "Matthes",
      last_name: "Davies",
      instrument: "guitar"
    },
    {
      first_name: "Kimberly",
      last_name: "Tecson",
      instrument: "vocals"
    },
  ]
}

# p JSON.generate(neatles)

File.open(filepath, "wb") do |file|
  file.write(JSON.pretty_generate(neatles))
end
