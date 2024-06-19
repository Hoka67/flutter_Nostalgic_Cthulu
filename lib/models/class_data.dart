class ClassData {
  final String name;
  final String description;
  final String imagePath; // 画像パスを追加

  ClassData({
    required this.name,
    required this.description,
    required this.imagePath,
  });
}

final List<ClassData> classData = [
  ClassData(
    name: '旅人',
    description: '自由気ままに旅を続ける冒険者。様々な場所を訪れ、多様な知識と経験を積んでいる。',
    imagePath: 'assets/tabibito.png', // 画像パスを設定してください
  ),
  ClassData(
    name: '戦士',
    description: '剣や斧などの武器を扱い、最前線で戦う屈強な戦士。体力と戦闘能力に優れている。',
    imagePath: 'assets/senshi.png',
  ),
  ClassData(
    name: '僧侶',
    description: '神に仕え、人々を癒す心優しい僧侶。回復魔法や補助魔法を得意とする。',
    imagePath: 'assets/souryo.png',
  ),
  ClassData(
    name: '盗賊',
    description: '素早い身のこなしと隠密行動で敵を翻弄する盗賊。鍵開けや罠解除の技術に長けている。',
    imagePath: 'assets/touzoku.png',
  ),
  ClassData(
    name: '魔法使い',
    description: '神秘的な魔力を操り、様々な魔法を駆使する魔法使い。知性と魔力に優れている。',
    imagePath: 'assets/mahoutsukai.png',
  ),
  ClassData(
    name: '拳闘士',
    description: '己の拳のみを武器に戦う誇り高き拳闘士。強靭な肉体と格闘能力を持つ。',
    imagePath: 'assets/kentoushi.png',
  ),
];
