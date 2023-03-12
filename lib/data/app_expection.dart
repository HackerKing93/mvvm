class AppExpection implements Exception {
  final _message;
  final _prefix;
  AppExpection(this._message, this._prefix);

  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataExpection extends AppExpection {
  FetchDataExpection([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestExpection extends AppExpection {
  BadRequestExpection([String? message]) : super(message, 'Invalide request');
}

class UnauthorisedExpection extends AppExpection {
  UnauthorisedExpection([String? message])
      : super(message, 'Unauthorised request');
}

class InvalideInputExpection extends AppExpection {
  InvalideInputExpection([String? message]) : super(message, 'Invalide input');
}
