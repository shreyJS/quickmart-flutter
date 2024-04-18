class OnboardingContent {
  String image;
  String title;
  String description;
  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      image: "images/screen1.png",
      title: 'Select from our\n    Best Menu',
      description: "Pick your food from our menu\n    More than 35 times"),
  OnboardingContent(
      image: "images/screen2.png",
      title: 'Easy and Online Payment',
      description:
          "You can pay cash on delivery \n    Card payment is available"),
  OnboardingContent(
      image: "images/screen3.png",
      title: 'Quick delivery at your doorstep',
      description: "Deliver your food at your\n    Doorsteps")
];
