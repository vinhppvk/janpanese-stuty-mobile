enum RouterInfo {
  navigationPage,
  loginPage,
  registerPage,
  notificationListPage,
  notificationDetailPage,
  examplePage;
}

extension RouterInfoX on RouterInfo {
  String get path {
    return switch (this) {
      RouterInfo.navigationPage => '/',
      RouterInfo.loginPage => 'login',
      RouterInfo.registerPage => 'registerPage',
      RouterInfo.examplePage => 'examplePage',
      RouterInfo.notificationListPage => 'notifications',
      RouterInfo.notificationDetailPage => 'notificationDetail',
    };
  }

  String get name {
    return switch (this) {
      RouterInfo.navigationPage => 'Navigation Page',
      RouterInfo.loginPage => 'Login Page',
      RouterInfo.registerPage => 'Register Page',
      RouterInfo.examplePage => 'Example Page',
      RouterInfo.notificationListPage => 'Notifications Page',
      RouterInfo.notificationDetailPage => 'Notification Detail Page',
    };
  }
}
