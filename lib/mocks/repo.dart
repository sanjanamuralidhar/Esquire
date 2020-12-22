import 'package:EsquireCustomerApp/mocks/models/address.dart';
import 'package:EsquireCustomerApp/mocks/models/branch.dart';
import 'package:EsquireCustomerApp/mocks/models/message.dart';
import 'package:EsquireCustomerApp/mocks/models/product.dart';
import 'package:EsquireCustomerApp/mocks/models/question.dart';

class Repo {
  static final List<Branch> getAllBranches = [
    Branch(name: 'Thrissur', ph: '0487-2330931'),
    Branch(name: 'Thripayar', ph: '0487-2402062'),
    Branch(name: 'Kottayam', ph: '0481-2584343'),
    Branch(name: 'Ernakulam', ph: '0484-2353931'),
    Branch(name: 'Kozhikode', ph: '0495 2722029'),
  ];
  static final getAllBanners = [
    'https://mspoweruser.com/wp-content/uploads/2017/11/HP-Black-Friday-Deal.jpg',
    'https://cdn57.androidauthority.net/wp-content/uploads/2018/11/android-authority-hp-black-friday-sale2.jpg',
    'https://mspoweruser.com/wp-content/uploads/2016/11/Staples-Black-Friday-Deals.jpg'
  ];
  static final getAllIssues = [
    'Keyboard Not working',
    'display issue',
    'boot loop issue',
    'speaker not working'
  ];

  static final getAllTechnician = ['Ajith', 'Simon', 'Ranjith'];

  static final getAllCategories = [
    {
      'name': 'Laptops',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquireMULTI%20BRANDED%20LAPTOPS.jpg'
    },
    {
      'name': 'Desktops',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquireMULTI%20BRANDED%20DESKTOPS.jpg'
    },
    {
      'name': 'Printers',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquireMULTI%20BRANDED%20PRINTERS.jpg'
    },
    {
      'name': 'Inverters',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquireSINEWAVE%20INVERTERS%20AND%20UPS.jpg'
    },
    {
      'name': 'Monitors',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquireMONITORS%20AND%20TV.jpg'
    },
    {
      'name': 'Mobiles',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquireMOBILES%20AND%20TABLETS.jpg'
    },
    {
      'name': 'Projectors',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquirePROJECTORS%20AND%20SCREENS.jpg'
    },
    {
      'name': 'AC',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquireAIRCONDITIONERS.jpg'
    },
    {
      'name': 'CCTV',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquireCCTV.jpg'
    },
    {
      'name': 'Cables',
      'image':
          'https://esquirecontrol.esquirebusinesssolutions.com/ClientProfile/EsquireCABLES%20AND%20CONNECTORS.jpg'
    }
  ];

  static final List<Product> getAllRecentProducts = [
    Product(
        id: '23124234',
        customer: 'john',
        name: 'HardDisk',
        product: 'WD 1.5 TB Wired External Hard Disk Drive',
        image:
            'https://rukminim1.flixcart.com/image/416/416/jv19qq80/external-hard-drive/hdd/j/u/7/seagate-sthn2000400-original-imafgyvd4umvytzw.jpeg',
        complaint: 'Can,t Format',
        date: DateTime.now(),
        status: 'In progress',
        progress: 1,
        location: 'Manavalasery',
        route: 'Irinjalakuda',
        price: 'Rs 4000',
        serial: 342875613785345,
        serviceExecutive: 'Sanfer'),
    Product(
        id: '12647835',
        customer: 'Simon',
        name: 'Monitor',
        product: 'LG 24 inch Full HD LED Backlit IPS Panel Monitor',
        image:
            'https://rukminm1.flixcart.com/image/416/416/je1pa4w0/monitor/v/g/g/gn246hl-gn246hl-acer-original-imaf2sg2mu2r7cuh.jpeg',
        complaint: 'Display not working',
        date: DateTime.now(),
        status: 'Completed',
        progress: 3,
        location: 'Kottat',
        route: 'Thrissur town',
        price: 'Rs 5000',
        serial: 942875613757839,
        serviceExecutive: 'Ranjith'),
    Product(
        id: '37483643',
        customer: 'Alexandra',
        name: 'Camera',
        product: 'Canon M50 Mirrorless Camera Body with Single Lens EF-M',
        image:
            'https://rukminim1.flixcart.com/image/416/416/point-shoot-camera/d/z/q/powershot-sx430-is-sx430-is-canon-original-imaerzagfxnfmtyr.jpeg',
        complaint: 'Blacked out disply',
        date: DateTime.now(),
        status: 'In progress',
        progress: 1,
        location: 'koratty',
        route: 'Chalakudy',
        price: 'Rs 24900',
        serial: 542875613787493,
        serviceExecutive: 'Ajith'),
    Product(
        id: '29374632',
        customer: 'Warren	',
        name: 'Headphones',
        product: 'boAt Bassheads 242 Wired Headset',
        image:
            'https://rukminim1.flixcart.com/image/416/416/joonafk0/smart-headphone/z/u/g/hbs-730-neckband-bluetooth-headphones-wireless-sport-stereo-original-imafb36ue9mkchhm.jpeg',
        complaint: 'Left side speaker not working',
        date: DateTime.now(),
        status: 'Pending',
        progress: 1,
        location: 'Koorkenchery',
        route: 'Chalakudy',
        price: 'Rs 690',
        serial: 742875613747296,
        serviceExecutive: 'Simon'),
  ];

  static final getAllTickets = [
    {
      'id': '37483643',
      'customer': 'Warren',
      'name': 'Camera',
      'product':
          'Canon M50 Mirrorless Camera Body with Single Lens EF-M 15-45 mm IS STM',
      'image':
          'https://rukminim1.flixcart.com/image/416/416/point-shoot-camera/d/z/q/powershot-sx430-is-sx430-is-canon-original-imaerzagfxnfmtyr.jpeg',
      'complaint': 'Blacked out disply',
      'date': DateTime.now(),
      'status': 'In progress',
      'progress': 1,
      'location': 'koratty',
      'route': 'Chalakudy'
    },
    {
      'id': '29374632',
      'customer': 'Warren	',
      'name': 'Headphones',
      'product': 'boAt Bassheads 242 Wired Headset',
      'image':
          'https://rukminim1.flixcart.com/image/416/416/joonafk0/smart-headphone/z/u/g/hbs-730-neckband-bluetooth-headphones-wireless-sport-stereo-original-imafb36ue9mkchhm.jpeg',
      'complaint': 'Speaker not working',
      'date': DateTime.now(),
      'status': 'Pending',
      'progress': 1,
      'location': 'Koorkenchery',
      'route': 'Chalakudy'
    },
  ];
  static final getAllAddress = [
    Address(
        addressLine: '1/551 koorkenchery',
        addressType: 'HOME',
        city: 'Thrissur',
        district: 'Thrissur',
        landmark: 'Near school',
        name: 'Warren',
        pincode: '678007',
        state: 'Kerala'),
    Address(
        addressLine: '1/231 athirkkad',
        addressType: 'WORK',
        city: 'Pathripala',
        district: 'Palakkad',
        landmark: 'Near Hospital',
        name: 'Simon',
        pincode: '678041',
        state: 'Kerala'),
    Address(
        addressLine: '1/431 Mankara',
        addressType: 'HOME',
        city: 'Kottayi',
        district: 'Palakkad',
        landmark: 'Near Police Station',
        name: 'Anish',
        pincode: '678003',
        state: 'Kerala')
  ];

  static final getQuestionSet = [
    Question(
        question:
            'In which decade was the American Institute of Electrical Engineers (AIEE) founded?',
        options: [
          '1850s',
          '1930s',
          '1880s',
          '1950s',
        ]),
    Question(
        question:
            'What is part of a database that holds only one type of information?',
        options: [
          'Report',
          'Field',
          'Record',
          'File',
        ]),
    Question(
        question:
            'Once the active medium is excited, the first photons of light are produced by which physical process?',
        options: [
          'Blackbody radiation',
          'Spontaneous emission',
          'Synchrotron radiation',
          'Planck\'s oscillation'
        ])
  ];

  static final getAllMessages = [
    Message(message: 'hai', isSender: true),
    Message(message: 'hellow', isSender: false),
    Message(message: 'how are you', isSender: true),
    Message(message: 'fine', isSender: false)
  ];

  static final getAllLoyaltyBanner = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img17/Mobile/Engagement/QuizTime19/SundayQuiz/AMZJobs/1242x450_SE._CB424933638_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img19/Jan26/GW-Eng-Hindi/special_edition_quiz._CB456725773_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img17/Mobile/Engagement/QuizTime19/SundayQuiz/AMZJobs/1242x450_SE._CB424933638_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img19/Jan26/GW-Eng-Hindi/special_edition_quiz._CB456725773_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img17/Mobile/Engagement/QuizTime19/SundayQuiz/AMZJobs/1242x450_SE._CB424933638_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img19/Jan26/GW-Eng-Hindi/special_edition_quiz._CB456725773_.jpg'
  ];
}
