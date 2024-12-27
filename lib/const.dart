import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff100B20);
const kTranstionDuration = Duration(milliseconds: 250);
const kGtSectraFine = 'GT Sectra Fine';

// import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
// import 'package:bookly/const.dart';
// import 'package:bookly/core/utils/app_router.dart';
// import 'package:bookly/core/utils/service_locator.dart';
// import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featurd_books_cubit.dart';
// import 'package:bookly/features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';


// void main() {
//   setupServiceLocator();
//   runApp(const Bookly());
// }

// class Bookly extends StatelessWidget {
//   const Bookly({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => FeaturdBooksCubit(
//             getIt.get<HomeRepoImpl>(),
//           )..fetchFeaturedBooks(),
//         ),
//         BlocProvider(
//           create: (context) => NewsetBooksCubit(
//             getIt.get<HomeRepoImpl>(),
//           )..fetchNewsetBooks(),
//         )
//       ],
//       child: MaterialApp.router(
//         routerConfig: AppRouter.router,
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData.dark().copyWith(
//           scaffoldBackgroundColor: kPrimaryColor,
//           textTheme:
//               GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
//         ),
//       ),
//     );
//   }
// }
