import 'package:flutter/material.dart';

//This is list number and its meanging
// '/' meaning down the line

//Your birthday
final List<Map<int, String>> theMeaningOfBirthDay = const [
  {
    2: 'Đây là con số đặc biệt và rất hiếm, vì chỉ có duy nhất một số tổng 20 mới cho ra Con số chủ đạo 2. Do đó, trên thực tế những người có Con số chủ đạo 2 ít hơn hẳn so với những Con số chủ đạo khác. Số 2 nhìn chung là người nhạy cảm, khiêm tốn, đầy thiện chí giúp đỡ người khác.'
  },
  {
    3: 'Điểm nhấn của những người Số 3 là phần tư duy và lý luận. Đối với những người Số 3, đầu óc nhanh nhạy, tính hài hước và tư duy linh hoạt nói chung giúp họ dễ dàng thành công trong công việc. Nhưng khi sống kém tích cực, người Số 3 dễ để lại ấn tượng là người trịch thượng, gia trưởng hoặc thích chỉ đạo người khác.'
  },
  {
    4: 'Người Số 4 có thiên hướng về “thực tế” hoặc “ thực hành” - họ thích bắt tay vào việc hơn là ngồi bàn luận về các giá trị việc đó mang lại. Chính sự thực tế này giúp những người Số 4 luôn tiến về phía trước. Họ thuộc nhóm những người nguyên tắc và đáng tin cậy nhất. Người Số 4 thường chìm đắm trong công việc và xao lãng những việc mang đến sự cân bằng cho cuộc sống của họ, đặc biệt là cuộc sống gia đình.'
  },
  {
    5: 'Người có Con số chủ đạo là 5 thường có khuynh hướng cố gắng thoát khỏi sự trói buộc, thường nhạy cảm và có nhu cầu bày tỏ cảm xúc. Phần lớn người Số 5 cảm thấy khó làm việc theo giờ giấc quy định nghiêm ngặt. Họ có trực giác rất tốt, với cảm xúc sâu sắc và tư duy nghệ thuật mạnh mẽ.'
  },
  {
    6: 'Ta sẽ thấy người Số 6 ưu tú trong rất nhiều lĩnh vực sáng tạo, từ ở nhà cho đến đấu trường quốc tế. Họ mang một trọng trách lớn trong cuộc sống, thứ đòi hỏi ở họ sự tận tâm sâu sắc. Tất cả những người Số 6 đều có khả năng thiên phú này, nhưng họ thường bị gánh nặng trách nhiệm làm cho bất an và lo lắng, từ đó mắc kẹt trong áp lực căng thẳng.'
  },
  {
    7: 'Một trong những đặc điểm độc đáo ở những người Số 7 là họ được học hỏi theo cách riêng của mình. Không dừng lại ở việc tiếp nhận các chỉ dẫn tối thiểu từ người khác, người Số 7 khát khao được học bằng cách tự trải nghiệm. Chính vì điều này, người Số 7 thường phải hy sinh ít nhất một trong ba khía cạnh của cuộc sống: sức khỏe, tình yêu, tiền tài.'
  },
  {
    8: 'Những người mang Số 8 chủ đạo là những người coi sự độc lập là một trong những yếu tố quan trọng hàng đầu trong cuộc sống. Họ có thể là những người khá phức tạp, sở hữu cá tính mạnh, sức mạnh và trí tuệ hơn người. Nhưng về khả năng biểu đạt lòng biết ơn và sự trân trọng thì người Số 8 cảm thấy rất khó thể hiện.'
  },
  {
    9: 'So với những nhóm khác, người mang Con số chủ đạo 9 sẽ nhân gấp ba lần yếu tố: hoài bão, trách nhiệm và lý tưởng. Họ luôn đặt yếu tố con người lên hàng đầu. Người Số 9 luôn tự cảm thấy mình đầy trách nhiệm. Họ phù hợp với nghệ thuật và các lĩnh vực nhân văn hơn là với khoa học hay thương mại.'
  },
  {
    10: 'Cuộc sống của người Số 10 có hai đặc điểm nổi trội: khả năng thích nghi và khả năng thay đổi. Tính linh hoạt của họ có thể hỗ trợ người khác rất nhiều trong việc thích ứng với các thay đổi trong cuộc sống. Khi sống tích cực, họ có thể là người rất quảng giao, được yêu thích; nhưng khi sống tiêu cực, họ có thể là những cá nhân lạc lối, bất an và lao đao trên đường đời.'
  },
  {
    11: 'Con số chủ đạo 11 có một trường năng lượng tâm linh đặc biệt mạnh mẽ, giúp những người mang Con số chủ đạo này có tiềm năng phi thường để phát triển nhận thức ở Thể Siêu thức. Đáng tiếc là phần lớn những người Số 11 lại không đủ khả năng phát huy tiềm năng đó.'
  }
];

//Your full name
final List<Map<int, String>> theMeaningOfName = const [
  {
    1: 'Người khởi xướng hành động, đi tiên phong, dẫn đầu, độc lập, đạt mục tiêu, chủ nghĩa cá nhân'
  },
  {
    2: 'Hợp tác, thích nghi, quan tâm đến người khác, đối tác, trung gian hòa giải'
  },
  {3: 'Diễn đạt, phát biểu, giao tiếp, nghệ thuật, tận hưởng cuộc sống'},
  {
    4: 'Nền tảng của giá trị, trật tự, phục vụ, chống lại những giới hạn, phát triển bền vững'
  },
  {5: 'Mở rộng, triển vọng, phiêu lưu, tận dụng tốt sự tự do'},
  {6: 'Trách nhiệm, bảo vệ, nuôi dưỡng, cộng đồng, cân bằng, đồng cảm'},
  {7: 'Phân tích, hiểu biết, kiến thức, nhận thức, cẩn trọng, suy ngẫm'},
  {
    8: 'Nỗ lực thực tiễn, quan tâm địa vị, tìm kiếm quyền lực, mục tiêu vật chất'
  },
  {
    9: 'Nhân văn, rộng lượng, vị tha, bổn phận, diễn đạt sáng tạo',
    11: 'Tâm linh, trực giác, soi sáng, duy tâm, mơ mộng',
    22: 'Bậc thầy về xây dựng, nỗ lực to lớn, quyền lực mạnh mẽ, lãnh đạo',
  }
];

//Your soul
final List<Map<int, String>> theMeaningOfSoul = const [
  {
    1: 'Linh hồn bạn được thỏa mãn khi bạn có một chiến thắng mang tính cá nhân hoặc khi bạn thắng cuộc thi nào đó. Mỗi lúc bạn cảm thấy mình giỏi nhất khi làm điều gì đó, bạn biết mình được tôn trọng. Nếu đủ can đảm để là chính mình, bạn thấy mình được thừa nhận hoàn toàn./Được là chihs mình trong sự tranh đấu, ganh đua/Được mọi người thừa nhận năng lực./Được chinh phục, chiến thắng và vinh quang.'
  },
  {
    2: 'Linh hồn bạn được thỏa mãn khi bạn yêu, hay vào những lúc tìm được chính mình trong một môi trường hòa đồng; khi bạn vận dụng trực giác nhạy bén của mình để giải quyết vấn đề; khi bạn nghe thứ ấm nhạc mình yêu thích cũng như kết nối những người tốt lại với nhau./Được là chính mình trong tình yêu, sự hòa hợp./ Được kết nối với mọi người và chia sẻ với nhau./Được sử dụng năng khiếu, các giác quan của bản thân khi giải quyết một vấn đề nào đó.'
  },
  {
    3: 'Linh hồn bạn được thỏa mãn khi bạn cười, trình diễn, viết lách hay sử dụng sức sáng tạo của mình một cách có ý nghĩa; khi bạn đưa ra lời khuyên tốt đẹp cho người khác và họ làm theo./Được là chính mình trong những phương thức biểu diễn như viết lách, nghe nhạc, ca hát, ảo thuật, kể chuyện,.../Được thỏa mãn đam mê sáng tạo, phá vơ giới hạn và lề lối thông thường./Được làm điều tốt đẹp cho người khác và nhận được sự sẻ chia trở lại'
  },
  {
    4: 'Linh hồn bạn được thỏa mãn khi bạn thấy an toàn, mọi hóa đơn được thanh toán. Hay là khi bạn có kế hoạch vững chắc cho tương lai và bạn sống ở nơi thật sự được gọi là tổ ấm. Hoặc khi bạn chia sẻ kiến thức cho người khác và bạn biết họ có thành quả nhờ nó./Được là chính mình khi đã chu toàn mọi việc, thực hiện tất cả suy nghĩ trong đầu./Được tìm tòi, học tập và chia sẻ hiểu biết với người khác./Được cảm giác an toàn từ những người thân yêu'
  },
  {
    5: 'Linh hồn bạn được thỏa mãn khi bạn tự do đến đi tùy thischl khi bạn có thể đi du lịch và khám phá mọi bí ẩn trên thế giới; ;khi bạn đến một nhà hàng, khách sạn hay chốn tiệc tùng tuyệt vời để hưởng thụ cuộc sống/Được là chính mình khi tự do, khám phá như thám hiểm, du lịch hoặc trong các công việc như khảo cổ học./Được hưởng thụ cuộc sống theo cách riêng của bản thân./Được giao tiếp và kết nối với mọi người không kể xa gần, quen hay lạ'
  },
  {
    6: 'Linh hồn bạn được thỏa mãn khi bạn có con hoặc khi bạn có công ty riêng cùng hàng tá trách nhiệm trên vai. Hay là lúc người ta kính trọng bạn và công nhận mọi khó khăn mà bạn đa làm. Và trong cuộc sống, khi bạn được người khác cần đến và tri ân./Được là chính minh khi hoàn thanh các trọng trách tự đặt ra của bản thân./ Được chinh phục những đỉnh cao và khó khăn trong cuộc sống./Được tạo lập những đế chế riêng như cửa hàng, doanh nghiệp hay hệ thống sản phẩm'
  },
  {
    7: 'Linh hồn bạn được thỏa mãn khi bạn ở một mình cùng các ý tưởng và giữa vẻ đẹp thiên nhiên - đại dương, núi non và rừng cây gỗ; khi bạn tìm được bản thể thiêng liêng mà bạn thật sự tin tưởng./Được là chính mình khi gắn liền với thiên nhiên, cuộc sống hòa hợp với tự nhiên/Được sống với triết lý và niềm tin cá nhân./Được làm những điều bản thân tin tưởng cho dù đi ngược với phần còn lại'
  },
  {
    8: 'Linh hồn bạn được thỏa mãn khi bạn đọc lập tài chính, công việc an toàn và ngôi nhà xinh xắn. Khi bạn lãnh đạo mọi người và mọi người làm theo. Khi bạn nói lên sự thật và hiểu ra lẽ phải trong tình huống khó khắn./Được là chính mình với niềm tin về sự thật, lý lẽ va bản ngã./Được lãnh đạo mọi người thực hiện những điều tốt đẹp/Được bảo vê lẻ phải và sự công bằng.'
  },
  {
    9: 'Linh hồn bạn được thỏa mãn khi bạn giải quyết được vấn đề làm bạn đau đơn của gia đình cũ. Khi bạn đang sống trong khoảnh khắc có được mọi thứ cuộc đời ban tặng. Cũng như khi bạn có được cuộc sống cống hiến tốt đẹp cho nhân loại./Được là chính mình khi được cống hiến với điều thiên liêng nhất./Được sống với từng khoảnh khắc trong đời./Được làm những điều tốt đẹp với gia đình và bạn bè.'
  }
];

//Your life
final List<Map<int, String>> theMeaningOfLife = const [
  {
    1: 'THỦ LĨNH/Người Có Con Số Đường Đời 1 là người năng động, tự lập và cần mẫn. Họ muốn hoàn thành mọi việc một cách tốt nhất, và hầu như luôn thành công./Người số 1 không thích nhờ sự trợ giúp, bởi họ luôn muốn tự mình thực hiện công việc. Khi họ đã quyết định thì rất khó có thể làm họ thay đổi.Họ có thể trở thành doanh nhân hay nhà cải cách xuất sắc nhờ vào long đam mê của mình. Họ cũng có thể là bác sĩ, nhân viên chăm sóc người bệnh hay nhà văn, chủ nhà hàng…'
  },
  {
    2: 'NGƯỜI HOÀ GIẢI/Con Số Đường đời 2 ứng với những người đang tìm kiếm sự tổng hòa trong cuộc sống. Họ có mặt ở đây để yêu và được yêu. Như âm nhạc mang đến hiệu ứng nhẹ nhàng, họ là người khoan dung./Nếu bạn cần ai đó đồng cảm, hãy tìm đến số “2”, vì họ thích những cái ôm và những nụ hôn. Họ cần và sẵn lòng trao cho nhau tình yêu và cảm xúc. Đến với họ khi ngã lòng, vì yêu thương trọn vẹn là lẽ sống tự nhiên của họ./Người có Chỉ Sô Đường Đời “2” là người hòa giải, họ giỏi giải quyết các xung đột và họ sẽ làm hết sức để tránh chúng.'
  },
  {
    3: 'NGƯỜI TRUYỀN ĐẠT/Khi Shakespeare viết rằng, “Thế giới là tấn trò đời”, tức là ông dang miêu tả về số Đường Đời 3, người luôn luôn thể hiện mình trên sân khấu chính. Số “3” thích sự sáng tạo, giao thiệp, và kết nối mọi người. Họ là nghệ sĩ bẩm sinh. Họ thích được lắng nghe, vì thế bạn sẽ thường kiếm được họ trên danh bạ!/Trong các mối quan hệ cá nhân, số “3” thuộc tuýp người lãng mạn. Họ rất chung thủy và khó lòng quên được những hình bóng cũ. Thậm chí khi mọi chuyện đã kết thúc, họ vẫn không thể từ bỏ.'
  },
  {
    4: 'NGƯỜI THẦY/Số Đường Đời 4 là con số của trí tuệ. Họ thích tìm tòi và sinh ra đã là người thầy. Họ thường đeo cặp kính tri thức mà tôi gọi họ là “cỗ máy con người” – tỷ như Bill Gates có là số “4” thì cũng không lạ gì. Cuộc sống của họ là một phương trình logic: A cộng B phải bằng c.'
  },
  {
    5: 'LỮ KHÁCH/Số Đường đời 5 yêu tự do, vui vẻ và phiêu lưu. Họ thích sự đa dạng; họ có thể thay đổi lề thói làm việc hàng ngày vì họ rất mau chán. Loại rung động này cần sự kích thích bền vững. Họ sống trong đam mê. “Vui quên sầu” là trò chơi của số “5”./Số “5” của chúng ta cũng là những thám tử bẩm sinh. Họ thích tìm hiểu chuyện gì thực sự đã xảy ra. Nếu họ nghĩ ai đó thiếu trung thực, họ sẽ tìm kiếm manh mối để vạch trần. Họ không thích cảm giác bị qua mặt.'
  },
  {
    6: 'NGƯỜI MẸ/Số Đường đời 6 là những phụ huynh bẩm sinh, người luôn quan tâm đến người khác dưới cái nhìn của bậc làm cha làm mẹ. Số “6” quan niệm rằng: Tình yêu và hôn nhân là không thể tách rời.'
  },
  {
    7: 'NGƯỜI TÌM KIẾM ĐỨC TIN/Số Đường đời 7 có đức tin từ nhỏ. Nếu số “7” không có đức tin, họ thấy cuộc đời mình không thật sự hạnh phúc. Điều này không có nghĩa là họ sẽ đặt niềm tin vào một tôn giáo nào đã định sẵn – mà niềm tin đến từ những thứ khác./Nhưng không thể phủ nhận có một nguồn năng lượng tâm linh toát ra từ họ. Nếu như con bạn thuộc số “7”, khi thằng bé (hay con bé) ngủ, trông nó như một thiên thần vậy./Thật là may mắn cho chúng ta nếu được như thế, vì lũ trẻ, thậm chí khi lớn, vẫn giữ mãi thứ tâm hồn tuyệt vời này.'
  },
  {
    8: 'NGƯỜI ĐIỀU HÀNH/Số Đường Đời 8 xuất sắc với khả năng điều hành, và cũng là con số của những chính khách. Nó là con số quyền lực, điều này cũng có nghĩa là, khi số 8 muốn kiểm soát, họ sẽ làm mọi thứ với hy vọng tạo ra sự khác biệt tích cực đến toàn thế giới./Khi số “9” có được nền tảng tinh thần mạnh mẽ, họ trở thành nguồn sáng của cả thế giới. Thật vậy, số “9” là người có lòng vị tha./Đây cũng là những rung động đơn có sự quyết tâm cao nhất. Loại Đường đời này có ý chí mạnh mẽ để theo đuổi đến cùng, bằng tham vọng và nghị lực phi thường, những gì mình tin tưởng.'
  },
  {
    9: 'NGƯỜI THEO CHỦ NGHĨA NHÂN ĐẠO/Số Đường Đời 9 là số tiến hóa cao nhất trong Thần số học, và được coi như là một trong những rung động mạnh mẽ nhất, bởi vì nó chứa đựng những tinh túy của tất cả các con số khác.'
  },
];

//Your mission
final List<Map<int, String>> theMeangingOfMission = const [
  {
    1: 'Sứ mệnh của bạn trong cuộc đời này là trau dồi bản thân và trở thành một người lãnh đạo. Mục đích cuộc đời bạn là kiên cường, độc lập, tiên phong, phát kiến và đưa vai gánh vác mọi việc – tất cả là để phát triển ý thức về bản ngã, ý chí và sự quyết tâm của bạn./Học cách tự lập, suy nghĩ cho chính mình và khiến mình trở nên cá tính cũng như những điều mới, những tư tưởng mới và các hoạt động sáng tạo mang đến những cơ hội lớn để bạn vươn tới sứ mệnh của mình./Bạn sinh ra là để lãnh đạo. Hãy là một người lãnh đạo và dạy cách trở thành một người lãnh đạo.'
  },
  {
    2: 'Sứ mệnh của bạn trong cuộc đời này là tạo ra sự hài hòa. Mục tiêu của bạn là tìm kiếm sự hợp tác, cân bằng và là một đối tác kiên nhẫn – tất cả là để phát triển ý thức của bạn về mối quan hệ./Bạn cần học về lòng trắc ẩn và tiếp nhận mọi thứ bằng cảm xúc. Khả năng thích nghi và tạo sức thuyết phục sẽ đưa bạn đến gần sứ mệnh của mình hơn. Bạn sinh ra là để xây dựng hòa bình. Hãy tiến lên và chia sẻ về nó.'
  },
  {
    3: 'Mục đích của bạn trong cuộc đời này là tiếp thêm sinh lực và sức mạnh. Mục đích của bạn là khuyến khích người khác thông qua những hi vọng và niềm tin của bạn, sử dụng sự sáng tạo đầy cảm hứng của bạn để giúp người khác cùng trải nghiệm niềm vui./Học cách thể hiện cảm xúc của bạn thông qua tài năng sử dụng từ ngữ và sự sôi nổi, nhiệt huyết và thông minh sẽ giúp bạn tiến tới sứ mệnh của mình./Bạn sinh ra là để thể hiện bản thân, hãy trò chuyện, luôn tích cực và khuyến khích mọi người.'
  },
  {
    4: 'Sứ mệnh của bạn trong cuộc đời này là xây dựng một cái gì đó có giá trị lâu dài. Mục tiêu của bạn là trở nên thực tế, làm việc chăm chỉ đồng thời giữ mọi thứ trật tự, ngăn nắp để đảm bảo nhu cầu được an toàn./Học cách thể hiện những giá trị truyền thống và sự trung thành, kiên định sẽ giúp bạn hoàn thành sứ mệnh của mình. Bạn sinh ra là để quản lý và thiết lập trật tự. Hãy tạo dựng nền tảng và phát triển mọi thứ từ đó.'
  },
  {
    5: 'Sứ mệnh của bạn trong cuộc đời này là điều chỉnh, phát triển và tiến bộ. Mục đích của bạn là nắm lấy các cơ hội và quyền tự chủ, và theo đuổi trí tò mò vô tận của mình, đồng thời vận dụng sự tháo vát cũng như sự cuốn hút để luôn tiến về phía trước./Học cách thể hiện sự khéo léo và trở thành một linh hồn tự do sẽ giúp bạn tiến tới sứ mệnh của mình./Bạn được sinh ra là để được giải phóng và tự do. Hãy tiến về phía trước và thích nghi uyển chuyển với mọi sự thay đổi.'
  },
  {
    6: 'Sứ mệnh của bạn trong cuộc đời này là phục vụ. Mục tiêu của bạn là chăm sóc gia đình và những người thương yêu đồng thời sử dụng sự ngưỡng mộ và yêu mến của bạn đối với mọi người và những điều tinh tế để thiết lập sự gần gũi, thân thiết xung quanh bạn./Học cách để bày tỏ lòng vị tha cũng như mang lại cho người khác sự thoải mái, dễ chịu sẽ giúp bạn tiến tới mục tiêu của mình./Bạn sinh ra là để nuôi dưỡng và làm đẹp. Hãy yêu thương bằng sự cân bằng và bình ổn.'
  },
  {
    7: 'Sứ mệnh của bạn trong cuộc đời này là tìm tòi và nghiên cứu. Mục đích của bạn là đào sâu vấn đề và chiêm nghiệm tất cả những gì xảy ra trong cuộc đời này. Sử dụng khả năng phân tích và sự tỉ mỉ của mình để tìm kiếm trí huệ./Học cách thể hiện sự kỹ lưỡng sắc sảo của mình cũng như sự chu đáo và sáng suốt sẽ đưa bạn tới gần mục tiêu của mình. Bạn sinh ra là để khai mở thế giới. Hãy tập trung và rèn giũa sự thông thái của bạn.'
  },
  {
    8: 'Sứ mệnh của bạn trong cuộc đời này là có được sự tự kiểm soát bản thân. Mục đích của bạn là tự hoàn thiện, sử dụng khả năng của bạn trong kinh doanh và tổ chức./Học cách để thể hiện bản chất đích thực, khám phá sức mạnh của chính mình và tầm nhìn khoáng đạt sẽ đưa bạn tiến gần đến sứ mệnh của mình./Bạn sinh ra là để có được sự thành công và giàu có vật chất. Hãy nhận thức được điều này và trở thành một nhà lãnh đạo kiệt xuất.'
  },
  {
    9: 'Sứ mệnh của cuộc đời bạn là vươn tới sự hoàn mỹ và yêu thương vô điều kiện. Mục tiêu của bạn là vươn tới những linh hồn tiến hóa cao hơn trong vũ trụ này bằng sự nhân đạo, lòng thương cảm và nghệ thuật chữa lành của mình./Học cách chuyển hóa, chữa lành, sẵn sàng tiếp thu, lĩnh hội những ý tưởng mới và một tấm lòng khoan dung độ lượng sẽ đưa bạn lại gần sứ mệnh của mình./Bạn sinh ra là để vươn tới những chân trời mới. Hãy vươn tay ra để giúp đỡ mọi người.'
  },
];

//Your 4-top of your life
final List<Map<int, String>> fourTopOfLife = const [
  {
    1: 'Những nỗi vất vả mà trước kia giờ đây sẽ được tháo gỡ và thay thế bằng một hành trình mới.'
  },
  {
    2: 'Con số mang nhiều ý nghĩa về mặt tâm linh. Biểu thị cho sự phát triển về mặt tâm thức, có cơ duyên tìm về chính mình và mở rộng phần cảm nhận tâm linh sâu sắc hơn.'
  },
  {
    3: 'Thời điểm cần phải học hỏi để mở mang kiến thức và trí tuệ của mình để mở rộng tầm nhìn.'
  },
  {
    4: 'Con số biểu thị cho sự thành công. Với những người siêng năng, đây là giai đoạn họ có thể gặt hái được nhiều thành công nhất định.'
  },
  {
    5: 'Bạn sẽ học được cách cân bằng các yếu tố về tài chính, sức khỏe và tinh thần.'
  },
  {
    6: 'Bạn sẽ thực hiện được những dự án, làm được công việc đòi hỏi tính sáng tạo và đổi mới.'
  },
  {
    7: 'Là con số của sự mất mát. Nó đem đến rất nhiều sự thay đổi trong cuộc sống con người và phải chấp nhận bị lấy đi 1 trong 3 yếu tố: tiền tài, sức khỏe và tình yêu trong khoảng thời gian này.'
  },
  {
    8: 'Là con số của sự độc lập. Sẽ gặp mối duyên tách bạn ra khỏi môi trường nào đó(nơi làm việc, gia đình…) khiến bạn độc lập và tự chủ hơn trong cuộc sống của riêng mình.'
  },
  {
    9: 'Là con số của những hành động và việc làm nhân văn. Bạn sẽ phải thực hiện hoạt động mang tính cộng đồng và xã hội, nếu không sẽ khó tìm thấy hạnh phúc bền vững trong tâm hồn.'
  },
  {
    10: 'Giai đoạn này, họ có trọng trách rất quan trọng trong việc hướng dẫn và khuyến khích người đang gặp nhiều khó khăn trong cuộc sống.'
  },
  {
    11: 'Cần sớm nhận ra sứ mệnh của mình để lúc chạm đến đỉnh cao bạn không bị đuối sức khi không hiểu bản thân và cuộc đời.'
  }
];
