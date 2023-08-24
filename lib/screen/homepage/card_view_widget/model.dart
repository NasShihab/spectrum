class CardViewModel {
  String title;
  String text;
  String image;

  CardViewModel(this.title, this.text, this.image);
}

List<CardViewModel> cardList = [
  CardViewModel(
    'Products',
    'Spectrum It offers a cutting-edge range of '
        'industrial and commercial security, biometrics, '
        'smart cards & lot products that will help to '
        'safeguard your business and facilities.',
    "assets/images/card1.png",
  ),
  CardViewModel(
    'Solutions',
    'Our solutions are relationship focused and customized to each '
        'client\'s specific business needs. When we say that we '
        'genuinely care about our customers and take our service and '
        'performance very seriously, we mean it',
    "assets/images/card2.png",
  ),
  CardViewModel(
    'Research & Development',
    'Spectrum IT has Research & Development expertise and provides '
        'end to end R&D services. We are continuously creating '
        'innovative set of technologies in biometrics, block chain, '
        'loT etc.',
    "assets/images/card3.png",
  ),
];

List<CardViewModel> minCardList = [
  CardViewModel(
    'Smart Identity',
    'VERIFY IDENTITIES IN SECONDS, NOT MINUTES',
    "assets/images/exclusive_solutions/smart_identity.png",
  ),
  CardViewModel(
    'Healthcare',
    'Our purpose is health for all. Our eHealth Solutions',
    "assets/images/exclusive_solutions/healthcare.png",
  ),
  CardViewModel(
    'Education',
    'Our Education Management Information System',
    "assets/images/exclusive_solutions/education.png",
  ),
  CardViewModel(
    'Central Biometric Attendance',
    'he Spectrum Central Attendance Tracking System',
    "assets/images/exclusive_solutions/biometric.png",
  ),
  CardViewModel(
    'e-Library',
    'we are provided best library support',
    "assets/images/exclusive_solutions/e_library.png",
  ),
  CardViewModel(
    'ERP',
    'Our ERPSPECTRA is an intelligent ERP system designed',
    "assets/images/exclusive_solutions/erp.png",
  ),
  CardViewModel(
    'e-Commerce',
    'he Spectrum Central Attendance Tracking System',
    "assets/images/exclusive_solutions/e_commerce.png",
  ),
  CardViewModel(
    'Digital Payment Service',
    'AmaderPay is a next generation mobile wallet solution ',
    "assets/images/exclusive_solutions/digital_payment.png",
  ),
];
