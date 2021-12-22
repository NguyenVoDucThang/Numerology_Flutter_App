class OnBoardingModel {
  String image;
  String text;
  String title;

  OnBoardingModel(
      {required this.image, required this.text, required this.title});

  static List<OnBoardingModel> list = [
    OnBoardingModel(
      image: 'assets/images/number.png',
      title: 'Numbers',
      text:
          'You are probably familiar with them, but did you know they are also symbols of great significance in the universe ?',
    ),
    OnBoardingModel(
      image: 'assets/images/numerology.png',
      title: 'Numerology',
      text:
          'Did you know numerology is a science that studies the relationship between people and numbers?',
    ),
    OnBoardingModel(
      image: 'assets/images/yourself.png',
      title: 'Discover yourself',
      text:
          'Let\'s explore your personality traits and life with the application just through simple information!',
    ),
  ];
}
