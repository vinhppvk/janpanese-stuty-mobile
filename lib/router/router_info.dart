enum RouterInfo {
  navigationPage,
  loginPage,
  registerPage,
  teacherDetailPage,
  examplePage;
}

extension RouterInfoX on RouterInfo {
  String get path {
    return switch (this) {
      RouterInfo.navigationPage => '/',
      RouterInfo.loginPage => 'login',
      RouterInfo.registerPage => 'registerPage',
      RouterInfo.teacherDetailPage => 'teacherDetailPage',
      RouterInfo.examplePage => 'examplePage',
    };
  }

  String get name {
    return switch (this) {
      RouterInfo.navigationPage => 'Navigation Page',
      RouterInfo.loginPage => 'Login Page',
      RouterInfo.registerPage => 'Register Page',
      RouterInfo.teacherDetailPage => 'Teacher Detail Page',
      RouterInfo.examplePage => 'Example Page',
    };
  }
}
