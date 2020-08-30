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
      size: 'Mediano',
      description: 'Mirror es el Skate perfecto para principiantes : Resistente , ligero y a un precio espectacular!'
    ),
    Skate(
        imageUrl: 'assets/images/skate1',
        name: 'Budha',
        category: 'Edición Limitada',
        price: 130 ,
        size: 'Mediano',
        description: 'Siente la paz mientras patinas con esta edición limitada , serás el mejor patinando del Tíbet!'
    ),
    Skate(
        imageUrl: 'assets/images/skate2',
        name: 'Panda',
        category: 'Nueva Temporada',
        price: 240 ,
        size: 'Grande',
        description: 'Desata la furia con el Panda! La mejor tabla directa de Canada!'
    ),

  ];