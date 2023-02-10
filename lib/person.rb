# your code goes here
class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        @happiness = [[0, value].max, 10].min
    end

    def hygiene=(value)
        @hygiene = [[0, value].max, 10].min
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

end