require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

url = "https://openlibrary.org/search?q=harry+potter&mode=everything"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML.parse(html_file)


# title
html_doc.search(".booktitle .results").each do |element|
  p element.text.strip
end

# url in the href attribute
html_doc.search(".resultTitle").each do |element|
  # p element.text.strip
  p element.search(".booktitle .results").attribute("href").value
end

# <div class="resultTitle">
#   <a href="www.">link</a>
# </div>
