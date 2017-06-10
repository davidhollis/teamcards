# TeamCards

TeamCards is a small collection fo cards that can be used in any game to divide players randomly up into teams. It has support for up to 4 teams, optionally with secret members.


## Usage Examples

A few examples of using TeamCards:


### Simple Teams
Use only the public (non-Hidden) cards.

For example, in an 8-player game of _Codenames_, shuffle together 4 **Red Team** cards and 4 **Blue Team** cards, then deal them out to divide players.


### Secret Partners

Use a combination of public and Hidden cards to divide up players but leave some room for some players to bluff their true goals.

For example, in a 5-player game of _Magic: The Gathering_, shuffle together

  - a **Red Team** card,
  - a **Red Team Hidden** card,
  - a **Blue Team** card,
  - a **Blue Team Hidden** card, and
  - a **Green Team Hidden** card.

Deal them out, then have the non-Hidden players reveal their cards. A team wins when the only players remaining in the game are all on the same team.


### Secret Traitors

Deal out a set of public cards as with Simple Teams, then deal out a set of Hidden cards.

For example: in a 6-player game of _Star Realms_, assign players evenly to two teams using 3 **Red Team** cards and 3 **Blue Team** cards. Then shuffle up 3 **Red Team Hidden** cards and a **Blue Team Hidden** card and deal three of them to the red team, discarding the remaining one face down. Do the same with the complementary cards for the blue team. Players belong to the team whose hidden card they hold. A team wins when all of the remaining players have the same public card or if the only remaining player with a diferent public card is a traitor. If only traitors remain, no team wins.


## Building the PDF

Ensure that you have ruby 2.3.0 and bundler installed. Then clone the repository and run the following from the repository root:

```
bundle install
bundle exec ./build.rb
```

The PDF is generated in the `_output` directory.


### Customizing the Cards

The layout for the cards is defined in `layout.yml`, the colors are defined in `config.yml`, and the text is defined in `messages.yml`. The cards themselves are enumerated in `cards.csv`.

See the [Squib documentation][squib] for details on the layout and the build script.

[squib]: http://squib.readthedocs.io/en/v0.13/index.html


## Acknowledgements

The hidden card icon is based on [Lorc][lorc]'s cultist icon on [game-icons.net][gameicons].

The typeface is [Julieta Ulanovsky][julietaula]'s [Montserrat][montserrat].

[lorc]: http://lorcblog.blogspot.com
[gameicons]: http://game-icons.net/lorc/originals/cultist.html
[julietaula]: https://twitter.com/julietulanovsky
[montserrat]: http://montserrat.zkysky.com.ar/en


## Contributing

If you'd like to suggest improvements or additions to TeamCards, feel free to open an issue or a pull request against this repository.

In particular, at present the cards can only be generated in US English, and I'd welcome translations! The build script is set up to support multiple locales in `messages.yml`.

Contributions are subject to this project's [Code of Conduct](CODE_OF_CONDUCT.md).


## License

This project is &copy; David Hollis. It is made available under a [BSD License](LICENSE).

The PDF output is available under a [CC-BY-SA 4.0 license][ccbysa4].

[ccbysa4]: https://creativecommons.org/licenses/by-sa/4.0/