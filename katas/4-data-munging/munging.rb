require 'rubygems'
require 'nokogiri'

def munging
  hash = {}
  doc = Nokogiri::HTML.parse(File.open('weather.dat', 'r'))
  doc.xpath("//pre").inner_text.split(/\n/).each do |line|
    if line =~ /^\s+\d+/
      array = line.strip.split(/\s+/)
      diff = array[1].to_i - array[2].to_i
      hash[array.first] = diff
    end
  end
  hash.sort {|a,b| a[1] <=> b[1]}.first.first
end
  
puts munging