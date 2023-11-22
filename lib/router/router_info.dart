enum RouterInfo {
  navigationPage,
  examplePage;
}

extension RouterInfoX on RouterInfo {
  String get path {
    return switch (this) {
      RouterInfo.navigationPage => '/',
      RouterInfo.examplePage => '/examplePage',
    };
  }

  String get name {
    return switch (this) {
      RouterInfo.navigationPage => 'Navigation Page',
      RouterInfo.examplePage => 'Example Page',
    };
  }
}
