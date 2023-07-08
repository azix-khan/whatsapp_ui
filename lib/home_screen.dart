import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whats App'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              itemBuilder: (
                context,
              ) =>
                  [
                const PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text('Log Out'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
// -------------> Camera
            // const Text('Camera'),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.camera_front),
                Icon(Icons.camera_indoor),
                Icon(Icons.camera_outdoor),
                Icon(Icons.camera_rear),
              ],
            ),

//------------> Chats
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/1.webp'),
                    ),
                    title: Text('Azix khan'),
                    subtitle: Text('A new message'),
                    trailing: Text('01:28 AM'),
                  );
                }),
// -------------> Status
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'New Updates',
                        ),
                        ListTile(
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3,
                                  ),
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage('assets/1.webp'),
                                ),
                              ),
                            ],
                          ),
                          title: const Text('Azix khan'),
                          // subtitle: Align(
                          //   alignment: Alignment.topLeft,
                          //   child: Icon(Icons.phone),
                          // ),
                          subtitle: const Text('33m ago'),
                        ),
                      ],
                    );
                  } else {
                    return ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('assets/1.webp'),
                            ),
                          ),
                        ],
                      ),
                      title: const Text('Azix khan'),
                      // subtitle: Align(
                      //   alignment: Alignment.topLeft,
                      //   child: Icon(Icons.phone),
                      // ),
                      subtitle: const Text('33m ago'),
                    );
                  }
                }),
// -------------> Call
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/1.webp'),
                    ),
                    title: const Text('Azix khan'),
                    // subtitle: Align(
                    //   alignment: Alignment.topLeft,
                    //   child: Icon(Icons.phone),
                    // ),
                    subtitle: Text(
                      index / 2 == 0 ? 'You missed call' : 'call time is 12:30',
                    ),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
