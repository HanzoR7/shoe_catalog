class Shoe {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Shoe(
      {required this.name,
      required this.description,
      required this.price,
      required this.imageUrl});
}

List<Shoe> shoes = [
  Shoe(
      name: 'Nike Air Max 270',
      description:
          'Nike Air Max 270 — первые сникеры, разработанные специально для городских приключений. ',
      price: 12990.0,
      imageUrl: 'assets/nike_air_max.jpg'),
  Shoe(
      name: 'Adidas Ultraboost 21',
      description:
          'Беговые кроссовки Adidas Ultraboost 21 - технологичная модель, которую по достоинству оценят профессиональные спортсмены. Система Linear Energy Push, интегрированная в подошву, повышает устойчивость передней и средней части стопы для большей амортизации, чем когда-либо прежде.',
      price: 15990.0,
      imageUrl: 'assets/adidas_ultraboost.jpg'),
  Shoe(
      name: 'Puma Suede',
      description:
          'Suede — классическая модель от бренда PUMA, впервые выпущенная в 1968 году. Кроссовки с прямым силуэтом из замши и резиновой подмёткой стали популярными среди брейкдансеров, баскетболистов, скейтбордистов и других субкультур благодаря износостойким материалам и универсальному дизайну.',
      price: 8990.0,
      imageUrl: 'assets/puma_suede.jpg'),
];
