enum RouterInfo {
  navigationPage,
  loginPage,
  registerPage,
  teacherDetailPage,
  searchTeacherPage,
  examplePage;
}

extension RouterInfoX on RouterInfo {
  String get path {
    return switch (this) {
      RouterInfo.navigationPage => '/',
      RouterInfo.loginPage => 'login',
      RouterInfo.registerPage => 'registerPage',
      RouterInfo.teacherDetailPage => 'teacherDetailPage',
      RouterInfo.searchTeacherPage => 'searchTeacherPage',
      RouterInfo.examplePage => 'examplePage',
    };
  }

  String get name {
    return switch (this) {
      RouterInfo.navigationPage => 'Navigation Page',
      RouterInfo.loginPage => 'Login Page',
      RouterInfo.registerPage => 'Register Page',
      RouterInfo.teacherDetailPage => 'Teacher Detail Page',
      RouterInfo.searchTeacherPage => 'Search Teacher Page',
      RouterInfo.examplePage => 'Example Page',
    };
  }
}
