class Skate {
  final String imageUrl;
  final String name;
  final String category;
  final int price;
  final String size;
  final String description;

  Skate(
      {this.imageUrl, this.name, this.category, this.price, this.size, this.description});

}

  //Lista de los skates disponibles
   final List<Skate> skates = [
    Skate(
      imageUrl: 'assets/images/skate0',
      name: 'Mirror',
      category: 'Top',
      price: 85 ,
      size: 'Medium',
      description: 'Mirror es el Skate perfecto para principiantes : Resistente , ligero y a un precio espectacular!'
    ),
    Skate(
        imageUrl: 'assets/images/skate2',
        name: 'Budha',
        category: 'Edición Limitada',
        price: 130 ,
        size: 'Medium',
        description: 'Siente la paz mientras patinas con esta edición limitada , serás el mejor patinando del Tíbet!'
    ),
    Skate(
        imageUrl: 'assets/images/skate3',
        name: 'Panda',
        category: 'Nueva Temporada',
        price: 240 ,
        size: 'Large',
        description: 'Desata la furia con el Panda! La mejor tabla directa de Canada!'
    ),

  ];