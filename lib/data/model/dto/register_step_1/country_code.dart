class CountryCode {
  CountryCode({
    required this.name,
    required this.code,
  });

  final String name;
  final String code;

  String get displayText => '$name ($code)';

  static List<CountryCode> get mockData => <CountryCode>[
    CountryCode(name: 'Andorra', code: '+376'),
    CountryCode(name: 'United Arab Emirates', code: '+971'),
    CountryCode(name: 'Afghanistan', code: '+93'),
    CountryCode(name: 'Antigua And Barbuda', code: '+1268'),
    CountryCode(name: 'Anguila', code: '+1264'),
    CountryCode(name: 'Albania', code: '+355'),
    CountryCode(name: 'Viet Nam', code: '+84'),
  ];
}
