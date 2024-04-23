import "package:flutter/material.dart";
import "package:tmdbmovie/features/UI/detailspage/detailspage.dart";
import "package:tmdbmovie/utils/converttotext.dart";

class TvShows extends StatelessWidget {
  final List tvshows;
  const TvShows({super.key, required this.tvshows});

  void _navigateToDetailsPage(BuildContext context, tvshow) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailsPage(
          detailslist: tvshow,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(tvshows);
    print('tv');
    return Container(
      height: height / 3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tvshows.length,
          itemBuilder: (context, indx) {
            return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      _navigateToDetailsPage(context, tvshows[indx]);
                    },
                    child: Ink(
                      height: height / 4,
                      width: width / 2.3,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 78, 78, 78),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://image.tmdb.org/t/p/w500" +
                                  tvshows[indx]['poster_path']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                        width: width / 2.3,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: ConvertText(
                            text: tvshows[indx]['original_name'] == null
                                ? "Loading..."
                                : tvshows[indx]["original_name"],
                            size: 16,
                            clr: const Color.fromARGB(255, 219, 217, 217))),
                  )
                ],
              ),
            );
          }),
    );
  }
}
