require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'

print("-------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------\n")
enemies = Array.new
puts("Entres le nom de ton joueur:")
human_player = HumanPlayer.new(gets.chomp())
enemies << Player.new("Josiane")
enemies << Player.new("José")
while (human_player.life_points > 0 && (enemies[0].life_points > 0 || enemies[0].life_points > 0))

    human_player.show_state
    print("\nQuelle action veux-tu effectuer ?

    a - chercher une meilleure arme
    s - chercher à se soigner 
    
    attaquer un joueur en vue :
    0 - ")
    enemies[0].show_state
    print("\n    1 - ")
    enemies[1].show_state
    print("\n")
    answer = gets.chomp()
    human_player.search_weapon if answer == 'a'
    human_player.search_health_pack if answer == 's'
    human_player.attack(enemies[answer.to_i]) if answer =~ /[[:digit:]]/ && answer[0].to_i < enemies.length() - 1

    puts("Les autres joueurs t'attaquent !")
    enemies.each do |n| 
        n.attack(human_player) if n.life_points > 0
    gets.chomp()
    end
end
if human_player.life_points > 0
    puts("Bravo tu a gagné !") 
else 
    puts("Tu as perdu !")
end