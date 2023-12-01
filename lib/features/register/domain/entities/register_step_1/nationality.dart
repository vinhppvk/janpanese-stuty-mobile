class Nationality {
  Nationality({required this.name});

  final String name;

  static List<Nationality> get mockData => <Nationality>[
        Nationality(name: 'Andorra'),
        Nationality(name: 'United Arab Emirates'),
        Nationality(name: 'Afghanistan'),
        Nationality(name: 'Antigua And Barbuda'),
        Nationality(name: 'Anguila'),
        Nationality(name: 'Albania'),
        Nationality(name: 'Viet Nam'),
      ];
}
