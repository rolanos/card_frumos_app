import 'package:flutter/services.dart';

abstract class Validator {
  const Validator();

  bool validate(String str);
}

class EmptyValidator extends Validator {
  const EmptyValidator();

  @override
  bool validate(String str) {
    return true;
  }
}

class NameValidator extends Validator {
  @override
  bool validate(String str) {
    if (RegExp(r'^[A-Za-z]+$').hasMatch(str)) {
      return true;
    } else {
      return false;
    }
  }
}

class DataValidator extends Validator {
  @override
  bool validate(String str) {
    if (RegExp(r'^[.0-9]+$').hasMatch(str)) {
      if (str.length <= 10) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}

class PhoneValidator extends Validator {
  @override
  bool validate(String str) {
    if (RegExp(r'^(?:[+])?[0-9]{11}$').hasMatch(str)) {
      return true;
    } else {
      return false;
    }
  }
}

class EmailValidator extends Validator {
  @override
  bool validate(String str) {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$")
        .hasMatch(str)) {
      return true;
    }
    return false;
  }
}

class SexValidator extends Validator {
  @override
  bool validate(String str) {
    if (str.length == 1) {
      String buffer = str.toLowerCase();
      if (buffer == 'f') {
        return true;
      } else {
        if (buffer == 'm') {
          return true;
        }
      }
    }
    return false;
  }
}
