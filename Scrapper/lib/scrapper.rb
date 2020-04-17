require 'nokogiri'
require 'rubygems'
require 'open-uri'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
names = page.xpath('/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div').map(&:text)
prices = page.xpath('/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a').map(&:text)
h = Hash[names.zip(prices)]

=begin
 noms_villes = []
mails = []
page = Nokogiri::HTML(open("https://annuaire-des-mairies.com"))
departements = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr/td/a").map{|link| link['href']}
departements.each do |dept|
    page = Nokogiri::HTML(open("https://annuaire-des-mairies.com/#{dept}"))
    villes = page.xpath("/html/body/div/main/section[3]/div/table/tbody/tr/td[3]/a").map{|link| link['href']}
    villes.each do |n|
        noms_villes << page.xpath('/html/body/div/main/section[4]/div/table/tbody/tr[5]/td[2]').text
        mails << page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
    end
end
=end

liste_coord = []

page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
deputes = page.xpath("//*[@id='deputes-list']/div/ul/li/a").map {|link| link['href']}.each do |n|
    page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/#{n}"))
    liste_coord << {"first_name" => (page.xpath("//*[@id='haut-contenu-page']/article/div[2]/h1")).text.split(" ")[1],
    "last_name" => page.xpath("//*[@id='haut-contenu-page']/article/div[2]/h1").text.split(" ").slice(2..-1).join(" "),
    "mail" => page.xpath("//*[@id='haut-contenu-page']/article/div[3]/div/dl/dd[4]/ul/li[2]/a").text}
end


puts(liste_coord)