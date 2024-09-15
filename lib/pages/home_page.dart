import 'package:flutter/material.dart';
import 'package:flutter_default/cmps/movie_card.dart';
import 'package:flutter_default/data/movies.dart';
import 'package:flutter_default/pages/details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            welcomeSection(),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      upcomingMoviesTitle(),
                      const SizedBox(
                        height: 18,
                      ),
                      upcomingMoviesImages(),
                      const SizedBox(
                        height: 30,
                      ),
                      newMoviesTitle(),
                      const SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                            childAspectRatio: 0.58,
                          ),
                          itemCount: movies.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return Details(
                                      movie: movies[index],
                                    );
                                  }),
                                );
                              },
                              child: MovieCard(movie: movies[index]),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding newMoviesTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'New Movies',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Container upcomingMoviesImages() {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: upcoming.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.only(right: index == upcoming.length - 1 ? 0 : 10),
            child: Container(
              width: MediaQuery.of(context).size.width * .7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  upcoming[index]['image']!,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Padding upcomingMoviesTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Upcoming Movies',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Padding welcomeSection() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Alex',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'What to watch?',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/zoppenheimer-2023-1.jpg'),
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          TextField(
              decoration: InputDecoration(
                  fillColor: const Color(0xFF292B37),
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)))),
          const SizedBox(
            height: 18,
          )
        ],
      ),
    );
  }
}
