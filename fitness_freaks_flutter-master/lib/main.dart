import 'package:fitness_freaks/export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<DashboardCubit>(create: (_) => DashboardCubit()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.primarySwatchColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      home: const Splash_Screen(),
      // home: HomeTab(),
    ),
  ));
}










/*
home screen
remains
 pranayam  = lists,details 
 diet      = lists,details
 shopping


*/