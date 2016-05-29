module GimmeWikidata

  ##
  # Models a Claim on Wikidata, which consists of a Property and a value
  #
  # Note that the value can be of any type (example: a number, a date), and is often another Item on Wikidata.
  #
  # For more details, please see: https://www.wikidata.org/wiki/Wikidata:Glossary#Claims_and_statements
  class Claim

    attr_reader :property, :value, :value_type

    def initialize(property = nil, value = nil, value_type = nil)
      @property = property
      @value = value
      @value_type = value_type
    end

  end


end