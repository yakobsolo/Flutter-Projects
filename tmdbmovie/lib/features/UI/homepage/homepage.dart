import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:tmdbmovie/features/UI/homepage/widgets/toprated.dart';
import 'package:tmdbmovie/features/UI/homepage/widgets/tvshows.dart';
import 'package:tmdbmovie/utils/converttotext.dart';
import 'package:tmdbmovie/features/UI/homepage/widgets/trending.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List trendingmovies = [];
  List topratedmovies = [];
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
    // print(trendingresult);
    setState(() {
      trendingmovies = trendingresult["results"];
      topratedmovies = topratedresult["results"];
      tv = tvresult["results"];
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("TMDB movies"),
        backgroundColor: Color.fromARGB(255, 207, 16, 16),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ConvertText(text: "Trending Movies", size: 24, clr: Colors.white),
            SizedBox(height: 20,),
            TrendingMoives(trendingmovies: trendingmovies,),
            // SizedBox(height: 5,),
            ConvertText(text: "TopRated", size: 24, clr: Colors.white),
            SizedBox(height: 20,),
            TopRatedMovies(topratedmovies: topratedmovies,),
            ConvertText(text: "Tv Shows", size: 24, clr: Colors.white),
            SizedBox(height: 20,),
            TvShows(tvshows: tv,)
          ],
        ),
      ),
    );
  }
}
