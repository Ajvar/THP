require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)


json = File.read("db/input.json")
obj = JSON.parse(json)
File.open("./db/output.json", 'w') {|f| f << obj.to_json}
session = GoogleDrive::Session.from_config("db/config.json")
ws = session.spreadsheet_by_key("1p1ARavPBbNCTyvJyJNjj9XjG-ydNgbmUJWuPx25gRj4").worksheets[0]
(1..ws.num_rows).each do |row|
    (1..ws.num_cols).each do |col|
      p ws[row, col]
    end
  end
ws[3, 3] = "lol"
ws.save
