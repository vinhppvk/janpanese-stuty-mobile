enum RouterInfo {
  navigationPage,
  loginPage,
  registerPage,
  changeLanguage,
  homePage,
  examplePage;
}

extension RouterInfoX on RouterInfo {
  String get path {
    return switch (this) {
      RouterInfo.navigationPage => '/',
      RouterInfo.loginPage => 'login',
      RouterInfo.registerPage => 'registerPage',
      RouterInfo.changeLanguage => 'changeLanguage',
      RouterInfo.homePage => 'home',
      RouterInfo.examplePage => 'examplePage',
    };
  }

  String get name {
    return switch (this) {
      RouterInfo.navigationPage => 'Navigation Page',
      RouterInfo.loginPage => 'Login Page',
      RouterInfo.registerPage => 'Register Page',
      RouterInfo.changeLanguage => 'Change Language',
      RouterInfo.homePage => 'Home',
      RouterInfo.examplePage => 'Example Page',
    };
  }
}
