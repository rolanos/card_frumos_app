abstract class Validator {
  const Validator();

  bool validate(String str);
}

///Пустой валидатор - всегда вернет true
class EmptyValidator extends Validator {
  const EmptyValidator();

  @override
  bool validate(String str) {
    return true;
  }
}

///Валидатор для имени
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

///Валидатор для даты
class DateValidator extends Validator {
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

///Валидатор для номера телефона
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

///Валидатор для номера почты
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

///Валидатор для номера пола
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
