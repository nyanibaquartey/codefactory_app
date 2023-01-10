
class OnboardScreenContentModel {
  final String image;
  final String title;
  final String description;

  OnboardScreenContentModel(
      {required this.image, required this.description, required this.title});
}

final List<OnboardScreenContentModel> slides = [
  OnboardScreenContentModel(
      image: "assets/images/intro1.png",
      description:
      "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
      title: "Learn anytime and anywhere"),
  OnboardScreenContentModel(
      image: "assets/images/intro2.png",
      description:
      "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
      title: "Find a course for you"),
  OnboardScreenContentModel(
      image: "assets/images/intro3.png",
      description:
      "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
      title: "Improve your skills"),
];