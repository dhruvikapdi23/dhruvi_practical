
import 'package:dhruvi_practical/provider/flight_detail_provider.dart';
import 'package:dhruvi_practical/provider/flight_list_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/theme/app_theme.dart';
import 'config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context1, AsyncSnapshot<SharedPreferences> snapData) {
          if (snapData.hasData) {
            return MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                      create: (_) => ThemeService(snapData.data!,context)),
                  ChangeNotifierProvider(
                      create: (_) => FlightListProvider()),
                  ChangeNotifierProvider(
                      create: (_) => FlightDetailProvider()),

                ],
                child: RouteToPage());
          } else {
            return MaterialApp(
                theme: AppTheme.fromType(ThemeType.light).themeData,
                darkTheme: AppTheme.fromType(ThemeType.dark).themeData,
                themeMode: ThemeMode.light,
                debugShowCheckedModeBanner: false,
                home: Container());
          }
        });
  }
}


class RouteToPage extends StatefulWidget {
  const RouteToPage({super.key});

  @override
  State<RouteToPage> createState() => _RouteToPageState();
}

class _RouteToPageState extends State<RouteToPage> {

  @override
  Widget build(BuildContext context) {

    return Consumer<ThemeService>(builder: (context, theme, child) {

      return MaterialApp(
            title: 'Flight Booking',

            debugShowCheckedModeBanner: false,
            theme: AppTheme.fromType(ThemeType.light).themeData,
            darkTheme:
            AppTheme.fromType(ThemeType.dark).themeData,
            themeMode: theme.theme,
            initialRoute: "/flightList",
            routes: appRoute.route);
      }
    );
  }
}
