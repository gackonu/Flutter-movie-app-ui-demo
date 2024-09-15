import 'package:flutter/material.dart';
import 'package:flutter_default/data/movies.dart';

class GenresPage extends StatelessWidget {
  const GenresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Discover',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ListView.builder(
                  itemCount: genres.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              genres[index]['image']!,
                            ),
                          ),
                          title: Text(genres[index]['genre']!),
                          subtitle: Text(genres[index]['movies']!),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded),
                        ),
                        const SizedBox(height: 10,),
                        const Divider(
                          height: 10,
                        ),
                        const SizedBox(height: 10,),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
