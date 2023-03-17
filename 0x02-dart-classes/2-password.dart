class Password {
  String password = "";

  bool isValid() {
    bool hasUpperCase = false;
    bool hasLowerCase = false;
    bool hasNumber = false;

    for (int i = 0; i < password.length; i++) {
      if (password[i].toUpperCase() == password[i]) {
        hasUpperCase = true;
      }
      if (password[i].toLowerCase() == password[i]) {
        hasLowerCase = true;
      }
      if (int.tryParse(password[i]) != null) {
        hasNumber = true;
      }
    }

    return password.length >= 8 &&
        password.length <= 16 &&
        hasUpperCase &&
        hasLowerCase &&
        hasNumber;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}
