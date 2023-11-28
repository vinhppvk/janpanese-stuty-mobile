enum RouterInfo {
  navigationPage,
  examplePage,
  registerOptionsPage,
  registerPage;
}

extension RouterInfoX on RouterInfo {
  String get path {
    return switch (this) {
      RouterInfo.navigationPage => '/',
      RouterInfo.examplePage => '/examplePage',
      RouterInfo.registerOptionsPage => '/registerOptionsPage',
      RouterInfo.registerPage => '/registerPage',
    };
  }

  String get name {
    return switch (this) {
      RouterInfo.navigationPage => 'Navigation Page',
      RouterInfo.examplePage => 'Example Page',
      RouterInfo.registerOptionsPage => 'Register Options Page',
      RouterInfo.registerPage => 'Register Page',
    };
  }
}
