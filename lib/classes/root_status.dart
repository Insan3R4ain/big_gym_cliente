enum RootStatus {
  /// [Loading] When app is opening or changing status of root.
  Loading,

  /// [Unauthenticated] When user is unauthenticated.
  Unauthenticated,

  /// [Authenticated] When user is authenticated.
  Authenticated,

  /// [Skip] When app is opening and user skip authentication.
  Skip,

  /// [Skip] When app is opening and user signined.
  Signined,
}
