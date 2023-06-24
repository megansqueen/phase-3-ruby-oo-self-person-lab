# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_reader :happiness
    attr_accessor :bank_account
    attr_reader :hygiene

    def initialize(name)
        @name = name
        @happiness = 8
        @bank_account = 25
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness < 0 
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if hygiene < 0 
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end
    end

    def hygiene
        @hygiene
    end

    def happy?
        if @happiness > 7
            true
        elsif @happiness < 8
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        elsif @hygiene < 8
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫" 
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end
end