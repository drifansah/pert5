import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Good Morning",
              style: GoogleFonts.poppins(
                color: const Color(0xff000000),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img-avatar.png"))),
            )
          ],
        ),
      );
    }

    Widget musicHeader() {
      Widget musicCard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Container(
                height: 142,
                width: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              height: 24,
            ),
            musicCard("assets/img-music11.png", "Chill Hits"),
            musicCard("assets/img-music12.png", "Top Gits"),
            musicCard("assets/img-music13.png", "Happy Hits"),
            musicCard("assets/img-music14.png", "Good Time"),
          ],
        ),
      );
    }

    Widget musicPlay() {
      Widget musicCard(String img, String text, String subText) {
        return Container(
          width: 142,
          margin: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 142,
                width: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                subText,
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, bottom: 16),
            child: Text(
              "Just for you",
              style: GoogleFonts.poppins(
                color: const Color(0xff000000),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                musicCard("assets/img-music21.png", "Daily Mix",
                    "Jonas Blue, NOTD, David Guetta and more"),
                musicCard("assets/img-music22.png", "Feeling", "Myself"),
                musicCard("assets/img-music23.png", "Mood Booster",
                    "BTS, Dua Lipa, Malone, Justin Bieber and more"),
              ],
            ),
          ),
        ],
      );
    }

    Widget musicPopular() {
      Widget musicCard(String img, String text, String subText) {
        return Container(
          width: 142,
          margin: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 142,
                width: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                subText,
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, bottom: 16),
            child: Text(
              "Just for you",
              style: GoogleFonts.poppins(
                color: const Color(0xff000000),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                musicCard("assets/img-music12.png", "Good Vibes",
                    "Jonas Blue, NOTD, David Guetta and more"),
                musicCard("assets/img-music13.png", "Mega Hit Mix", "Myself"),
                musicCard("assets/img-music14.png", "Young & Free",
                    "BTS, Dua Lipa, Malone, Justin Bieber and more"),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            header(),
            const SizedBox(
              height: 24,
            ),
            musicHeader(),
            musicPlay(),
            musicPopular()
          ],
        ),
      )),
    );
  }
}
