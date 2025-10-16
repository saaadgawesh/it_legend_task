import 'package:it_legend_task/core/constants/Asset.dart';

class CreatAdItemModel {
  CreatAdItemModel({
    required this.title,
    required this.titleImage,
    required this.labeltext,
    required this.salahiatAlelan,
    required this.salahiatAlelanImage,

    this.rafelealaa,
    this.rafelealaaImage,
    this.tathbeet1,
    this.tathbeet2,
    this.tathbeet3,
    this.tathbeet4,
    this.tathbeet5,

    this.zohoorfemohafazat,
    this.zohoorfemohafazatImage,
    this.elanmomaiz,
    this.elanmomaizImage,
    this.tathbeetImage,

    this.stacktext,
    this.stackcolor,
    this.textunderstack,
  });
  final String title;
  final String titleImage;
  final String labeltext;
  final String salahiatAlelan;
  final String salahiatAlelanImage;

  final String? rafelealaa;
  final String? rafelealaaImage;
  final String? tathbeet1;
  final String? tathbeet2;
  final String? tathbeet3;
  final String? tathbeet4;
  final String? tathbeet5;

  final String? zohoorfemohafazat;
  final String? zohoorfemohafazatImage;
  final String? elanmomaiz;
  final String? elanmomaizImage;
  final String? tathbeetImage;

  final String? stacktext;
  final String? stackcolor;
  final String? textunderstack;
}

List<CreatAdItemModel> creatAditemmodel = [
  CreatAdItemModel(
    title: 'أساسية',
    titleImage: images.createadchecbkox,
    labeltext: '3,000ج.م',
    salahiatAlelan: 'صلاحية الأعلان 30 يوم',
    salahiatAlelanImage: images.createadacute,
  ),
  CreatAdItemModel(
    title: 'اكسترا',
    titleImage: images.createadchecbkoxcolored,
    labeltext: '3,000ج.م',
    salahiatAlelan: 'صلاحية الأعلان 30 يوم',
    salahiatAlelanImage: images.createadacute,
    tathbeet1: 'تثبيت فى مقاول صحى',
    tathbeet2: '(خلال ال48 ساعة القادمة)',
    tathbeetImage: images.createadkeep,
    stacktext: '7',
    textunderstack: 'ضعف عدد \nالمشاهدات',
    rafelealaa: 'رفع لأعلى القائمة كل 2 يوم',
    rafelealaaImage: images.createadrocket,
  ),
  CreatAdItemModel(
    title: 'بلس',
    titleImage: images.createadchecbkoxcolored,
    labeltext: '3,000ج.م',
    salahiatAlelan: 'صلاحية الأعلان 30 يوم',
    salahiatAlelanImage: images.createadacute,
    tathbeet1: 'تثبيت فى مقاول صحى',
    tathbeet2: '(خلال ال48 ساعة القادمة)',
    tathbeetImage: images.createadkeep,
    stacktext: '18',
    textunderstack: 'ضعف عدد \nالمشاهدات',
    zohoorfemohafazat: 'ظهور فى كل محافظات مصر',
    zohoorfemohafazatImage: images.createadglobe,
    elanmomaiz: 'أعلان مميز',
    tathbeet3: 'تثبيت فى مقاول صحى فى\n الجهراء',
    rafelealaa: 'رفع لأعلى القائمة كل 2 يوم',
    rafelealaaImage: images.createadrocket,
  ),
  CreatAdItemModel(
    title: 'سوبر',
    titleImage: images.createadchecbkox,
    labeltext: '3,000ج.م',
    salahiatAlelan: 'صلاحية الأعلان 30 يوم',
    salahiatAlelanImage: images.createadacute,
    tathbeet1: 'تثبيت فى مقاول صحى',
    tathbeet2: '(خلال ال48 ساعة القادمة)',
    tathbeetImage: images.createadkeep,
    stacktext: '24',
    textunderstack: 'ضعف عدد \nالمشاهدات',
    zohoorfemohafazat: 'ظهور فى كل محافظات مصر',
    zohoorfemohafazatImage: images.createadglobe,
    elanmomaiz: 'أعلان مميز',
    tathbeet3: 'تثبيت فى مقاول صحى فى\n الجهراء',
    rafelealaa: 'رفع لأعلى القائمة كل 2 يوم',
    rafelealaaImage: images.createadrocket,
  ),
];
