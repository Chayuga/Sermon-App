import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/don\'t-touch-surfaces.png',
    title: 'Eyes, Nose, Mouth',
    description: 'Hands touch many surfaces and can pick up viruses. Avoid touching your eyes, nose or mouth. The virus can enter your body and can make you sick.',
  ),
  Slide(
    imageUrl: 'assets/images/wash-your-hands.png',
    title: 'Wash Your Hands.',
    description: 'Wash them often, with water and lots of soap. Wash at least 20 seconds.',
  ),
  Slide(
    imageUrl: 'assets/images/sneezing.png',
    title: 'Sneezing / Coughing \n Etiquette.',
    description: 'Cover your mouth when you cough or sneeze, with a tissue or the inside of your elbow.',
  ),
  Slide(
    imageUrl: 'assets/images/see-a-doctor.png',
    title: 'If You\'re Sick',
    description: 'If you have a flu-like illness, inform the people around you. If your illness isn\'t mild, seek medical care',
  ),
];
