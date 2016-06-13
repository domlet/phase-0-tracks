class Santa
    attr_reader :ethnicity
    attr_accessor :age, :gender

    def initialize(gender, ethnicity)
        
        @gender = gender
        @ethnicity = ethnicity

        puts "Initializing Santa instance..."
        @reindeer_ranking = [
                            "Rudolph", "Dasher", 
                            "Dancer", "Prancer", 
                            "Vixen", "Comet",   
                            "Cupid", "Donner", 
                            "Blitzen"
                            ]

        @age = 0

    end

    def speak
        puts 'Ho, ho, ho! Haaaappy holidays!'

    end

    def eat_milk_and_cookies(cookie)
        puts "That was a good #{cookie}!"

    end

    def celebrate_birthday
        @age += 1
    end

    def get_mad_at(reindeer_name)
        puts "Santa got mad at #{reindeer_name}! They know what they did!"
        reindeer_index = @reindeer_ranking.index(reindeer_name)
        @reindeer_ranking.delete_at(reindeer_index)
        @reindeer_ranking.push(reindeer_name)
        p @reindeer_ranking
    end

end

saint_nick = Santa.new("agender", "black")
saint_nick.speak
saint_nick.eat_milk_and_cookies('cookie')

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

p saint_nick.celebrate_birthday

saint_nick.get_mad_at("Vixen")
p saint_nick.age
p saint_nick.gender
p saint_nick.gender = "non gender"
p saint_nick.ethnicity