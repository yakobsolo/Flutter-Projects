import 'package:flutter/material.dart';
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
  final String apikey = "1f5ce32369dbfe4b83f605405d87ec1a";
  final String accesstoken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxZjVjZTMyMzY5ZGJmZTRiODNmNjA1NDA1ZDg3ZWMxYSIsInN1YiI6IjY2MjIzZjYyZTY0MGQ2MDE4NmM0NzI2ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.kVlUjDlW_d8SuB4-6UW2BK_o3cP3SsIh-dzTgWC7Xto";

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
      trendingmovies = trendingresult["result"];
      trendingtopratedmovies = trendingresult["result"];
      tv = trendingresult["result"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TMDB movies"),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
