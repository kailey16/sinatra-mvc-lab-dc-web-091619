require 'pry'
class PigLatinizer

    def piglatinize(string)
        sp_s = string.split(" ")
        if sp_s.length > 1
            sp_s.map {|word| PigLatinizer.functions(word)}.join(" ")
        else PigLatinizer.functions(string)
        end
    end

    def self.functions(string)
        if string.length == 1
            string + "way"
        elsif string[0].match?(/[aeiouAEIOU]/)
            string + "way"
        else
            ss = string.split(/([aeiou].*)/)
            ss[1] + ss[0] + "ay"
        end
    end

end


# one = PigLatinizer.new
# puts one.piglatinize("church")
# puts one.piglatinize("banana")
# puts one.piglatinize("flatiron")
# puts one.piglatinize("noodle soup")
# puts one.piglatinize("big apple noodles")
# puts one.piglatinize("Enumeration")




