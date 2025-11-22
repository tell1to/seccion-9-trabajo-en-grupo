import 'package:flutter/material.dart';

const cards = <Map<String,dynamic>>[
  { 'elevation': 0.0, 'label': 'Elevation 0' },
  { 'elevation': 1.0, 'label': 'Elevation 1' },
  { 'elevation': 2.0, 'label': 'Elevation 2' },
  { 'elevation': 3.0, 'label': 'Elevation 3' },
  { 'elevation': 4.0, 'label': 'Elevation 4' },
  { 'elevation': 5.0, 'label': 'Elevation 5' },
];





class CardsScreen extends StatelessWidget {

  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Tarjetas'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          ...cards.map( 
            (card) => _CardType1( elevation: card['elevation'], label: card['label'] ),
          ),

          ...cards.map( 
            (card) => _CardType2( elevation: card['elevation'], label: card['label'] ),
          ),

          ...cards.map( 
            (card) => _CardType3( elevation: card['elevation'], label: card['label'] ),
          ),

          ...cards.map( 
            (card) => _CardType4( elevation: card['elevation'], label: card['label'] ),
          ),
          
          const SizedBox(height: 50 ),
        ],
      ),
    );
  }
}


class _CardType1 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType1({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon( Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text( label ),
            )

          ],
        ),
      ),
    );
  }
}


class _CardType2 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType2({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all( Radius.circular(12) ),
        side: const BorderSide(
          color: Colors.lightBlue,
          width: 2
        )
      ),
      elevation: elevation,
      color: Colors.lightBlue.shade50,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon( Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline'),
            )

          ],
        ),
      ),
    );
  }
}



class _CardType3 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType3({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lime.shade300,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon( Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Filled'),
            )

          ],
        ),
      ),
    );
  }
}



class _CardType4 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType4({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      color: Colors.deepOrange,
      child: Stack(
        children: [

            Image.network(
              'https://areajugones.sport.es/wp-content/uploads/2020/08/subnautica-concept-art-ps4.jpg.webp',
              height: 550,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 350,
                color: Colors.deepOrange.shade300,
                child: const Center(
                child: Icon(Icons.broken_image, size: 50),
                ),
              );
              },
            ),


          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only( bottomLeft: Radius.circular(20) )
              ),
              child: IconButton(
                icon: const Icon( Icons.more_vert_outlined, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),


        ],
      ),
    );
  }
}




