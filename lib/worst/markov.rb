require 'marky_markov'

module Worst
  module Bot
    class Markov

      def initialize()
        @dict = MarkyMarkov::TemporaryDictionary.new
      end

      def add_str_to_dict(str)
        @dict.parse_string str
      end

      def add_file_to_dict(path)
        @dict.parse_file path
      end

      def get_sentence_from_dict(n)
        n = n || 1
        return @dict.generate_n_sentences n
      end

    end
  end
end
