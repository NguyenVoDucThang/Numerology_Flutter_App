class OnBoardingModel {
  String image;
  String text;
  String title;

  OnBoardingModel({required this.image, required this.text, required this.title});

  static List<OnBoardingModel> list = [
    OnBoardingModel(
      image: 'assets/images/number.png',
      title: 'Những Con Số',
      text: 'Chắc hẳn bạn đã quen với chúng, nhưng bạn có biết chúng còn là biểu tượng có ý nghĩa lớn trong vũ trụ!',
    ),
    OnBoardingModel(
      image: 'assets/images/numerology.png',
      title: 'Thần Số Học',
      text: 'Bạn có biết thần số học là một ngành khoa học nghiên cứu sự tương quan giữa con người và những con số?',
    ),
    OnBoardingModel(
      image: 'assets/images/yourself.png',
      title: 'Khai Phá Bản Thân',
      text: 'Hãy cùng ứng dụng khám phá đặc điểm tính cách, cuộc đời bạn chỉ qua những thông tin đơn giản!',
    ),
  ];
}