import '../models/user.dart';

class UserController {
  UserController._();

  static final UserController _controller = UserController._();

  factory UserController() {
    return _controller;
  }

  static final List<User> users = [
    User(
      firstName: "Musoxon",
      lastName: "Pazliddinov",
      email: "m@gmail.com",
      number: "+998 99 525 42 43",
      password: "m",
    ),
  ];

  var signedUser = users[0];

  void signUp({required User user}) {
    users.add(user);
  }

  bool emailPasswordMatches(String email, String password) {
    if (users.any((user) => user.email == email && user.password == password)) {
      signedUser = users.firstWhere(
          (user) => user.email == email && user.password == password);
    }
    return users
        .any((user) => user.email == email && user.password == password);
  }

  bool checkForEmailExistence(String email) {
    return users.any((element) => element.email == email);
  }

  bool checkForNumberExistence(String number) {
    return users.any((user) =>
        user.number.replaceAll(' ', '') == number.replaceAll(' ', ''));
  }
}
