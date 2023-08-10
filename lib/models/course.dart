class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;
  String video;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
    required this.video,
  });
}

List<Course> courses = [
  Course(
    author: "Ahmad Bahrun",
    completedPercentage: .35,
    name: "Bootstrap",
    thumbnail: "assets/images/bootstrap.png",
    video: "53 Videos",
  ),
  Course(
    author: "Karim Ginan",
    completedPercentage: .78,
    name: "Laravel",
    thumbnail: "assets/images/laravel.png",
    video: "80 Videos",
  ),
  Course(
    author: "Ismail Ali",
    completedPercentage: .75,
    name: "Flutter",
    thumbnail: "assets/images/Flutter.png",
    video: "65 Videos",
  ),
  Course(
    author: "Muhammad Nirul",
    completedPercentage: .60,
    name: "React Native",
    thumbnail: "assets/images/React Native.png",
    video: "45 Videos",
  ),
  Course(
    author: "Imran Sanusi",
    completedPercentage: .75,
    name: "PHP",
    thumbnail: "assets/images/php.png",
    video: "65 Videos",
  ),
  Course(
    author: "Maliq Akbar",
    completedPercentage: .75,
    name: "Python",
    thumbnail: "assets/images/Python.png",
    video: "30 Videos",
  ),
  Course(
    author: "Zainal Arifin",
    completedPercentage: .75,
    name: "C#",
    thumbnail: "assets/images/C#.png",
    video: "21 Videos",
  ),
];
