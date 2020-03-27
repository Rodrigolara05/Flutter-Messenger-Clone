class UserModel {
  final String name;
  final String lastName;

  final String avatarUrl;

  UserModel({this.name,this.lastName, this.avatarUrl});
}

List<UserModel> listUsers = [
  new UserModel(
      name: "Rodrigo",
      lastName: "Lara",
      avatarUrl:
      "https://media-exp1.licdn.com/dms/image/C4E03AQFmcFwqwvJNMA/profile-displayphoto-shrink_200_200/0?e=1586995200&v=beta&t=4cwKRH-KwJGyOVUtu82PjVt9ss35d643fH-T7VFhxLQ"),
  new UserModel(
      name: "Codigo",
      lastName: "Fuente",
      avatarUrl:
      "https://yt3.ggpht.com/a-/AOh14Ggu5Wml45UPksoMVJq2rqctYSp_bLbg3U1zYmoO5g=s288-c-k-c0xffffffff-no-rj-mo"),
  new UserModel(
      name: "Bill",
      lastName: "Gates",
      avatarUrl:
      "https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X_400x400.jpg"),
  new UserModel(
      name: "Steve",
      lastName: "Jobs",
      avatarUrl:
      "https://upload.wikimedia.org/wikipedia/commons/d/dc/Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg"),
  new UserModel(
      name: "Elon",
      lastName: "Musk",
      avatarUrl:
      "https://i.insider.com/5df18925fd9db27e786eac82?width=1100&format=jpeg&auto=webp"),
  new UserModel(
      name: "Mark",
      lastName: "Zuckerberg",
      avatarUrl:
      "https://tentulogo.com/wp-content/uploads/Mark-Zuckerberg.jpg"),
  new UserModel(
      name: "Max",
      lastName: "Lara",
      avatarUrl:
      "https://avatars2.githubusercontent.com/u/42646296?s=460&u=200d8e83c7ab0a9fcbda26fdafae3f797898ee5d&v=4"),
  new UserModel(
      name: "Jeff",
      lastName: "Bezos",
      avatarUrl:
      "https://cnnespanol2.files.wordpress.com/2019/02/amazon-bezos-enquirer.jpg?quality=100&strip=info&w=1024&h=576"),
  new UserModel(
      name: "Evan",
      lastName: "Spiegel",
      avatarUrl:
      "https://i.postimg.cc/XNfK0qL9/416x416.jpg"),
];