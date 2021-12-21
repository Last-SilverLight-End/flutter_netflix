import 'package:flutter/material.dart';
import 'package:fluuterandfirebase/model/model_movie.dart';
class CarouselImage extends StatefulWidget {

  final List <Movie> ? movies;
  CarouselImage({this.movies});
   _CarouselImageState createState() => _CarouselImageState();

}

class _CarouselImageState extends State<CarouselImage> {
  List<Movie> ? movies;
  List<Widget> ? images;
  List<String> ? keywords;
  List<bool> ? likes;
  int _currenetPage =0;
  String ? _currentKeyword;
  
  @override

  void initState() {

    super.initState();

    movies = widget.movies; 
    images = movies?.map((e) => Image.asset(e.poster)).toList();
    keywords = movies?.map((e) => e.keyword).toList();
    likes = movies?.map((e) => e.like).toList();
    _currentKeyword = keywords![0];

  }

  @override
  Widget build(BuildContext context){
    return Container();
  }
}