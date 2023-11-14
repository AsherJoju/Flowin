import 'package:carousel_slider/carousel_slider.dart';
import 'package:flowin/utils/expansion_util.dart';
import 'package:flowin/widgets/expansion_list_widget.dart';
import 'package:flowin/widgets/slide_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Flowin'"),
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: () {},
                    child: const Text("1"),
                  ),
                  PopupMenuItem(
                    onTap: () {},
                    child: const Text("2"),
                  ),
                  PopupMenuItem(
                    onTap: () {},
                    child: const Text("3"),
                  ),
                ],
              ),
            ],
            centerTitle: true,
            floating: true,
            pinned: false,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ExpansionListWidget(
                  items: [
                    ExpansionUtil(
                      isExpanded: true,
                      header: const ListTile(
                        title: Text("Your Goals"),
                      ),
                      body: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: CarouselSlider(
                              options: CarouselOptions(
                                height: 250.0,
                                aspectRatio: 4 / 3,
                                autoPlay: true,
                                enlargeCenterPage: true,
                              ),
                              items: [
                                SlideWidget(
                                  color: Colors.grey[100],
                                  child: const Text("1"),
                                ),
                                SlideWidget(
                                  color: Colors.grey[200],
                                  child: const Text("2"),
                                ),
                                SlideWidget(
                                  color: Colors.grey[300],
                                  child: const Text("3"),
                                ),
                                SlideWidget(
                                  color: Colors.grey[400],
                                  child: const Text("4"),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Show Goals"),
                          ),
                        ],
                      ),
                    ),
                    ExpansionUtil(
                      isExpanded: true,
                      header: const ListTile(
                        title: Text("Important Tasks"),
                      ),
                      body: Column(
                        children: [
                          const Card(
                            child: ListTile(
                              title: Text("1"),
                            ),
                          ),
                          const Card(
                            child: ListTile(
                              title: Text("2"),
                            ),
                          ),
                          const Card(
                            child: ListTile(
                              title: Text("3"),
                            ),
                          ),
                          const Card(
                            child: ListTile(
                              title: Text("4"),
                            ),
                          ),
                          const Card(
                            child: ListTile(
                              title: Text("5"),
                            ),
                          ),
                          const Card(
                            child: ListTile(
                              title: Text("6"),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Show Tasks"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Center(child: Text("Header")),
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text("Temporary"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text("Temporary"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text("Temporary"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
