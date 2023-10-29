///Виды соглашений
enum AgreementsEnum {
  privacy,
  userAgreement,
  bonus,
}

///Класс для работы с соглашениями
class Agreements {
  bool _isPrivacyPolicy;
  bool _isUserAgreement;
  bool _isBonusProgram;

  ///Изменение флажка соглашения
  void tick(AgreementsEnum agr) {
    switch (agr) {
      case AgreementsEnum.privacy:
        _isPrivacyPolicy = !_isPrivacyPolicy;
      case AgreementsEnum.userAgreement:
        _isUserAgreement = !_isUserAgreement;
      case AgreementsEnum.bonus:
        _isBonusProgram = !_isBonusProgram;
    }
  }

  ///Получение значения фалжка соглашения
  bool take(AgreementsEnum agr) {
    switch (agr) {
      case AgreementsEnum.privacy:
        return _isPrivacyPolicy;
      case AgreementsEnum.userAgreement:
        return _isUserAgreement;
      case AgreementsEnum.bonus:
        return _isBonusProgram;
    }
  }

  Agreements({
    bool isPrivacyPolicy = false,
    bool isUserAgreement = false,
    bool isBonusProgram = false,
  })  : _isPrivacyPolicy = isPrivacyPolicy,
        _isUserAgreement = isUserAgreement,
        _isBonusProgram = isBonusProgram;
  bool get isSuccess {
    if (_isPrivacyPolicy && _isUserAgreement && _isBonusProgram) {
      return true;
    } else {
      return false;
    }
  }
}
