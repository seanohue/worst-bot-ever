module Worst
  module Bot

    class Scrambler

      @@scramble_map = {
        "make" => "maek",
        "game" => "gaem",
        "where" => "ware",
        "you" => "u",
        "the" => "teh",
        "about" => "abuot",
        "gamedev" => "gaem maker person"
      }

      def self.scramble(str)
        split_str = str.split(" ")
        scrambled = split_str.map { |word| self.randomly_scramble(word) }
        scrambled.join(" ")
      end

      def self.randomly_scramble(word)
        if self.should_scramble then
          puts "Scrambling!"
          self.attempt_scramble(word)
        end
        return word
      end

      def self.should_scramble
        [true, false].sample
      end

      def self.attempt_scramble(word)
        @@scramble_map.default = word
        return @@scramble_map[word]
      end

    end
  end
end
