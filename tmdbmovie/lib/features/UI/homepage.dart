import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List trendingmovies = [];
  List trendingtopratedmovies = [];
  List tv = [];
  final String apikey = dotenv.env['API'].toString();
  final String accesstoken = dotenv.env["ACCESSTOKEN"].toString();

  @override
  void initState() {
    loadMovies();
    super.initState();
  }

  loadMovies() async {
    TMDB tmdbwithcustomlogs = TMDB(
      ApiKeys(apikey, accesstoken),
      logConfig: ConfigLogger(showLogs: true, showErrorLogs: true),
    );

    Map trendingresult = await tmdbwithcustomlogs.v3.trending.getTrending();
    Map topratedresult = await tmdbwithcustomlogs.v3.movies.getTopRated();
    Map tvresult = await tmdbwithcustomlogs.v3.tv.getPopular();

    setState(() {
      trendingmovies = trendingresult["results"];
      trendingtopratedmovies = topratedresult["results"];
      tv = tvresult["results"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TMDB movies"),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 20,
            width: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 50,
                itemBuilder: (context, index) {
                  print(index);
                  return Text("text$index");
                }),
          ),
          Container(
            height: 20,
            width: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 50,
                itemBuilder: (context, index) => Text("text$index")),
          ),
          Container(
            height: 20,
            width: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 50,
                itemBuilder: (context, index) => Text("text$index")),
          ),
          Container(
            height: 20,
            width: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 50,
                itemBuilder: (context, index) => Text("text$index")),
          ),
        ],
      ),
    );
  }
}
