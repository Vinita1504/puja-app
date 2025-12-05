/// Know about yourself result entity (Domain layer)
///
/// Represents the result data for the "Know About Yourself" feature.
/// Contains 7 personal attribute sections based on birth details.
/// Pure business logic, no dependencies on external frameworks.
class KnowAboutYourselfResultEntity {
  /// Destiny section - path of the risk-taker, entrepreneur, independent trail-blazer
  final PersonalAttributeSection destiny;

  /// Personality section - dynamic, strong-willed, natural leader
  final PersonalAttributeSection personality;

  /// Attitude section - how and why you react to circumstances in youth
  final PersonalAttributeSection attitude;

  /// Character section - public and social qualities
  final PersonalAttributeSection character;

  /// Soul Urge section - intuitive, soulful self
  final PersonalAttributeSection soul;

  /// Hidden Agenda section - innate desires
  final PersonalAttributeSection agenda;

  /// Divine Purpose section - what your Soulful Self has chosen to achieve
  final PersonalAttributeSection purpose;

  const KnowAboutYourselfResultEntity({
    required this.destiny,
    required this.personality,
    required this.attitude,
    required this.character,
    required this.soul,
    required this.agenda,
    required this.purpose,
  });

  /// Factory method to create mock data for testing/development
  ///
  /// Returns a [KnowAboutYourselfResultEntity] with sample data matching API response structure.
  factory KnowAboutYourselfResultEntity.mock() {
    return KnowAboutYourselfResultEntity(
      destiny: const PersonalAttributeSection(
        title: 'Destiny',
        category: 'destiny',
        number: '1',
        master: false,
        meaning:
            'This is the path of the risk-taker, the entrepreneur, the wholly independent trail-blazer.',
        description:
            'This is the most influential number in relation to your personal motivations, what and who you like in your surroundings, and the career(s) you would be most likely to aspire toward.',
      ),
      personality: const PersonalAttributeSection(
        title: 'Personality',
        category: 'personality',
        number: '1',
        master: false,
        meaning:
            'You are dynamic, strong-willed and a natural leader, and your single-minded focus sets the stage for your success.',
        description: 'This number describes the behind-the-scenes or private you.',
      ),
      attitude: const PersonalAttributeSection(
        title: 'Attitude',
        category: 'attitude',
        number: '11',
        master: true,
        meaning:
            'You are born super sensitive; highly intuitive, high-minded and a lover of music; sweet, gentle and cerebral when inspired, you are star material.',
        description:
            'This number is most powerful in the first 30-35 years of your life and represents the how and why you react to circumstances in your youth.',
      ),
      character: const PersonalAttributeSection(
        title: 'Character',
        category: 'character',
        number: '8',
        master: false,
        meaning:
            'Your commanding, exemplary teacher-of-teachers, judge/jury, producer/director persona possesses a sixth sense that enables you to readily distinguish right from wrong in anything.',
        description:
            'This number represents primarily your public and social qualities, but you would also exhibit much of the same in your personal relations, too.',
      ),
      soul: const PersonalAttributeSection(
        title: 'Soul Urge',
        category: 'soul',
        number: '9',
        master: false,
        meaning:
            'Your Souls Urge is to use your aristocratic, gentile and humane qualities with consistency which will help to set the stage for others to emulate.',
        description:
            'This influence presents a view of your intuitive, soulful self.',
      ),
      agenda: const PersonalAttributeSection(
        title: 'Hidden Agenda',
        category: 'agenda',
        number: '8',
        master: false,
        meaning:
            'This agenda expresses an innate desire for power, acclaim and amassing huge amounts of money, or being an enlightened teacher of the masses.',
        description: 'This vibration offers your innate (hidden) desires.',
      ),
      purpose: const PersonalAttributeSection(
        title: 'Divine Purpose',
        category: 'purpose',
        number: '9',
        master: false,
        meaning:
            'Your Divine Purpose is to be a universal humanitarian - a good parent, a good mate, and a good citizen; a philanthropist, a minister, a politician - working for the betterment of mankind.',
        description:
            'This is your farewell-performance number vibration. It is what your Soulful Self has chosen to achieve in your latter years of life.',
      ),
    );
  }
}

/// Personal attribute section entity
///
/// Represents a single section of personal attributes matching API response structure.
class PersonalAttributeSection {
  /// Title of the section (e.g., "Destiny", "Personality", "Soul Urge")
  final String title;

  /// Category identifier (e.g., "destiny", "personality", "soul")
  final String category;

  /// Number associated with this attribute (as String from API)
  final String number;

  /// Whether this is a master number
  final bool master;

  /// Meaning text - highlighted summary shown in yellow box
  final String meaning;

  /// Description text - detailed explanatory text (expandable)
  final String description;

  const PersonalAttributeSection({
    required this.title,
    required this.category,
    required this.number,
    required this.master,
    required this.meaning,
    required this.description,
  });
}
