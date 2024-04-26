import 'package:flutter/material.dart';
import 'package:guerrero0366/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Mercado Libre',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.green.shade100,
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Color(0xffc0c607),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(title: 'Img 1', count: 1),
                    TabItem(title: 'Img 2', count: 2),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 40,
                color: Colors.grey[300],
                shadowColor: Color(0xff107c10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 400,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                            image: AssetImage("assets/avatar.png"),
                            fit: BoxFit.fitWidth,
                            width: 600,
                            height: 600,
                            frameBuilder: (context, child, frame, loaded) {
                              if (loaded) {
                                return child;
                              }
                              return AnimatedOpacity(
                                opacity: frame == null ? 0 : 1,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeOut,
                                child: child,
                              );
                            },
                            errorBuilder: (context, exeption, StackTrace) {
                              return Center(
                                child: Text("Intentalo Luego"),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Card(
                margin: EdgeInsets.all(10),
                elevation: 40,
                color: Colors.grey[300],
                shadowColor: Color(0xff107c10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 400,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                            image: NetworkImage(
                                "https://cdn.forbes.com.mx/2022/11/Mercado-Libre-Portada_20221116_102751.jpg"),
                            fit: BoxFit.fitWidth,
                            width: 600,
                            height: 600,
                            frameBuilder: (context, child, frame, loaded) {
                              if (loaded) {
                                return child;
                              }
                              return AnimatedOpacity(
                                opacity: frame == null ? 0 : 1,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeOut,
                                child: child,
                              );
                            },
                            errorBuilder: (context, exeption, StackTrace) {
                              return Center(
                                child: Text("Intentalo Luego"),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
