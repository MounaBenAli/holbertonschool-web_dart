class Password {
  String _password = "";

  Password({required String password}) : _password = password;
  
  String get password => _password;
  set password(String value) => _password = value;

  bool isValid() {
    bool hasUpperCase = false;
    bool hasLowerCase = false;
    bool hasNumber = false;

    for (int i = 0; i < _password.length; i++) {
      if (_password[i].toUpperCase() == _password[i]) {
        hasUpperCase = true;
      }
      if (_password[i].toLowerCase() == _password[i]) {
        hasLowerCase = true;
      }
      if (int.tryParse(_password[i]) != null) {
        hasNumber = true;
      }
    }

    return _password.length >= 8 &&
        _password.length <= 16 &&
        hasUpperCase &&
        hasLowerCase &&
        hasNumber;
  }

  @override
  String toString() {
    return "Password $_password";
  }
}
