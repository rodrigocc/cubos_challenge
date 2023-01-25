// import 'package:challenge_cubos/presenter/controller/home_controller.dart';
// import 'package:challenge_cubos/themes/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';

// class SearchMovieBar extends StatefulWidget {
//   final HomeController homeController;
//   const SearchMovieBar({Key? key, required this.homeController})
//       : super(key: key);

//   @override
//   _SearchMovieBarState createState() => _SearchMovieBarState();
// }

// class _SearchMovieBarState extends State<SearchMovieBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//           color: ThemeColors.gray8, borderRadius: BorderRadius.circular(100)),
//       width: double.infinity,
//       height: 60,
//       child: Row(
//         children: [
//           const Icon(
//             Icons.search,
//             size: 30,
//             color: ThemeColors.gray2,
//           ),
//           const SizedBox(
//             width: 16,
//           ),
//           SizedBox(
//             width: 250,
//             height: 40,
//             child: Observer(builder: (_) {
//               return TextField(
//                   onChanged: (value) {
//                     widget.homeController.searchMovies(value);
//                   },
//                   style: const TextStyle(color: Colors.black),
//                   decoration: InputDecoration(
//                       hintText: 'Pesquise filmes',
//                       hintStyle: Theme.of(context).textTheme.headline2));
//             }),
//           ),
//         ],
//       ),
//     );
//   }
// }
