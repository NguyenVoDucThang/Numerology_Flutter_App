import 'package:flutter/foundation.dart';
import 'package:numerology/numerology.dart';
import 'package:provider/provider.dart';

class MainNumber {
  String name;
  DateTime birthday;

  MainNumber({required this.name, required this.birthday});

  String getUrlImage(int number) {
    switch (number) {
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
      case 10:
        return 'assets/images/Number 10.png';
      case 11:
        return 'assets/images/Number 11.png';
      case 12:
        return 'assets/images/Number 12.png';
      case 22:
        return 'assets/images/Number 22.png';
    }
    return "";
  }

  String getMeaningOfLifePath(int number) {
    switch (number) {
      case 1:
        return 'Just as Aries, the first sign of the zodiac, is about action and initiation, 1 is linked to forward motion in Numerology. 1 symbolizes a pioneering spirit, independent nature, and innate leadership capabilities. On a bad day, 1 can be a bit bossy or boastful, hiding any insecurities behind over-developed self-importance. 1 must remember that although it is first, it can very quickly become the loneliest number. Even the most autonomous 1s need the support of their friends, family, and lovers.';
      case 2:
        return 'The number 2 is linked to sensitivity, balance, and harmony. Within numerology, the 2 vibration assumes the role of the mediator, creating harmony by bringing together dissonant forces through compassion, empathy, and kindness. 2 is linked to psychic abilities and intuition, and if this number appears as a Life Path or Destiny Number, the individual will be astute to subtle energy shifts and emotional nuances. Because 2 is so sensitive, it is very conflict-averse, and can end up feeling under-appreciated or unacknowledged. 2 must avoid seeking external validation and, instead, realize that perfect equilibrium needed already exists within.';
      case 3:
        return 'Communication is paramount for 3. Symbolically, 3 represents the output of two joined forces: It is the essence of creation. 3 is highly gifted at expression, seamlessly sharing innovative and pioneering concepts through art, writing, and oration. Your work inspires, motivates, and uplifts others, and 3 finds great joy making others smile. However, 3 is also known to be quite moody, and if 3 feels misunderstood, may withdraw entirely. The escapist tendencies of 3 are easily mitigated by practicing peaceful mindfulness: With such an active imagination, it’s important for 3 to find moments of quiet to reset, restore, and recharge.';
      case 4:
        return 'In numerology, 4 has an earthy-energy and is centered around fortifying its roots. 4 adamantly believes in the physical world and knows that investing in a solid infrastructure is necessary for building a lasting legacy. Practical, hardworking, and responsible, the vibration of the number 4 is focused on creating logical systems that can support scalable growth. There is a solidity to 4, however, that can quickly devolve into rigidity; 4 must remember that rules are meant to enhance, not inhibit. It’s easy for 4 to become stubborn, so 4 benefits from learning to loosen up and think outside the box. 4 will feel liberated and inspired by finding the bravery to take a few bold risks.';
      case 5:
        return 'Free-thinking, adventurous, and progressive, 5 is defined by freedom. 5 needs to experience the world by engaging its five senses: For 5, life lessons are acquired through spontaneous acts of bravery. Akin to Sagittarius energy within astrology, 5 is known for its playful, impulsive, and vivacious spirit. But on the other side of its signature joie de vivre, 5 can become restless and impatient. Since 5 is always seeking discovery, it has a difficult time accepting life’s day-to-day responsibilities — including professional and interpersonal commitments. 5 must remember that when it narrows its gaze, it will discover that the most rewarding exploration exists in its own backyard.';
      case 6:
        return '6 is recognized for its nurturing, supportive, and empathic nature. A true healer, 6 has the ability to problem solve in both the emotional and physical realms, helping others through its straightforward, yet gentle, approach. 6 has a strong sense of responsibility and cares deeply for its friends, family, and lovers. This number also can easily communicate with children and animals, displaying a soft tenderness and caretaker spirit. But not everything needs to be parented, and sometimes 6’s protective energy can become domineering and controlling. To avoid carrying the world on its shoulders, 6 must learn to build trust and understanding for others: Simply put, everyone must follow their own unique path.';
      case 7:
        return 'The detectives of numerology, 7 is known for its investigative abilities and analytical skills. Astrologically, the number 7 can be thought of as a blend of Virgo and Scorpio energy: 7 is extremely detail-oriented, but is driven by inner-wisdom as opposed to tangible realities. 7 has a keen eye, and its astute observations fuel a quick-witted, inventive spirit. Because it can quickly find the flaws in almost any system, 7 is a bit of a perfectionist. 7 will often assume fault, so it\'s important for this number to counterbalance its inherent skepticism with an open mind. Not everything will be foolproof — but that’s what makes life fun.';
      case 8:
        return '8 is all about abundance. Within numerology, this number is linked to material wealth and financial success. Ambitious and goal-oriented, 8 can effortlessly assume leadership positions through its natural magnetism. 8 applies big-picture thinking to broaden its scope, racing up the top of any ladder to reach extraordinary heights. But with great power comes great responsibility: 8 breeds workaholics, and on a bad day, can become excessively controlling and possessive. However, its negative qualities can be lessened by giving back to the community. By using this success to help others, 8 realizes that there is nothing more valuable than contributing to the greater good.';
      case 9:
        return 'As the final single digit within numerology, 9 connotes an old soul. 9 is no stranger life\'s ups-and-downs of life — been there, done that. Accordingly, 9 can effortlessly synthesize large quantities of stimuli, psychically connecting the dots to form a cohesive whole. The mission for 9 is to reach its highest state of consciousness, and to help others also achieve this spiritual awareness. 9 isn\'t afraid to transform, and its malleable spirit inspires others to explore their own ranges of motion. Since 9, in many ways, has transcended the physical plane, it must constantly remember to anchor itself. 9 must learn to balance the abstract with the tangible, ultimately finding its place at the intersection of fantasy and reality.';
      case 11:
        return 'Master Number 11 revs up the energy of Number 2; its purpose is to heal the self and others through its elevated psychic abilities. Often, Master Number 11\'s intuitive gifts are a result of extreme life circumstances: Master Number 11 has no choice but to cultivate extrasensory talents. In numerology, Master Number 11 is connected to spiritual enlightenment, awareness, and philosophical balance.';
      case 22:
        return 'Master Number 22, often referred to as the Master Builder, expands on the vibrations of Number 4. Master Number 22 is inspired to create platforms in the physical realm that transcend immediate realities — by fusing the tangible and intangible, Master Number 22 cultivates a dynamic long-term legacy. Master Number 22\'s skills are usually a byproduct of early childhood instability that fuels innovative thought. Industrious, creative, and dependable, Master Number 22 is always on a mission to transform.';
    }
    return "";
  }

  String getMeaningOfAttitude(int number) {
    switch (number) {
      case 1:
        return 'You give the impression that you\'re an innovator with tendencies to do things with independence and with a unique spin.  You don\'t usually ask for help - sometimes to your detriment.  Self-motivated, competitive, and achievement driven, you\'re at your best when you\'re in a leadership position.  You\'ll grapple with self-esteem issues, so you\'ll want praise from others to keep you moving.';
      case 2:
        return 'You give the impression that you get things accomplished through kindness, diplomacy, being accommodating and collaborative.  You have an easygoing manner and often display nervous tension because you\'re so concerned about managing everyone\'s emotions. Naturally intuitive and love-centered, relationships are of the utmost importance to you. You\'re compassionate, rarely bored (because you\'re busy giving and serving others), and love to connect in a heart-centered way with the world.';
      case 3:
        return 'You have the potential to move ahead in the world when you choose to be dynamic, creative, and socially active.  You give the impression  that you\'re the joker, the entertainer, and the creative genius.  Funny, witty, smart, and social - you\'re also moody, can be scattered, and are often hard on yourself.  Innately joyful, you have a “happy effect” on those around you.  Yet if you\'re feeling depressed, everyone feels the weight of your mood. Friends are important to you and you have a gift of inspiring and uplifting others.';
      case 4:
        return ' You give the impression that you\'re at your highest and best when you key into your organization and management skills.  You\'re determined, honest, loyal, and reliable.  You\'re the calendar maven, list keeper, and master of the punch-list.  You like to get done.  You\'re an innately gifted teacher and have many forms of expertise - from repair or construction to raising chickens to any other field of interest.  You\'re somewhat elusive emotionally - you can seem a bit detached from the fray.  Yet you make the best Devil\'s Advocate when you confront dishonesty or any other infraction having to do with something you feel strongly about.';
      case 5:
        return 'You give the impression that you achieve when you\'re adventurous, fearless, and move with progressiveness and change.  You\'ll have a tendency to succeed when you do things in a “larger than life” way.  You\'re playful, fun, and usually love being the center of attention.  If you aren\'t living up to your high-octane standards, you\'ll be a martyr or stir the “Drama Pot” wherever you go.  You\'re flirty, gregarious, and full of life.  Change is your mantra and freedom is your #1 priority.';
      case 6:
        return 'You\'re working optimally when you\'re conscientious, diligent, and service-oriented.  You give the impression that home, beauty, and family are the focus for your endeavors.  You\'re most likely a self-proclaimed perfectionist.  Your focus often lands on taking care of everyone else.  A control freak at heart, you\'re awesome at damage control and emergency management, whether it\'s personal or professional.  You have natural nurturing tendencies and are usually great with children, the elderly, and animals.  A natural solopreneur, you don\'t like being told what to do.  You\'re magnetic, a visionary, and a connoisseur of beauty.';
      case 7:
        return 'You give the impression that when you key into your innate skills with data analysis, strategic thinking, and intuitive genius, you\'re playing your best game.  You live life on a different wavelength than most.  You can appear aloof and mysterious to others.  You\'re always studying, asking questions, and analyzing the data.  You\'re the ultimate observer even though others may feel that you aren\'t paying attention to anything at all.  A gifted intuitive, you\'re at your best when you merge your refined scientific thought-processes with your intuition.  There is ultimate wisdom there for you to use and share with the world.';
      case 8:
        return 'You give the impression that you\'re strong-willed, confident, and more powerful than most. Often blunt, opinionated, and controlling, you don\'t often have time for lolly-gaggers or time wasters.  Time is money and both are precious to you.  You value money for all it can do for you in this life - it offers stability, security, freedom, power, and respect.  All of those things are conditions for which you strive.  Yet the Number 8 isn\'t a light little jaunt;  you\'ll be met with challenges in your life related to money and self-empowerment.  You strive to be respected and leave something of lasting value. Know also that you\'re super-resilient.  Think big, positive, and abundant dreams and go after them.';
      case 9:
        return ' You give the impression that you\'re gifted, intuitive, and a natural teacher. A compassionate leader, you\'re at your highest and best when your serving some humanitarian purpose, whatever that means to you.  You\'ve got tons of charisma and people naturally gravitate to you and think you\'re in charge.  You\'re the expert at “fake it\'til you make it.”   You\'ll need to learn how to give AND to receive - and enjoy the limited rewards you might get from some of your endeavors.  When you\'re operating with your heart, you\'ll be in your game.  Naturally creative, you excel in the arts.  You need to focus on living in the moment and letting go, letting go, letting go.';
    }
    return "";
  }

  String getMeaningOfDestiny(int number) {
    switch (number) {
      case 1:
        return 'This number shows that the person has natural, inbuilt leadership qualities and is destined to be a leader. Therefore, such a person should train himself to be innovative, determined and bold with self confidence and self control. He should not be domineering, selfish, bossy, and arrogant or a bully. He should have the ability to independently think for himself as to what is right and act accordingly paving one\'s own way to lead others into what he considers right. A leader should be able to know any approaching problem and learn how to avoid them and find a safe path.';
      case 2:
        return 'People with Number 2 as the destiny number have diplomatic capabilities. They make good peacemakers. For such a capability, one will be found to be tactful and persuasive. He should train himself to be peaceful, loving, kind, considerate, patient, gentle and understanding. He should not be very sensitive or easily carried away by other\'s emotions, talks or behaviour. He must take charge over moodiness and indecisiveness in himself He must know how to help out others by resolving their quarrels and differences even if he really does not wish to do so. This is the right path of self-fulfilment.';
      case 3:
        return 'A possessor of number 3 as the destiny number excels in creating and maintaining relationships. He is optimistic, cheerful, confident, and sociable. He should teach himself to help others learn how to be cheerful and happy. He can be a great asset to those who have lost the joy and the zest of life by teaching them to live life to the fullest with joy and laughter. This can be done by one\'s own lifestyle and by being articulate and creative in bringing others to what is right thus enabling them to enjoy the only life they have on earth.';
      case 4:
        return 'With Number 4 as the destiny number, the individual has great potential for all kinds of managerial work. He has obvious powerful capabilities to manage big organizations. He can take big responsibilities on himself, and fulfils them with precision. He is a very practical person and finds satisfaction in organizing important events, meetings, matters which will be long lasting. This person should learn to be methodical, serious, studious, disciplined, loyal, honest and practical so that others can trust him to get things done in a proper manner. He should not be rigid, stubborn, boring, melancholy and afraid of change.';
      case 5:
        return 'This destiny number is possessed by those who love to have change in their lives. They do not tolerate a stagnating lifestyle. They find fulfilment in having freedom. He delights in travelling, adventure and challenges in life. Such a person, therefore, should learn to bring change in his lifestyle by changing whatever is influencing his familiar, sedentary life. He must ensure not to blindly rush for a change, instead keeping alert for any good opportunity to show up for the desired change. He should teach himself to be enthusiastic and adaptable, and not over-indulgent, indifferent, vulgar, irritable or wasteful.';
      case 6:
        return 'The possessor of this destiny number is affectionate and homely with humanitarian capabilities. He is eager to help those who are unhappy, weak and facing adversity in their lives; he lifts them up from their fate and enables them to find happiness in their lives, and fulfilment in his own life. He should, therefore, teach himself to be dependable, kind and friendly towards others. He should not be obstinate, irresponsible, unyielding and slow in taking decisions. He can aid someone who cannot take decision for a help but should not interfere in other peopleâ€™s affairs unless asked for.';
      case 7:
        return 'The detectives of numerology, 7 is known for its investigative abilities and analytical skills. Astrologically, the number 7 can be thought of as a blend of Virgo and Scorpio energy: 7 is extremely detail-oriented, but is driven by inner-wisdom as opposed to tangible realities. 7 has a keen eye, and its astute observations fuel a quick-witted, inventive spirit. Because it can quickly find the flaws in almost any system, 7 is a bit of a perfectionist. 7 will often assume fault, so it\'s important for this number to counterbalance its inherent skepticism with an open mind. Not everything will be foolproof — but that\'s what makes life fun.';
      case 8:
        return 'Destiny Number 8 belongs to people who desire respect from others and are very ambitious in their lives. Such a person makes it his aim to accomplish great things and achieve outstanding success in his life. He should learn to be self-controlled, diligent, determined to be successful in whatever he does, persevering, hard-working and philosophical. He should set goals and strive to achieve them through diligence. Financial gains will follow him but he should not make that his aim. He should not be oppressive, bully or authoritative, and not have a hunger for power, fame, money or material gains.';
      case 9:
        return 'The Destiny number 9 possessor has great enthusiasm for life. He brings beauty and perfection into his own life and into the lives of others. This he does through his contribution on charity, romance and art. Such a person should be of a peaceful mind, kind, generous, forgiving and compassionate at heart, an inspiration to others, strong-willed, artistic, energetic and humane. He should teach himself not to be narrow-minded or of a narrow outlook to life, emotional, impulsive, hasty in losing his temper, bitter in speech and behaviour, a bad influence and should not be quick to pick up fights.';
      case 11:
        return 'This destiny number is the first of the master numbers and is expressed as 11 or 11/2. It cannot be added up to make 2. People possessing this master number are excellent social workers, advisors, teachers and philosophers. They generally take to a spiritual path in life and become spiritual leaders. They usually enter the spiritual path because they have suffered terribly in their early life and so are always seeking the truth and when they find it they teach others who would listen to them. These people should see the best in others being compassionate, kind and humble.';
      case 22:
        return 'The destiny number 22 is also a master number. It also cannot be added up to make 4. It indicates a person who has great inner strength to achieve great accomplishments in his life and is a master builder. The individual is capable of doing excellently in whatever work he undertakes and therefore generally takes up very big projects, proving himself to be a great leader. He should teach himself to do things which benefit others, stay humble and be a visionary of great achievements. These people will do well in fields like medicine, law, politics and entertainment.';
    }
    return "";
  }

  String getMeaningOfExpression(int number) {
    switch (number) {
      case 1:
        return 'With a 1 Expression number, you possess strong leadership capabilities and a knack for creating your own opportunities. You will go where others are afraid to go and you\'ll make the journey look easy. The number 1\'s energy is extremely self-sufficient, allowing you to be most innovative and productive when you\'re working alone. You may even find it difficult to cooperate with others, preferring to do things your way rather than listening to anyone else\'s opinions. If you aren\'t careful, the 1 Expression could make you seem aggressive and self-centered. It\'s not in your nature to think before you speak or act, but you would be wise to learn this skill!';
      case 2:
        return 'Working with others is your forte. Your 2 Expression makes you very skilled in relationships of all kinds, because it is cooperative, supportive, and always striving for balance. You have a keen ability to read people and situations and react with patience and understanding. Others see you as peaceful and humble, yet there is great strength in you. Still, your feelings can be easily hurt and you have a tendency to doubt yourself when making decisions, which can make you idle. You would benefit from following your head instead of your heart from time to time.';
      case 3:
        return 'With the influence of the number 3, you are a naturally skilled communicator. You have a way with words and a great talent for conveying your creative ideas and inspiring others. Your social circle is strong and people find your optimistic attitude both magnetic and charming. However, the relationships you form, like many other things in your life, don\'t go very deep. Your enthusiasm for life can be a distraction, making you unable to stay focused on one person, job, or plan long enough for it to develop into something complete or meaningful.';
      case 4:
        return 'Organized, down-to-earth, and hardworking, the 4 Expression gives you skills that make you incredibly capable and constructive. You are a master at managing projects and teams and others rely on you because you follow everything through to completion. You are honest, patient, and loyal -- sometimes, loyal to a fault. The number 4 carries a stubborn, rigid energy that can make you so fixed in your ways that you are unable to grasp new, better ways of thinking, doing, and interacting.';
      case 5:
        return 'Your 5 Expression craves variety and freedom and wants to experience everything that life has to offer. You are an adventurous person who takes pleasure in trying new things and following your latest passion. Your passions change quickly, however, so you\'ve learned to switch gears easily in order to explore as many possibilities as you can. Beware, though, that with all this change comes inconsistency. Your restlessness can make you unreliable in relationships and unprepared to handle the hardships of life.';
      case 6:
        return 'Your strengths play out most notably in your relationships with others. The influence of the number 6 makes you incredibly protective and nurturing toward all people, but especially your family members and other close loved ones. You have a heart of gold and feel a responsibility to be there to help those in need of support. It\'s important, though, that you don\'t forget about self-care. You can be so focused on the well-being of others that you neglect to attend to your own emotions and energy levels. Be kind to yourself, too.';
      case 7:
        return 'You are the truth seeker. You are energized by information and willing to go deep into both the intellectual and spiritual realms in search of real meaning. Logic drives the way you think and communicate, and this helps you clearly convey your vast knowledge to others. You are not satisfied with what\'s on the surface -- it\'s the hidden answers you are digging for. However, this assumption that there is always something to be found can make you suspicious of others. In fact, it may be hard for you to relate to other people in general; you tend to prefer a controlled environment where you can do things your own way.';
      case 8:
        return 'An 8 Expression blesses you with great business sense and excellent judgement of people, money, and plans. This is why you are able to achieve so many goals -- you know the best resources and the most attainable ambitions. You do run the risk of being too ambitious, however, and turning from an effective leader into an impatient taskmaster. While your drive to attain success and material wealth is powerful, it\'s important that you balance it with meaningful people, emotions, and experiences.';
      case 9:
        return 'Your 9 Expression is creative and compassionate and encourages you to find the best in everybody. Whether you\'re providing emotional support to a friend or engaged in a larger humanitarian effort, you strive to make life better for others. People see you as being friendly and affectionate, as long as you are immersing yourself in this altruistic work. If you are not living life in a way that is beneficial to other people, you could become self-centered and detached from important emotions.';
      case 11:
        return 'Having a Master Number 11 as your Expression blesses you with profound intuitive capabilities and an idealistic vision. You are driven by instinct and inspiration which give you a great, clear picture of the way things should be, yet you may lack the practical, organized thinking needed to bring your dreams to fruition. Still, your charismatic presence draws many people toward you who are in search of support, encouragement, and wisdom. You are a beacon of hope and light to those in need.';
      case 22:
        return 'Profound potential comes with a Master Number 22 Expression, which gives you a lot to live up to. In Numerology, this number is called the "Master Builder" because it is capable of constructing grand ideas and even grander realities. You are a cooperative team leader with a unique approach to solving problems and a desire to help others. You are headstrong and driven, yet this brings a risk of becoming so domineering that you lose the support of others. Remember that your goal is to create, not to destroy. You are in total control of your destiny.';
    }
    return "";
  }

  String getMeaningOfPersonality(int number) {
    switch (number) {
      case 1:
        return 'Those with Personality Number 1 give off an ambitious and dynamic energy. You appear determined, strong willed, in control, and capable of achieving whatever you set your mind to, and as such others are less likely to see you as a pushover. Be wary of being perceived as egotistical, unreceptive, and intimidating.';
      case 2:
        return 'Those with Personality Number 2 are often seen as friendly, trustworthy, reliable, warm, and unpretentious. You tend to appear more open and approachable, and as a result people are more likely to be drawn to you and ask you for help or assistance. Be wary of being perceived as indecisive and a pushover by some.';
      case 3:
        return 'Those with Personality Number 3 are often seen as creative and charming individuals, making them more attractive to the opposite sex. You are likely perceived as witty, extroverted, and optimistic, with an uplifting energy. Be wary of over exaggerating, and appearing superficial to some.';
      case 4:
        return 'Those with Personality Number 4 are seen as being very reliable, stable, consistent, organized , and efficient by others. As such people are more likely to trust you as a person, as well as your judgment and ability to get things done, especially when it comes to making tough business decisions. Be wary of appearing too frugal, predictable and overly serious.';
      case 5:
        return 'Those with Personality Number 5 tend to appear more adventurous, stimulating, passionate and witty. Your freedom loving and adventurous personality is often the envy of others and you can be an inspiring influence on those around you. Because you can seem aloof, some may not think of you as a dependable or a reliable person. Be wary of appearing superficial, and try to be more grounded.';
      case 6:
        return 'Those with Personality Number 6 are often seen as warm, compassionate, caring, self sacrificing and willing to help others. As such people often approach you for a shoulder to cry on, or relate their life\'s burdens. You are seen as easy going, but because you are also more agreeable and see the good in people, some may try to take advantage of you.';
      case 7:
        return 'Those with Personality Number 7 tend to appear more secretive, introverted, even mysterious and different. Because you seem so withdrawn, people find it harder to get to know the true you. You have a serious, independent and intelligent aura, and as such others are likely to trust and respect you. Be wary of appearing too opinionated and arrogant.';
      case 8:
        return 'Those with Personality Number 8 are often seen as strong, ambitious, competitive, competent, and confident. You can project an aura of authority and power, and people tend to see you as being well rounded and grounded, with good decision making abilities and business sense. Be wary of appearing too egocentric and greedy.';
      case 9:
        return 'Those with Personality Number 9 give off a charismatic and somewhat aristocratic appearance. People see you as being in control, with positive and idealistic opinions and ideas, and as such you can inspire and influence those around you, gaining following and admiration. Be wary of seeming arrogant and above others.';
    }
    return "";
  }

  String getMeaningOfSoulUrge(int number) {
    switch (number) {
      case 1:
        return 'The 1 Heart\'s Desire number indicates you have a deeper craving to rule over your own direction in life according to what you believe is right. More than others, you desire to be independent, and a leader of whatever venture, endeavour, or area of expertise you join or are a part of.';
      case 2:
        return 'The 2 Heart\'s Desire number indicates you have a deeper craving for peace, comfort and security. The gentle, sensitive, intuitive, and sentimental soul this number represents yearns for harmony in all aspects of life, and you are likely to be much more diplomatic and tactful, rather than forceful, in order to accomplish your goals.';
      case 3:
        return 'The 3 Heart\'s Desire number indicates you have a tendency to be creative and playful, generally upbeat, friendly, happy, and outgoing. You are drawn more to the arts and crave for a creative outlet where you can be free to express yourself and showcase your imaginative mind.';
      case 4:
        return 'The 4 Heart\'s Desire number indicates your natural desire is for order and stability in life. You tend to prefer routine, structure and discipline over change, and are more likely to be very thorough and organized when dealing with any aspects of everything you do.';
      case 5:
        return 'The 5 Heart\'s Desire number hints at your deeper craving for freedom, new experiences, and change. Imaginative, creative, enthusiastic and resourceful, you are more likely to travel, seek adventure, and tend to be drawn to the less conventional, and more original ideas, opportunities, and people.';
      case 6:
        return 'The 6 Heart\'s Desire number indicates you tend to be more compassionate, sentimental, patient, and caring, and are able to empathize with people more so than others. As such, you are likely to focus more of your attention, and place much greater importance, on helping and caring for your family, loved ones, and those close to you.';
      case 7:
        return 'The 7 Heart\'s Desire number indicates you are more likely naturally introverted, and have a tendency to seek quiet, private environments. Your inquisitive, abstract, and theoretical mind draws you towards introspection, the love of knowledge, philosophy, and deeper understandings of all things in life.';
      case 8:
        return 'The 8 Heart\'s Desire number indicates you are more likely to be drawn to material comforts, money and even power and influence. Your ambition and determination, coupled with a creative mind and the ability to visualize the bigger picture, all combine to help you succeed where others may fail.';
      case 9:
        return 'The 9 Heart\'s Desire number indicates your tendency toward philanthropism and idealism, and causes that help advance the human race and improve the world as a whole. You can be sensitive and emotional, are more likely to be a perfectionist, and crave approval from the masses for your good deeds and achievements.';
    }
    return "";
  }
}

class Numerology with ChangeNotifier {
  MainNumber numerology = MainNumber(
    birthday: DateTime.now(),
    name: 'Nguyen Vo Duc Thang',
  );

  void setName (String newName) {
    numerology.name = newName;
    notifyListeners();
  }

  void setBirthday (DateTime newBirthday) {
    numerology.birthday = newBirthday;
    notifyListeners();
  }
}
