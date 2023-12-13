class Bible {
  final String book;
  final String chapter;
  final String verse;
  final String text;
  final String testament;

  Bible({
    required this.book,
    required this.chapter,
    required this.verse,
    required this.text,
    required this.testament,
  });
}

List<Bible> bibleList = [
  // Ancien Testament
  Bible(
    book: "Genèse",
    chapter: "1",
    verse: "1",
    text: "Au commencement, Dieu créa les cieux et la terre.",
    testament: "Ancien",
  ),
  Bible(
    book: "Exode",
    chapter: "20",
    verse: "1",
    text: "Alors Dieu prononça toutes ces paroles, en disant :",
    testament: "Ancien",
  ),
  Bible(
    book: "Psaumes",
    chapter: "23",
    verse: "1",
    text: "L'Éternel est mon berger: je ne manquerai de rien.",
    testament: "Ancien",
  ),

  // Nouveau Testament
  Bible(
    book: "Matthieu",
    chapter: "5",
    verse: "1",
    text:
        "Jésus, voyant les foules, monta sur la montagne; et, après qu'il se fut assis, ses disciples s'approchèrent de lui.",
    testament: "Nouveau",
  ),
  Bible(
    book: "Jean",
    chapter: "3",
    verse: "16",
    text:
        "Car Dieu a tant aimé le monde qu'il a donné son Fils unique, afin que quiconque croit en lui ne périsse point, mais qu'il ait la vie éternelle.",
    testament: "Nouveau",
  ),
  Bible(
    book: "Actes",
    chapter: "2",
    verse: "1",
    text:
        "Le jour de la Pentecôte, ils étaient tous ensemble dans le même lieu.",
    testament: "Nouveau",
  ),
];
