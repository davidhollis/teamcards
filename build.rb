#! /usr/bin/env ruby

require 'squib'

$cards = Squib.csv file: 'cards.csv'
locale = ARGV[0] || 'en_US'
messages = YAML.load_file('messages.yml')[locale]


def by(property, &block)
  $cards[property].map(&block)
end

def by_team(&block); by('Team', &block); end
def by_type(&block); by('Type', &block); end


Squib::Deck.new(
  cards: $cards.nrows,
  width: '63mm',
  height: '88mm',
  layout: 'layout.yml'
) do
  background color: $cards['Team']
  
  text \
    str: by_team { |team| messages['team_names'][team] },
    layout: by_type { |type| "#{type}_name" }
    
  text \
    str: by_type { |type| messages['indicator'][type] },
    layout: 'indicator'
  
  png \
    file: by_type { |type| "#{type}.png" },
    layout: 'icon'
    
  text \
    str: by_type { |type| messages['instructions'][type] },
    layout: 'instructions'
  
  save_pdf file: "teamcards_#{locale}.pdf"
end