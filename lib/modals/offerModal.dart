class Offer {
  String name;
  String image;

  Offer(
      {required this.name,
        required this.image,
      });

  factory Offer.fromMap({required Map data}) {
    return Offer(
        name: data['name'],
        image: data['image'],
    );
  }
}
