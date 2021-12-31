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

  String getUrlPhoneNumImage(int number) {
    switch (number) {
      case 1:
        return 'assets/images/num1.png';
      case 2:
        return 'assets/images/num2.png';
      case 3:
        return 'assets/images/num3.png';
      case 4:
        return 'assets/images/num4.png';
      case 5:
        return 'assets/images/num5.png';
      case 6:
        return 'assets/images/num6.png';
      case 7:
        return 'assets/images/num7.png';
      case 8:
        return 'assets/images/num8.png';
      case 9:
        return 'assets/images/num9.png';
    }
    return "";
  }

  String getUrlAddressNumImage(int number) {
    switch (number) {
      case 1:
        return 'assets/images/house_num1.png';
      case 2:
        return 'assets/images/house_num2.png';
      case 3:
        return 'assets/images/house_num3.png';
      case 4:
        return 'assets/images/house_num4.png';
      case 5:
        return 'assets/images/house_num5.png';
      case 6:
        return 'assets/images/house_num6.png';
      case 7:
        return 'assets/images/house_num7.png';
      case 8:
        return 'assets/images/house_num8.png';
      case 9:
        return 'assets/images/house_num9.png';
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
        return 'The 9 Heart\'s Desire number indicates your tendency toward philanthropist and idealism, and causes that help advance the human race and improve the world as a whole. You can be sensitive and emotional, are more likely to be a perfectionist, and crave approval from the masses for your good deeds and achievements.';
    }
    return "";
  }

  String getLifeAgeFirstCycle(int number) {
    switch (number) {
      case 1:
        return "Age 0 - 26";
      case 2:
        return "Age 0 - 34";
      case 3:
        return "Age 0 - 33";
      case 4:
        return "Age 0 - 32";
      case 5:
        return "Age 0 - 31";
      case 6:
        return "Age 0 - 30";
      case 7:
        return "Age 0 - 29";
      case 8:
        return "Age 0 - 28";
      case 9:
        return "Age 0 - 27";
      case 11:
        return "Age 0 - 34";
      case 22:
        return "Age 0 - 32";
    }
    return "";
  }

  String getLifeAgeSecondCycle(int number) {
    switch (number) {
      case 1:
        return "Age 26 - 53";
      case 2:
        return "Age 34 - 61";
      case 3:
        return "Age 33 - 60";
      case 4:
        return "Age 32 - 59";
      case 5:
        return "Age 31 - 58";
      case 6:
        return "Age 30 - 57";
      case 7:
        return "Age 29 - 56";
      case 8:
        return "Age 28 - 44";
      case 9:
        return "Age 27 - 54";
      case 11:
        return "Age 34 - 61";
      case 22:
        return "Age 32 - 59";
    }
    return "";
  }

  String getLifeAgeThirdCycle(int number) {
    switch (number) {
      case 1:
        return "From Age 53";
      case 2:
        return "From Age 61";
      case 3:
        return "From Age 60";
      case 4:
        return "From Age 59";
      case 5:
        return "From Age 58";
      case 6:
        return "From Age 57";
      case 7:
        return "From Age 56";
      case 8:
        return "From Age 44";
      case 9:
        return "From Age 54";
      case 11:
        return "From Age 61";
      case 22:
        return "From Age 59";
    }
    return "";
  }

  String getLifeFirstCycleMeaning(int number) {
    switch (number) {
      case 1:
        return "In this period you will show a stronger tendency toward independence. Originality and creativity come early and continue through this period. You have the ability to lead early on, but at a time when the emphasis is on learning to follow, this can be a problem. You do have a good deal of early self-confidence and individuality which can help you achieve early successes. You are aggressive in your early career path.";
      case 2:
        return "This is a difficult life path period for a young child since it suggests that emotions may run high and sensitivities to many things may be present. On the positive side, this influence may be helpful for developing any artistic talents. The 2 period may be one in which you will be required to be helpful, supportive, and willing to adapt in general. A tendency to have emotional reactions to problems and confrontation may follow you into early adulthood.";
      case 3:
        return "The 3 is an excellent lifepath period for a young person because of its inclination toward the development of expression. Any talents you may have in creative or artistic endeavors are encouraged during this period. Emotions may be high and hyperactive tendencies can be present. Making friends and enjoying social interactions will come easily now. Enjoy life as this is the tone of the 3 period, but be careful not to scatter your activities to the point that you fail to make progress on anything.";
      case 4:
        return "A 4 life path period is not much fun for a young person. It suggests that learning is difficult or the demands placed upon you to learn were harsh and burdensome. Now you have to build a solid foundation and the tone is one of learning practicality, order, and routine. Often this period denotes growing up with limited resources or restrictions of some sort. The demands often set the stage for later successes. You are to be very well prepared to start your career in early adulthood.";
      case 5:
        return "The 5 period early in life can be difficult because it often lacks the stability and certainty that you may wish for. This period often features changes and emphases freedom of thought and activity. You are likely to be constantly looking for something new, something exciting, something less boring to stimulate your expansive mind. During this time you will be an explorer and a wanderer. Whether this is a positive or a negative trait only time will tell. At any rate you are driven by curiosity and adventure.";
      case 6:
        return "The 6 period produces a need to be needed, and you probably want to help your parents or your brothers, sisters, and friends in whatever way you can. In some cases, this period is one in which the subject is required or somehow forced to take on more than a normal amount of responsibility at an early age. Generally, this early time in the life is marked by obvious attempts to be helpful and even nurturing to others. In early adulthood there is a strong sense of responsibility and caring.";
      case 7:
        return "If there is a problem with the 7 period in early life it is being misunderstood or considered difficult. In this period you may have the sense that you are different from your peers. You repel conformity. The 7 period makes you inclined to seek and absorb learning as a primary focus. The fact that you don't feel very comfortable in your environment is to be expected. Your natural curiosity and inquisitive mind will take you far during this period.";
      case 8:
        return "An 8 period in early life stresses the practical and the material. This is not the stuff of a good childhood experience as it may tend to elevate the importance of material success at an inappropriate age. For the less affluent, there may be too much interest in achieving material goals. This period may have its positive side in preparing a relatively young person for financial and material success. You may go into business early in life with the tools to succeed.";
      case 9:
        return "The 9 lifepath is difficult for a young person because so much is expected of them in terms of feeling compassion and tolerance. The youthful years are by nature selfish years and the 9 period stifles this sense of being self absorbed. While the upbringing under this influence can be helpful in the future, often the period brings periods of feeling lonely, unappreciated and unsure of self. The lesson of the 9 is that life is universal rather than personal, and thus, those with this early path may have a head start.";
      case 11:
        return "Age 0 - 34";
      case 22:
        return "Age 0 - 32";
    }
    return "";
  }

  String getLifeSecondCycleMeaning(int number) {
    switch (number) {
      case 1:
        return "In this period you will have more drive and determination thanks to the 1 life path period. If you have other indicators that you would do well in business for yourself, this life path period would be time to move in that direction. Your demeanor now is highly independent and leadership skills are sharpened. The potential pitfalls here are letting ego go a little out of control and perhaps showing a lack of patience at times.";
      case 2:
        return "The 2 lifepath period suggests that you will profit from your ability to work together with others in harmony and cooperation. In these years your ability to use skills in diplomacy and mediation will be pronounced. The affairs of others and their success may be the key to your own advancement. Pushing your own agenda doesn't work as well now. The need is to control hyperactive emotions that may appear from time to time.";
      case 3:
        return "This is likely to be a very pleasant, carefree and creative time in your life. Being original and using your talents of expression will find you furthering your career and your life in general. If there is a pitfall during this time it is becoming overly optimistic and extravagant, and spreading your talents too thin. In all this is a period that offers much happiness in exchange for a minimum of planning and concentration.";
      case 4:
        return "This period is a time to build and develop ideas into a tactile form. Now is a time that you become more of a builder, a better organizer, and perhaps even a more stable and secure person. Your judgment and decisions take on more conservatism and practicality, and they are based on careful and more thoughtful planning. You are apt to be more serious about your work and perhaps devote more time to it, too. Be careful not to become a workaholic. With a 4 lifepath period you must be constantly reminded to take the time to smell the roses.";
      case 5:
        return "In this period you are ever ready to accept change, progress, and new ideas. Likewise you are quick, some times too quick, to dump the old, old jobs, old activities, even old relationships. Sometimes this is good, sometime not so good. At any rate this 5 period suggests that you are more impulsive now and the test will be to see if you can handle the increased freedom you are feeling with constructive judgment. If so, you will find this is a period that can and should produce remarkable results.";
      case 6:
        return "Through these years you will find yourself getting ahead only after you have made the personal sacrifices necessary to benefit others in need. Much of your life in this period will tend to be centered around your home and family. This is not a period that lends itself to dramatic enrichment because you tend to be more selfless and less demanding of personal rewards. Your opportunities may be as an idealist, a mediator, and perhaps even a leader in your community. Certainly the focus of the period is associated with family and domestic concerns.";
      case 7:
        return "The 7 period in the productive years is excellent for one continuing studies and analysis into mid life. The tendency is to strive for mental growth and development and you are apt to be in the process of expanding your areas of interest now. This period is a plus if you are engaged in academic pursuits, but otherwise progress may be slow. It is hard to force yourself to seek opportunity now, and if you do, it will probably be to no avail. Perhaps it will come to you if you get prepared.";
      case 8:
        return "The 8 lifepath period in the productive years may push you to a level of success that would not have otherwise been attained. This period denotes a time when attainment, authority, and general business acumen is brought to foreground. You will want to set your goals high and do everything in a big way. If you have the inherent management abilities, this period will accelerate your prestige and attainments.";
      case 9:
        return "With the 9 in the productive years you may find yourself becoming more of a humanitarian. You may find it easier to express compassion, sympathy, understanding and tolerance while in this period. This can be an emotional cycle and one of significant personal growth. You may be called on to overcome disappointments and setbacks, but the potential for gain in this period is significant.";
      case 11:
        return "Age 0 - 34";
      case 22:
        return "Age 0 - 32";
    }
    return "";
  }

  String getLifeThirdCycleMeaning(int number) {
    switch (number) {
      case 1:
        return "New challenges may continue to appear even in your later years. In this period you may achieve the recognition that eluded you earlier, and this may mean it will be hard to kick back and take life easy. A 1 life path period does not lend itself to early retirement and leisure activities. Indeed, this may become the most active time of your life.";
      case 2:
        return "The 2 lifepath period in the later years promises a good retirement with many friends and opportunities. Your influence now will be based on your ability to bring together diverse opinions and ideas. Friends and family, and especially a close relationship is all important to your happiness now. Having close connections is vital to your health and wellbeing in your senior years.";
      case 3:
        return "A 3 period in later life suggests an active social life with numerous hobbies and activities. If you are a creative person, this late life period may become your most prolific and fruitful. Indeed, this may be the time to write that book you have thought about, a time to learn a new method of expression perhaps, or simply let your imagination run free. Enjoy yourself, it won't be that terribly hard now.";
      case 4:
        return "The 4 period in the later years suggests a period that predicts work rather than retirement. Whether by choice or by necessity, you are apt to keep your nose to the grindstone a lot longer than most of your peers. Even if you do retire, you will want to keep working on hobbies and avocation long after others have opted for the rocking chair. If you own your own business, it may be hard to accept that fact that things can run without your ever present attention.";
      case 5:
        return "With the 5 period occurring late in life, be prepared for a never ending series of adventures and expansive travel so long as the resources hold out. Actually, however, many with a late life 5 period choose to continue to work because of the sense of freedom found in their endeavors now; so long as the work is not boring or routine, there may be no reason to quit. This influence will continue to send you off to find new challenges and try new things. You are never too old to learn.";
      case 6:
        return "The 6 period late in life is usually a happy and content time. It denotes a tendency to accept responsibility and lend a helping hand to those around you. You are not likely to be lonely in your later years since family and domestic matters will probably be emphasized during this time. Indeed, you may help or even be responsible for rearing a grandchild or two.";
      case 7:
        return "When the 7 period occurs in later life you may find yourself engaged in study as never before in your life. This period may find you writing more, engaged in some form of research, or venturing into new and interesting subjects. This is not a very social period and indeed there is concern that you may become increasingly isolated by your own choosing.";
      case 8:
        return "With the 8 lifepath period in later life, it is suggested that your greatest achievements may be yet to come. If all you have lacked before is good management, now may be your time to shine. In retirement you may find yourself deeply involved in clubs, organizations and perhaps government entities. Your contribution to these can be important for your sense of accomplishment and for your social life at this time.";
      case 9:
        return "The 9 period in the later years generally signifies a settled and happy life at this juncture. You are inclined to positive feelings toward the world, and you will want to share your experiences to a greater extent. You may engage in many positive works benefiting mankind or just a few needy souls in your immediate environment. The lesson of the number is learning to give without expecting to get something back. If you have learned this by this time, this period may well be the best part of your life.";
        return "Age 0 - 34";
      case 22:
        return "Age 0 - 32";
    }
    return "";
  }

  int getPhoneNumberNumerology(String number) {
    int num = int.parse(number);
    int sum = 0;
    String processNum = number;
    int result = num;
    while (result > 9) {
      for (int i = 0; i < processNum.length; i++) {
        sum += int.parse(processNum[i]);
      }
      processNum = sum.toString();
      if (sum > 9) {
        result = sum;
        sum = 0;
      } else {
        result = sum;
      }
    }
    return result;
  }

  
  
  int getHouseNumberNumerology(String address) {
    String processNum = '';
    for (int i = 0; i < address.length; i++) {
      if(int.tryParse(address[i]) != null) {
        processNum = processNum + address[i];
      }
    }
    if(processNum == '') return 0;
    int num = int.parse(processNum);
    int sum = 0;

    int result = num;
    while (result > 9) {
      for (int i = 0; i < processNum.length; i++) {
        sum += int.parse(processNum[i]);
      }
      processNum = sum.toString();
      if (sum > 9) {
        result = sum;
        sum = 0;
      } else {
        result = sum;
      }
    }
    return result;
  }

  String getHouseNumberMeaning(int number){
    switch (number) {
      case 1:
        return 'Independence, Innovation, Strength\nThe number one home is a good space for self-employed people or single people, as the energy of the home encourages you to maintain your independence, autonomy, and personal freedom. In fact, it has exactly the right energy for someone starting a business, working from home, or just looking to discover more about themselves.';
      case 2:
        return 'Nurturing, Cozy, Sensitive\nThe number two home is the polar opposite to a number one home. It’s a home built for belonging, and Felicia Bender writes “its energy promotes loving relationships, devotion to the group as a whole, and is a harmonious place to live.” It’s a good home for romantic partners, young families and roommates who are good friends, as people feel nurtured and comfortable here.';
      case 3:
        return 'Entertaining, Creative, Upbeat\nNumerologists believe that the number three has creative vibrations, so the number three home is a good place for artists or anyone in a creative field. But it’s also a great environment for social gatherings, entertaining at home and just generally living life to the fullest. Felicia Bender writes that the number three home is “perfect for hosting parties and get togethers with fascinating people.”';
      case 4:
        return 'Practical, Protected, Grounded\nIn numerology, the number four has a very serious, grounded vibration—so it follows that the number four home supports discipline, structure and responsibility. It’s a great place to expand a business, grow your family or take control of your finances, according to Kari Samuels, as discipline, structure, and responsibility are supported here: “This is a wonderful place if you prefer stability to change, or at least want your home to be conventional, even if the rest of your life is adventurous!”';
      case 5:
        return 'Active, Social, Dynamic\nThe number five house is a party house. It maintains a vibrant energy and is a great place for people who love having people over and entertaining guests. But because the number five promotes variety and change, according to Kari Samuels, you might find you’re not here long. She adds “if you’re looking for quiet, reflection, or stability, you won’t find it here.” But your time in the five house is sure to impart life-long lessons.';
      case 6:
        return 'Love, Harmony, Family\nThe ideal home for families, the number six home is a sanctuary where everyone feels welcome. Children and animals thrive here. Actually, everyone (including your guests) will feel “at-home” with the number six—the most domestic number of numerology. Kari Samuels suggests that six house dwellers embrace the nurturing energy by decorating with comfortable furniture and lots of plants.';
      case 7:
        return 'Reflective, Introspective, Spiritual\nKari Samuels tells us that the number seven maintains a private vibration “and can be somewhat secretive.” So any home bearing this number will inspire deep thought and reflection—making it a good home for introverts or anyone who loves coming home to have a quiet place to reflect. “It is important that you eliminate any clutter in your environment as well as your thoughts to harmonize with your home’s energy,” Samuels adds.';
      case 8:
        return 'Prosperity, Abundance, Ambition\nA number eight home supports growth and ambition—making it a great space for entrepreneurs and career-driven people, especially if you run a business from home. “If you are wanting to expand your status in the world, position in life, financial wealth, or size of your family, this is a great home for you,” writes Kari Samuels. But all of that upward-mobility means that a number eight home isn’t best for anyone who wants their home to be a relaxed environment. “People who live here can become workaholics,” Felicia Bender writes.';
      case 9:
        return 'Compassion, Acceptance, Community\nEveryone is drawn to the number nine home’s vibe—it has a loving energy that attracts touch-ins and visits from everyone, from all over the world (in numerology, the number nine is an “international” number). You’ll learn a great deal about yourself and others from living here: “The 9 home is a place of humanitarianism,” writes Felicia Bender.';
    }
    return "";
  }

  String getPhoneNumberMeaning(int number){
    switch (number) {
      case 1:
        return "Number one is  strong, masculine traits which  helps to improve your personal supremacy with your influence on  others. However, be careful not to be overconfident. This is a good number for any self-starter, politician, or entrepreneur business people and career oriented people as well. Due to lack of sensitivity and awareness this number is not so good for bachelors who are looking for a life partner.";
      case 2:
        return "This number is ideal for the people who want to meet up love and romance. This number is having characteristic of kindness, cooperative to adjust the people and diplomatic as well. This number is not good for Salesmen, should stay away from this number. This is also a good number for any service oriented business, like restaurants, caregivers, and salons. ";
      case 3:
        return "Personifying, creativity and playfulness, these are qualities of Number Three. This is a good number for artists, musicians, and young people. This number is inspiring, motivating, and with having original qualities. This number has a tendency to attract others. This number is excellent for authors and songwriters; it is not so good for motivated and goal-oriented people";
      case 4:
        return "Stable, grounded, dependable, analytical and reliable, this number is very good for people associated with Accounting and Law firms businesses that have to work on to increase the trust and reputations This Number is also good for large families ";
      case 5:
        return "With a surplus of adventure and change, this number  not gives stability. With this number, you can at all times expect the unexpected. This is a good number for sales people, activist persons and travelers. Due to lack of discipline and responsibility families should always avoid using this number.";
      case 6:
        return "This number is warm, helpful, and protective, thus Ideal for families having all the qualities required for a nurturing environment which strengthens family and friendships. Number 6 inspires gossip, and thus may not be good for business. Bachelors looking for a life partner should avoid this number.  The number six is suits for teachers and schools.";
      case 7:
        return "Number 7 is having spiritual qualities; hence this number is superlative for scholars and free thinkers. Number 7 helps to improve mental health and stability. Nevertheless, it’s not so good number for entrepreneur.  This Number is  not good  for finding friends or a romance.";
      case 8:
        return "This is the perfect number for businesses men since it attracts money with reliability. It is suitable for the ambitious and motivated individuals who work to achieve their goals. Eight is a rather materialistic number which provides positive effect on career and financial condition. Thus Practical and materialistic, this can’t work as good for individuals looking for spiritual growth.  If you have a triple 8 in your phone number, it is considered to be especially fortunate.";
      case 9:
        return "This number brings idealism and kindness, and works very well for the people associated with health service or health oriented enterprises. Owners of this number will often experience the favor of luck. This is the number of non-materialistic qualities so it good works for non-profit groups. This may be the “luckiest” of all the numbers, it occasionally leads to financial downfalls when you expect it slightest. People with health problems, should keep away from this number. It can bring problems in relationships.";
    }
    return "";
  }
}

class Numerology with ChangeNotifier {
  bool isGetNumber = false;
  MainNumber numerology = MainNumber(
    birthday: DateTime.now(),
    name: 'Nguyen Vo Duc Thang',
  );

  void changeGetNumberStatus() {
    isGetNumber = true;
  }

  void setName(String newName) {
    numerology.name = newName;
    notifyListeners();
  }

  void setBirthday(DateTime newBirthday) {
    numerology.birthday = newBirthday;
    notifyListeners();
  }
}
