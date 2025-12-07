import '../models/muhurat_result_model.dart';

/// Muhurat local data source
///
/// Provides mock muhurat data for development and testing.
/// In production, this would be replaced with an API data source.
abstract class MuhuratLocalDataSource {
  /// Fetches muhurat result from local mock data
  Future<MuhuratResultModel> getMuhuratResult();
}

/// Implementation of muhurat local data source
class MuhuratLocalDataSourceImpl implements MuhuratLocalDataSource {
  @override
  Future<MuhuratResultModel> getMuhuratResult() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));

    // Mock Choghadiya response
    final choghadiyaJson = {
      "status": 200,
      "response": {
        "day": [
          {
            "start": "Fri Mar 11 1994 6:32:58 AM",
            "end": "Fri Mar 11 1994 8:03:06 AM",
            "muhurat": "Chal",
            "type": "Good"
          },
          {
            "start": "Fri Mar 11 1994 8:03:06 AM",
            "end": "Fri Mar 11 1994 9:33:13 AM",
            "muhurat": "Labh",
            "type": "Auspicious"
          },
          {
            "start": "Fri Mar 11 1994 9:33:13 AM",
            "end": "Fri Mar 11 1994 11:03:20 AM",
            "muhurat": "Amrit",
            "type": "Auspicious"
          },
          {
            "start": "Fri Mar 11 1994 11:03:20 AM",
            "end": "Fri Mar 11 1994 12:33:28 PM",
            "muhurat": "Kaal",
            "type": "Inauspicious"
          },
          {
            "start": "Fri Mar 11 1994 12:33:28 PM",
            "end": "Fri Mar 11 1994 2:03:35 PM",
            "muhurat": "Shubh",
            "type": "Auspicious"
          },
          {
            "start": "Fri Mar 11 1994 2:03:35 PM",
            "end": "Fri Mar 11 1994 3:33:43 PM",
            "muhurat": "Rog",
            "type": "Inauspicious"
          },
          {
            "start": "Fri Mar 11 1994 3:33:43 PM",
            "end": "Fri Mar 11 1994 5:03:50 PM",
            "muhurat": "Udveg",
            "type": "Inauspicious"
          },
          {
            "start": "Fri Mar 11 1994 5:03:50 PM",
            "end": "Fri Mar 11 1994 6:33:57 PM",
            "muhurat": "Chal",
            "type": "Good"
          }
        ],
        "night": [
          {
            "start": "Fri Mar 11 1994 6:33:57 PM",
            "end": "Fri Mar 11 1994 8:03:46 PM",
            "muhurat": "Rog",
            "type": "Inauspicious"
          },
          {
            "start": "Fri Mar 11 1994 8:03:46 PM",
            "end": "Fri Mar 11 1994 9:33:34 PM",
            "muhurat": "Kaal",
            "type": "Inauspicious"
          },
          {
            "start": "Fri Mar 11 1994 9:33:34 PM",
            "end": "Fri Mar 11 1994 11:03:22 PM",
            "muhurat": "Labh",
            "type": "Auspicious"
          },
          {
            "start": "Fri Mar 11 1994 11:03:22 PM",
            "end": "Sat Mar 12 1994 12:33:10 AM",
            "muhurat": "Udveg",
            "type": "Inauspicious"
          },
          {
            "start": "Sat Mar 12 1994 12:33:10 AM",
            "end": "Sat Mar 12 1994 2:02:59 AM",
            "muhurat": "Shubh",
            "type": "Auspicious"
          },
          {
            "start": "Sat Mar 12 1994 2:02:59 AM",
            "end": "Sat Mar 12 1994 3:32:47 AM",
            "muhurat": "Amrit",
            "type": "Auspicious"
          },
          {
            "start": "Sat Mar 12 1994 3:32:47 AM",
            "end": "Sat Mar 12 1994 5:02:35 AM",
            "muhurat": "Chal",
            "type": "Good"
          },
          {
            "start": "Sat Mar 12 1994 5:02:35 AM",
            "end": "Sat Mar 12 1994 6:32:23 AM",
            "muhurat": "Rog",
            "type": "Inauspicious"
          }
        ],
        "day_of_week": "Saturday"
      },
      "remaining_api_calls": 393551
    };

    // Mock Hora response
    final horaJson = {
      "status": 200,
      "response": {
        "horas": [
          {
            "start": "Fri Mar 11 1994 6:32:58 AM",
            "end": "Fri Mar 11 1994 7:33:03 AM",
            "hora": "Venus",
            "benefits":
                "Auspicious time for starting fine arts such as art, music and dance. Good time to start modelling, purchase jewellery, luxury items and start a romantic relationship .",
            "lucky_gem": "Opal/Diamond"
          },
          {
            "start": "Fri Mar 11 1994 7:33:03 AM",
            "end": "Fri Mar 11 1994 8:33:08 AM",
            "hora": "Mercury",
            "benefits":
                "Great time to start a business, accounting,finances and starting education. One can take up commiunication and media sessions during this time",
            "lucky_gem": "Emerald"
          },
          {
            "start": "Fri Mar 11 1994 8:33:08 AM",
            "end": "Fri Mar 11 1994 9:33:13 AM",
            "hora": "Moon",
            "benefits":
                "Good time to start any new task, social services, gardening and maintainence",
            "lucky_gem": "Pearl"
          },
          {
            "start": "Fri Mar 11 1994 9:33:13 AM",
            "end": "Fri Mar 11 1994 10:33:18 AM",
            "hora": "Saturn",
            "benefits":
                "Good time to indulge in heavy machinery, construction efforts, judiciary, farming and mining",
            "lucky_gem": "Blue Sapphire/Amethyst/Hessonite"
          },
          {
            "start": "Fri Mar 11 1994 10:33:18 AM",
            "end": "Fri Mar 11 1994 11:33:23 AM",
            "hora": "Jupiter",
            "benefits":
                "Auspicious for marriage, education, wisdom, meeting with high dignitaries, purchasing of clothes. This is a great time to mentor people",
            "lucky_gem": "yellow sapphire"
          },
          {
            "start": "Fri Mar 11 1994 11:33:23 AM",
            "end": "Fri Mar 11 1994 12:33:28 PM",
            "hora": "Mars",
            "benefits":
                "New business, judicial efforts, army training/actions, administrative efforts, purchasing properties and political arguments can be done during this period",
            "lucky_gem": "Coral/Cat's eye"
          },
          {
            "start": "Fri Mar 11 1994 12:33:28 PM",
            "end": "Fri Mar 11 1994 1:33:33 PM",
            "hora": "Sun",
            "benefits":
                "Good time for job application, new campaign, political efforts and starting new task ",
            "lucky_gem": "Ruby"
          },
          {
            "start": "Fri Mar 11 1994 1:33:33 PM",
            "end": "Fri Mar 11 1994 2:33:38 PM",
            "hora": "Venus",
            "benefits":
                "Auspicious time for starting fine arts such as art, music and dance. Good time to start modelling, purchase jewellery, luxury items and start a romantic relationship .",
            "lucky_gem": "Opal/Diamond"
          },
          {
            "start": "Fri Mar 11 1994 2:33:38 PM",
            "end": "Fri Mar 11 1994 3:33:43 PM",
            "hora": "Mercury",
            "benefits":
                "Great time to start a business, accounting,finances and starting education. One can take up commiunication and media sessions during this time",
            "lucky_gem": "Emerald"
          },
          {
            "start": "Fri Mar 11 1994 3:33:43 PM",
            "end": "Fri Mar 11 1994 4:33:48 PM",
            "hora": "Moon",
            "benefits":
                "Good time to start any new task, social services, gardening and maintainence",
            "lucky_gem": "Pearl"
          },
          {
            "start": "Fri Mar 11 1994 4:33:48 PM",
            "end": "Fri Mar 11 1994 5:33:52 PM",
            "hora": "Saturn",
            "benefits":
                "Good time to indulge in heavy machinery, construction efforts, judiciary, farming and mining",
            "lucky_gem": "Blue Sapphire/Amethyst/Hessonite"
          },
          {
            "start": "Fri Mar 11 1994 5:33:52 PM",
            "end": "Fri Mar 11 1994 6:33:57 PM",
            "hora": "Jupiter",
            "benefits":
                "Auspicious for marriage, education, wisdom, meeting with high dignitaries, purchasing of clothes. This is a great time to mentor people",
            "lucky_gem": "yellow sapphire"
          },
          {
            "start": "Fri Mar 11 1994 6:33:57 PM",
            "end": "Fri Mar 11 1994 7:34:02 PM",
            "hora": "Mars",
            "benefits":
                "New business, judicial efforts, army training/actions, administrative efforts, purchasing properties and political arguments can be done during this period",
            "lucky_gem": "Coral/Cat's eye"
          },
          {
            "start": "Fri Mar 11 1994 7:33:50 PM",
            "end": "Fri Mar 11 1994 8:33:42 PM",
            "hora": "Sun",
            "benefits":
                "Good time for job application, new campaign, political efforts and starting new task ",
            "lucky_gem": "Ruby"
          },
          {
            "start": "Fri Mar 11 1994 8:33:42 PM",
            "end": "Fri Mar 11 1994 9:33:34 PM",
            "hora": "Venus",
            "benefits":
                "Auspicious time for starting fine arts such as art, music and dance. Good time to start modelling, purchase jewellery, luxury items and start a romantic relationship .",
            "lucky_gem": "Opal/Diamond"
          },
          {
            "start": "Fri Mar 11 1994 9:33:34 PM",
            "end": "Fri Mar 11 1994 10:33:26 PM",
            "hora": "Mercury",
            "benefits":
                "Great time to start a business, accounting,finances and starting education. One can take up commiunication and media sessions during this time",
            "lucky_gem": "Emerald"
          },
          {
            "start": "Fri Mar 11 1994 10:33:26 PM",
            "end": "Fri Mar 11 1994 11:33:18 PM",
            "hora": "Moon",
            "benefits":
                "Good time to start any new task, social services, gardening and maintainence",
            "lucky_gem": "Pearl"
          },
          {
            "start": "Fri Mar 11 1994 11:33:18 PM",
            "end": "Sat Mar 12 1994 12:33:10 AM",
            "hora": "Saturn",
            "benefits":
                "Good time to indulge in heavy machinery, construction efforts, judiciary, farming and mining",
            "lucky_gem": "Blue Sapphire/Amethyst/Hessonite"
          },
          {
            "start": "Sat Mar 12 1994 12:33:10 AM",
            "end": "Sat Mar 12 1994 1:33:02 AM",
            "hora": "Jupiter",
            "benefits":
                "Auspicious for marriage, education, wisdom, meeting with high dignitaries, purchasing of clothes. This is a great time to mentor people",
            "lucky_gem": "yellow sapphire"
          },
          {
            "start": "Sat Mar 12 1994 1:33:02 AM",
            "end": "Sat Mar 12 1994 2:32:55 AM",
            "hora": "Mars",
            "benefits":
                "New business, judicial efforts, army training/actions, administrative efforts, purchasing properties and political arguments can be done during this period",
            "lucky_gem": "Coral/Cat's eye"
          },
          {
            "start": "Sat Mar 12 1994 2:32:55 AM",
            "end": "Sat Mar 12 1994 3:32:47 AM",
            "hora": "Sun",
            "benefits":
                "Good time for job application, new campaign, political efforts and starting new task ",
            "lucky_gem": "Ruby"
          },
          {
            "start": "Sat Mar 12 1994 3:32:47 AM",
            "end": "Sat Mar 12 1994 4:32:39 AM",
            "hora": "Venus",
            "benefits":
                "Auspicious time for starting fine arts such as art, music and dance. Good time to start modelling, purchase jewellery, luxury items and start a romantic relationship .",
            "lucky_gem": "Opal/Diamond"
          },
          {
            "start": "Sat Mar 12 1994 4:32:39 AM",
            "end": "Sat Mar 12 1994 5:32:31 AM",
            "hora": "Mercury",
            "benefits":
                "Great time to start a business, accounting,finances and starting education. One can take up commiunication and media sessions during this time",
            "lucky_gem": "Emerald"
          },
          {
            "start": "Sat Mar 12 1994 5:32:31 AM",
            "end": "Sat Mar 12 1994 6:32:23 AM",
            "hora": "Moon",
            "benefits":
                "Good time to start any new task, social services, gardening and maintainence",
            "lucky_gem": "Pearl"
          }
        ],
        "day_of_week": "Friday"
      },
      "remaining_api_calls": 393550
    };

    // Create and return the model
    return MuhuratResultModel.fromJson(
      choghadiyaJson: choghadiyaJson,
      horaJson: horaJson,
    );
  }
}

