import 'package:flutter/material.dart';

final movies = [
  {
    'id': '0',
    'title': 'Spider-Man: Across the Spider-Verse',
    'year': '2023',
    'rate': '8.6/10',
    'color': Colors.red,
    'genre': 'Action/Animation',
    'image': 'assets/images/Spider-Man Across the Spider-Verse.jpeg',
    'description':
        'Miles Morales teams up with Gwen Stacy and other Spider-People across the multiverse to battle a new threat. The film delivers stunning visuals, intense action, and strong character development, making it a worthy sequel that outshines its predecessor.'
  },
  {
    'id': '1',
    'title': 'Oppenheimer',
    'year': '2023',
    'rate': '8.3/10',
    'color': Colors.red,
    'genre': 'Biography, Drama, History',
    'image': 'assets/images/Oppenheimer.jpeg',
    'description':
        'Christopher Nolan\'s "Oppenheimer" follows the life of J. Robert Oppenheimer, focusing on his role in the Manhattan Project and his eventual downfall. With stellar performances from Cillian Murphy and Robert Downey Jr., it\'s a cinematic masterpiece.'
  },
  {
    'id': '2',
    'title': 'Hamilton',
    'year': '2020',
    'rate': '8.3/10',
    'color': Colors.brown,
    'genre': 'Biography, Drama, History',
    'image': 'assets/images/Hamilton.jpg',
    'description':
        'A filmed version of the hit Broadway musical about Alexander Hamilton, "Hamilton" offers an engaging blend of history and modern culture, with stunning performances from the original cast.'
  },
  {
    'id': '3',
    'title': 'The Rescue',
    'year': '2021',
    'rate': '8.3/10',
    'color': Colors.blue,
    'genre': 'Documentary',
    'image': 'assets/images/The Rescue.jpeg',
    'description':
        'A gripping documentary that recounts the dramatic rescue of a Thai soccer team trapped in a cave for 16 days. The film is a masterclass in storytelling and tension.'
  },
  {
    'id': '4',
    'title': 'Top Gun: Maverick',
    'year': '2022',
    'rate': '8.2/10',
    'color': Colors.brown,
    'genre': 'Action, Drama',
    'image': 'assets/images/Top Gun Maverick.jpeg',
    'description':
        'Tom Cruise returns in this thrilling sequel to "Top Gun," blending high-octane action with emotional depth as Maverick faces his past while training a new generation of pilots.'
  },
  {
    'id': '5',
    'title': 'Spider-Man: No Way Home',
    'year': '2021',
    'rate': '8.2/10',
    'color': Colors.red,
    'genre': 'Action, Adventure, Fantasy',
    'image': 'assets/images/Spider-Man No Way Home.jpeg',
    'description':
        'Peter Parker faces multiverse chaos as he enlists Doctor Strange\'s help to restore his secret identity. This emotional and action-packed entry is a love letter to the Spider-Man franchise.'
  },
  {
    'id': '6',
    'title': 'The Father',
    'year': '2020',
    'rate': '8.2/10',
    'color': Colors.brown,
    'genre': 'Drama',
    'image': 'assets/images/The Father.jpeg',
    'description':
        'Anthony Hopkins delivers a powerful performance as a man grappling with dementia. "The Father" is a thought-provoking exploration of memory and identity.'
  },
  {
    'id': '7',
    'title': 'Demon Slayer: Mugen Train',
    'year': '2020',
    'rate': '8.2/10',
    'color': Colors.red,
    'genre': 'Animation, Action, Adventure',
    'image': 'assets/images/Demon Slayer Mugen Train.jpeg',
    'description':
        'Tanjirō and friends board a mysterious train to battle a powerful demon in this visually stunning anime film that holds significant weight within the "Demon Slayer" series.'
  },
  {
    'id': '8',
    'title': 'Dune',
    'year': '2021',
    'rate': '8.0/10',
    'color': Colors.brown,
    'genre': 'Action, Adventure, Drama',
    'image': 'assets/images/Dune.jpeg',
    'description':
        'In this epic adaptation of Frank Herbert\'s novel, Paul Atreides faces the harsh desert planet of Arrakis, where he must protect his family and people. Visually breathtaking and emotionally deep.'
  },
  {
    'id': '9',
    'title': 'CODA',
    'year': '2021',
    'rate': '8.0/10',
    'color': Colors.blue,
    'genre': 'Drama, Music',
    'image': 'assets/images/CODA.jpeg',
    'description':
        'Ruby, the only hearing member of her deaf family, struggles to balance her dreams of being a singer with her family\'s reliance on her. A heartwarming and emotional coming-of-age tale.'
  },
  {
    'id': '10',
    'title': 'Soul',
    'year': '2020',
    'rate': '8.0/10',
    'color': Colors.blue,
    'genre': 'Animation, Adventure, Comedy',
    'image': 'assets/images/Soul.jpeg',
    'description':
        'Pixar\'s "Soul" follows Joe Gardner, a middle school teacher who must reunite his soul with his body after an accident. The film explores themes of life, purpose, and music with heartfelt humor.'
  },
  {
    'id': '11',
    'title': 'The Holdovers',
    'year': '2023',
    'rate': '7.9/10',
    'color': Colors.brown,
    'genre': 'Comedy, Drama',
    'image': 'assets/images/The Holdovers.jpeg',
    'description':
        'Set in the 1970s, a lonely teacher forms an unlikely friendship with a student stuck on campus during the holidays. A nostalgic, feel-good film with standout performances.'
  },
  {
    'id': '12',
    'title': 'Godzilla Minus One',
    'year': '2023',
    'rate': '7.9/10',
    'color': Colors.brown,
    'genre': 'Action, Sci-Fi, Thriller',
    'image': 'assets/images/Godzilla Minus One.jpeg',
    'description':
        'This post-WWII Godzilla film focuses on the human side of destruction as a failed pilot tries to rebuild his life amidst the chaos left by Godzilla. A fresh take on the kaiju genre.'
  },
  {
    'id': '13',
    'title': 'Past Lives',
    'year': '2023',
    'rate': '7.9/10',
    'color': Colors.blue,
    'genre': 'Drama, Romance',
    'image': 'assets/images/Past Lives.jpeg',
    'description':
        'A tender romantic drama that spans 24 years, following the evolving relationship of childhood friends as life pulls them apart. A quiet, emotionally resonant story about love and choices.'
  },
  {
    'id': '14',
    'title': 'Guardians of the Galaxy Vol. 3',
    'year': '2023',
    'rate': '7.9/10',
    'color': Colors.red,
    'genre': 'Action, Adventure, Comedy',
    'image': 'assets/images/Guardians of the Galaxy Vol. 3.jpeg',
    'description':
        'The Guardians embark on a mission to confront a villain from Rocket\'s past. With humor, heart, and thrilling action, it\'s a satisfying conclusion to the beloved trilogy.'
  },
  {
    'id': '15',
    'title': 'Zack Snyder\'s Justice League',
    'year': '2021',
    'rate': '7.9/10',
    'color': Colors.red,
    'genre': 'Action, Adventure, Fantasy',
    'image': 'assets/images/azac.jpg',
    'description':
        'This extended cut of the 2017 film delivers Zack Snyder\'s original vision, with more story depth and new characters, making it a definitive version of the Justice League saga.'
  }
];

final upcoming = [
  {'image': 'assets/images/z-guardians-of-the-galaxy-vol-3-20.jpg', 'id': '14'},
  {'image': 'assets/images/zjusticeleague.jpg', 'id': '15'},
  {'image': 'assets/images/zoppenheimer-2023-1.jpg', 'id': '1'},
  {'image': 'assets/images/zspider-man-no-way-home-2021-1.jpg', 'id': '5'},
  {'image': 'assets/images/zthe-father-2020-1.jpg', 'id': '6'},
];

final genres = [
  {
    'genre': 'Action',
    'image':
        'assets/images/action_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '258 movies available'
  },
  {
    'genre': 'Adventure',
    'image':
        'assets/images/adventure_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '163 movies available'
  },
  {
    'genre': 'Animation',
    'image':
        'assets/images/animation_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '120 movies available'
  },
  {
    'genre': 'Biography',
    'image':
        'assets/images/biography_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '36 movies available'
  },
  {
    'genre': 'Comedy',
    'image':
        'assets/images/comedy_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '181 movies available'
  },
  {
    'genre': 'Crime',
    'image':
        'assets/images/crime_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '89 movies available'
  },
  {
    'genre': 'Documentary',
    'image':
        'assets/images/documentary_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '14 movies available'
  },
  {
    'genre': 'Drama',
    'image':
        'assets/images/drama_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '163 movies available'
  },
  {
    'genre': 'Family',
    'image':
        'assets/images/family_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '188 movies available'
  },
  {
    'genre': 'Fantasy',
    'image':
        'assets/images/fantasy_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '137 movies available'
  },
  {
    'genre': 'Film-Noir',
    'image':
        'assets/images/film-noir_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '11 movies available'
  },
  {
    'genre': 'History',
    'image':
        'assets/images/history_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '26 movies available'
  },
  {
    'genre': 'Horror',
    'image':
        'assets/images/horror_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '72 movies available'
  },
  {
    'genre': 'Mystery',
    'image':
        'assets/images/mystery_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '41 movies available'
  },
  {
    'genre': 'Romance',
    'image':
        'assets/images/romance_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '101 movies available'
  },
  {
    'genre': 'Sci-Fi',
    'image':
        'assets/images/sci-fi_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpg.jpeg',
    'movies': '134 movies available'
  },
  {
    'genre': 'Sport',
    'image':
        'assets/images/sport_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '10 movies available'
  },
  {
    'genre': 'Thriller',
    'image':
        'assets/images/thriller_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '75 movies available'
  },
  {
    'genre': 'War',
    'image':
        'assets/images/war_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '149 movies available'
  },
  {
    'genre': 'Western',
    'image':
        'assets/images/western_movie_genre_poster_for_my_movie_application_category_do_not_add_any_text_to_the_image.jpeg',
    'movies': '32 movies available'
  },
];

