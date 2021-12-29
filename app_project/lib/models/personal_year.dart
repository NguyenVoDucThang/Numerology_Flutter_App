import 'package:numerology/numerology.dart';

class PersonalYear {
  final DateTime birthday;

  PersonalYear({required this.birthday});

  int get yearNumber {
    final nc = NumerologyCalculator();

    return nc.personalYear(birthday);
  }

  String get meaningOfYearNumber {

    switch (yearNumber) {
      case 1:
        return 'In Personal Year 1 people can feel very lonely. In this year they have trouble finding friends and problems may arise in existing relationships. Personal Year 1 represents independence, new beginnings and opportunities, and in this year people tend to do things in their own way. For their partners who are used to doing everything "together" it can be difficult to find out that their counterparts begin to do things on their own and want to be more independent in some respects. Their partners may begin to have suspensions and demand an explanation, or may start to feel left out and wonder where they had made a mistake.';
      case 2:
        return 'Personal Year 2 is great for starting relationships. It is the year in which people make friends more easily and get along with others better. It\'s a period during which they need to share their feelings and everyday experiences that they consider important. Stress would hit people very deeply during this vibration, so it is important that they live in a peaceful environment where they can maintain balance of life, otherwise they are at risk of illness.';
      case 3:
        return 'Vibrations of numbers three bring mental activity and generate the need to release energy through social contacts, studying and various hobbies. Communication, with an emphasis on self-expression in all areas, becomes more important this year. If mental energy is not correctly directed, people may become irritable and critical, or they may begin to suffer from bad dreams or insomnia.';
      case 4:
        return 'Personal Year 4 is physically very active period. This year people must learn to maintain a certain rhythm in order to use their energy efficiently, but they should not work too hard because they will eventually get sick. During this period, one has the tendency to work too hard and not paying attention to the warning signs of overwork. During this time there is also tendency to make hasty decisions that lead to different limitations and consequent frustrations. When people decide to do something, they encounter challenges on every step they make and there always seem to be something in their way.';
      case 5:
        return 'Personal Year 5 brings change and liberation from all constraints that person was subject to during the previous four vibrations. During this twelve-month period things may start to move and necessary changes may occur both within the person and in the external circumstances. It is important that people understand that change is not only the uncertainty of the future, that it also gives us the opportunity to move forward. In general, however, changes will be welcome this year, people will not be able to stand around, they will feel the need to break free from established rules and habits, and see if they are self-sufficient.';
      case 6:
        return 'During Personal Year 6 people are faced with many choices. Responsibility and discipline, which they learned in the previous year, will now be put to the test. They will see their obligations to the family, friends and the wider community as a natural thing, because during this year their awareness will expand beyond limits of a relatively small part of the world to which they were accustomed. During this period it is for example common for people to offer help to the needy, and to receive requests for help with different problems from family and friends.';
      case 7:
        return 'Vibrations of number seven trigger changes that can very painfully touch emotions. There will be changes in friendships and romantic relationships, at home and at work, and even in the soul of the person, so it will be a very hard year. The purpose of problems that arise in this period is to get the person to come back to his own internal resources and start to rely on himself instead on others, and to realise what is his strength.';
      case 8:
        return 'Personal Year 8 brings time during which the person can, after changes in the past year, regain balance and peace, and capitalize on previously gained experience, understanding and strength. If he puts in a great deal of hard work, deliberation and good will, he will most likely get rewarded; if he was selfish and acted without respect and tolerance for others, he will get what he deserves. Karma is a chain of cause and effect - giving and taking, justice and injustice, action and reaction - which lasts until a natural balance is established and this balance remains unchanged. That\'s the key to life and its whole meaning';
      case 9:
        return 'Personal Year 9 represents fulfilling and closing cycles and readiness to advance in the coming year to a higher level with the Personal Year 1. It is sometimes said that a drowning man will clutch at a straw, and this also applies in this case. As well as vibration of Personal Year 7 may also vibration of Personal Year 9 cause a lot of trouble and confusion, but the difference is that while vibrations of number seven are important for the growth of spiritual awareness, vibrations of number nine are important for growth of personal awareness and responsibility.';
      case 11:
        return 'Lessons of this Personal Year can be very spiritual in nature and under its influence people can attract inspirational energy at a higher level, and then they can use this energy to inspire others. These lessons or opportunities to learn usually happen in stormy situations that always occur during the first three months of the period, that is, within three months of your birthday.';
    }
    return "";
  }

  String get titleOfYearNumber {

    switch (yearNumber) {
      case 1:
        return 'A New Beginning In Your Life';
      case 2:
        return 'Development, cooperation, and waiting';
      case 3:
        return 'Social expansion and creative successes';
      case 4:
        return 'Hard work and slow, but steady progress';
      case 5:
        return 'Feeling Loose and Free';
      case 6:
        return 'Love, Family, Home and Responsibility';
      case 7:
        return 'A time for analysis and understanding';
      case 8:
        return 'Attainment and capital gains';
      case 9:
        return 'Reflection and Reaching Out';
      case 11:
        return '';
    }
    return "";
  }

  String get imageUrlOfPersonalYear {
    switch (yearNumber) {
      case 1:
        return 'assets/images/Number 1.png';
      case 2:
        return 'assets/images/Number 2.png';
      case 3:
        return 'assets/images/Number 3.png';
      case 4:
        return 'assets/images/Number 4.png';
      case 5:
        return 'assets/images/Number 5.png';
      case 6:
        return 'assets/images/Number 6.png';
      case 7:
        return 'assets/images/Number 7.png';
      case 8:
        return 'assets/images/Number 8.png';
      case 9:
        return 'assets/images/Number 9.png';
      case 11:
        return 'assets/images/Number 11.png';
    }
    return "";
  }
}
