import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coffee {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Coffee(
      {this.shopName,
      this.address,
      this.description,
      this.thumbNail,
      this.locationCoords});
}

final List<Coffee> coffeeShops = [
  Coffee(
      shopName: 'Deliverace Church Int\'l Utawala',
      address: 'Utawala, Nairobi',
      description:
          'The church of choice \nTouching Heaven Changing Earth.',
      locationCoords: LatLng(-1.2839008627498694, 36.96783810853959),
      thumbNail: 'https://scontent.fmba1-1.fna.fbcdn.net/v/t1.0-9/79452358_2379868482265519_7461232532529348608_n.jpg?_nc_cat=102&_nc_sid=110474&_nc_ohc=5eW9i1lt390AX-EP4NH&_nc_ht=scontent.fmba1-1.fna&oh=d9845f92d88805b67f6c98d7fcfd4c36&oe=5ED185FA'
      ),
  Coffee(
      shopName: 'Deliverace Church Int\'l Utawala',
      address: 'Utawala, Nairobi',
      description:
          'The church of choice \nTouching Heaven Changing Earth.',
      locationCoords: LatLng(-1.2839008627498694, 36.96783810853959),
      thumbNail: 'https://scontent.fmba1-1.fna.fbcdn.net/v/t1.0-9/79452358_2379868482265519_7461232532529348608_n.jpg?_nc_cat=102&_nc_sid=110474&_nc_ohc=5eW9i1lt390AX-EP4NH&_nc_ht=scontent.fmba1-1.fna&oh=d9845f92d88805b67f6c98d7fcfd4c36&oe=5ED185FA'
      ),
  Coffee(
      shopName: 'Deliverace Church Int\'l Utawala',
      address: 'Utawala, Nairobi',
      description:
          'The church of choice \nTouching Heaven Changing Earth.',
      locationCoords: LatLng(-1.2839008627498694, 36.96783810853959),
      thumbNail: 'https://scontent.fmba1-1.fna.fbcdn.net/v/t1.0-9/79452358_2379868482265519_7461232532529348608_n.jpg?_nc_cat=102&_nc_sid=110474&_nc_ohc=5eW9i1lt390AX-EP4NH&_nc_ht=scontent.fmba1-1.fna&oh=d9845f92d88805b67f6c98d7fcfd4c36&oe=5ED185FA'
      ),
  Coffee(
      shopName: 'Deliverace Church Int\'l Utawala',
      address: 'Utawala, Nairobi',
      description:
          'The church of choice \nTouching Heaven Changing Earth.',
      locationCoords: LatLng(-1.2839008627498694, 36.96783810853959),
      thumbNail: 'https://scontent.fmba1-1.fna.fbcdn.net/v/t1.0-9/79452358_2379868482265519_7461232532529348608_n.jpg?_nc_cat=102&_nc_sid=110474&_nc_ohc=5eW9i1lt390AX-EP4NH&_nc_ht=scontent.fmba1-1.fna&oh=d9845f92d88805b67f6c98d7fcfd4c36&oe=5ED185FA'
      ),
  Coffee(
      shopName: 'Deliverace Church Int\'l Utawala',
      address: 'Utawala, Nairobi',
      description:
          'The church of choice \nTouching Heaven Changing Earth.',
      locationCoords: LatLng(-1.2839008627498694, 36.96783810853959),
      thumbNail: 'https://scontent.fmba1-1.fna.fbcdn.net/v/t1.0-9/79452358_2379868482265519_7461232532529348608_n.jpg?_nc_cat=102&_nc_sid=110474&_nc_ohc=5eW9i1lt390AX-EP4NH&_nc_ht=scontent.fmba1-1.fna&oh=d9845f92d88805b67f6c98d7fcfd4c36&oe=5ED185FA'
      )
];
