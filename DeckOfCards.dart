void main() {
  var deck = new DeckofCards();
  deck.printCards();
  deck.shuffle();
  print(deck.cardsWithSuit('Spades'));
}

class Card {
  String? suit;
  String? rank;

  Card({this.rank, this.suit});

  String toString() {
    return '\n$rank of $suit';
  }
}

class DeckofCards {
  List<Card> Cards = [];

  DeckofCards() {
    var ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King'
    ];

    var suits = ['Spades', 'Hearts', 'Diamonds', 'Clubs'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank: rank, suit: suit);
        Cards.add(card);
      }
    }
  }

  String toString() {
    return Cards.toString();
  }

  void printCards() {
    print(Cards);
  }

  void shuffle() {
    Cards.shuffle();
  }

  List<Card> cardsWithSuit(String suit) {
    return Cards.where((card) => card.suit == suit).toList();
  }
}
