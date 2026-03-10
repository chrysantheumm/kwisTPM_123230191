import 'package:flutter/material.dart';
import 'package:kuis_123230191/models/newsmodel.dart';
import 'login.dart';
import 'newsdetail.dart';

class News extends StatefulWidget {

  final String username;

  const News({super.key, required this.username});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
   
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 

        leading: IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loginpage(),
                    ),
                  );
                },
                
        ),
        title: Text("Welcome, ${widget.username}!"),
      ),

      body: ListView.builder(
        itemCount: dummyNews.length,
        itemBuilder: (context, index) {

          final newsmodel = dummyNews[index];

          return Card(
            margin: const EdgeInsets.all(10),

            child: InkWell(
              onTap: (){
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsDetail(newsModel: ),
                  ),
                );*/
              },

              child: Padding(
                padding: const EdgeInsets.all(10),

                child: Row(
                  children: [

                    /// Poster
                    Image.network(
                      newsmodel.image,
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover,
                    ),

                    const SizedBox(width: 12),

                    /// Info Film
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "${newsmodel.title} ",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),

                          Text("${newsmodel.description} ",

                            style: const TextStyle(
                              ),
                          ),

                          Text("❤️  ${newsmodel.likes}"),

                          const SizedBox(height: 5),

                          Row(
                            children: [
                              const SizedBox(width: 4),
                               ElevatedButton(onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NewsDetail(newsModel: newsmodel),
                                  ),
                                );
                              }, child: Text("Lihat"))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }



  Widget buttonLike() {
    return Column(
      children: [ElevatedButton(
        
        onPressed: () {
          setState(() {
            
          });
        },
        child: const Text("Liked"),
      )],
    );
  }
}