import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);
  
  static List<Location> fetchAll() {
    return [
      Location(1, 'Kiyomizu-dera', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
        LocationFact('Architectural Style', 'Japanese Buddhist architecture.'),
      ]),
      Location(2, 'Mount Fuji', 'assets/images/fuji.jpg', [
        LocationFact('Summary',
            'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
        LocationFact('Did You Know',
            'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
      ]),
      Location(3, 'Arashiyama Bamboo Grove', 'assets/images/arashiyama.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(4, 'Uluru', 'assets/images/uluru.jpg', [
        LocationFact('Summary',
        'This sacred place is incredibly important to the indigenous people of Australia'),
      ])
    ];
  }

  static Location fetchByID(int locationID) {
  // fetch all locations, iterate
  // find the id we want, return immediately
  List<Location> locs = Location.fetchAll();
  for (var i = 0; i < locs.length; i++) {
    if (locs[i].id == locationID) {
      return locs[i];
    }
  }
  return null;
  }
}