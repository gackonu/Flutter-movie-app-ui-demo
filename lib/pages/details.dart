import 'package:flutter/material.dart';
import 'package:flutter_default/data/movies.dart';

class Details extends StatelessWidget {
  final movie;
  const Details({super.key, this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color(0xFF0F111D),
            height: 470,
            child: Stack(
              children: [
                Positioned(
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      movie['image'],
                      height: 350,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 250,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: movie['color'].withOpacity(0.7),
                          spreadRadius: 1,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        movie['image'],
                        width: MediaQuery.of(context).size.width * .3,
                        // height: 290,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 90,
                  child: Container(
                    decoration: BoxDecoration(
                        color: movie['color'],
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: movie['color'].withOpacity(0.7),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ]),
                    child: const Icon(
                      Icons.play_arrow,
                      size: 60,
                    ),
                  ),
                ),
                Positioned(
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    scrolledUnderElevation: 0,
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.chevron_left_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    actions: const [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color(0xFF292B37),
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xFF292B37),
                                spreadRadius: 10,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          child: const Icon(Icons.add),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color(0xFF292B37),
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xFF292B37),
                                spreadRadius: 10,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          child: const Icon(Icons.favorite_outline_outlined),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color(0xFF292B37),
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xFF292B37),
                                spreadRadius: 10,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          child: const Icon(Icons.download),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: const Color(0xFF292B37),
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xFF292B37),
                                spreadRadius: 10,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          child: const Icon(
                            Icons.share,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              movie['title'],
                              style: const TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                movie['rate'],
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            movie['description'],
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Recommended',
                                style: TextStyle(
                                  fontSize: 24,
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
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              // shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: upcoming.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      right: index == upcoming.length - 1
                                          ? 0
                                          : 10),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .35,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: Image.asset(
                                        upcoming[index]['image']!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
