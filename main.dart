import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:video_player/video_player.dart';
import 'package:Kronos/alarmManager.dart';

void main() async {


  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
  const AndroidInitializationSettings initializationSettingsAndroid =
  AndroidInitializationSettings('app_icon');
  final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  WidgetsFlutterBinding.ensureInitialized();
  await AndroidAlarmManager.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(seconds: 15)),
                              0,
                              alarmStart,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);



    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (30 * 1))),
                              0,
                              alarmPosture,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (30 * 2))),
                              0,
                              alarmPosture,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (30 * 3))),
                              0,
                              alarmPosture,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (30 * 4))),
                              0,
                              alarmPosture,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (30 * 5))),
                              0,
                              alarmPosture,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (30 * 6))),
                              0,
                              alarmPosture,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    // POSTURE DONE
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (45 * 1))),
                              0,
                              alarmWater,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (45 * 2))),
                              0,
                              alarmWater,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (45 * 3))),
                              0,
                              alarmWater,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (45 * 4))),
                              0,
                              alarmWater,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (45 * 5))),
                              0,
                              alarmWater,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(minutes: (45 * 6))),
                              0,
                              alarmWater,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    //WATER DONE
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(hours: 1)),
                              0,
                              alarmScreentime,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(hours: 2)),
                              0,
                              alarmScreentime,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(hours: 3)),
                              0,
                              alarmScreentime,
                              exact: true,
                              allowWhileIdle: true,
                              wakeup: true,
                              rescheduleOnReboot: true, 
                              alarmClock: true);
    //SCREENTIME DONE

    return MaterialApp(
      title: 'Kronos',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: const Color(0xFFE9D6B2),
      ),
      routes: {
        '/': (context) => MyHomePage(title: 'Kronos'),
        '/quotes': (context) => QuotesScreen(),
        '/exercise': (context) => ExerciseScreen(),
        '/dietary': (context) => DietaryScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(fixedSize: const Size(350,50), textStyle: const TextStyle(fontSize: 20));

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: const AssetImage('assets/kronos/textures/gui/kronos.png')
            ),
            const SizedBox(height: 90),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/exercise',
                );
              },
              child: const Text('Exercise', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/dietary',
                );
              },
              child: const Text('Daily Dietary Plans', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/quotes',
                );
              },
              child: const Text('Quotes', style: TextStyle(color: Colors.white)),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ],
        ),
      ),
    );
  }
}

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({Key? key}) : super(key: key);

  @override
  State<QuotesScreen> createState() => _QuotesState();
}

class _QuotesState extends State<QuotesScreen> {

  var daysSinceEpoch = DateTime.now().millisecondsSinceEpoch ~/ 86400000;

  var votdDaily = [
    Image(image: AssetImage('assets/kronos/textures/votd/Deut31_8.png')),
    Image(image: AssetImage('assets/kronos/textures/votd/IPet5_7.png')),
    Image(image: AssetImage('assets/kronos/textures/votd/Jer29_11.png')),
    Image(image: AssetImage('assets/kronos/textures/votd/Jn14_1.png')),
    Image(image: AssetImage('assets/kronos/textures/votd/Jos1_9.png')),
    Image(image: AssetImage('assets/kronos/textures/votd/Phil4_6.png')),
    Image(image: AssetImage('assets/kronos/textures/votd/Prov3_5-6.png')),
  ];

  var quotesDaily = [
    Image(image: AssetImage('assets/kronos/textures/quotes/00sunday.png')),
    Image(image: AssetImage('assets/kronos/textures/quotes/01monday.png')),
    Image(image: AssetImage('assets/kronos/textures/quotes/02tuesday.png')),
    Image(image: AssetImage('assets/kronos/textures/quotes/03wednesday.png')),
    Image(image: AssetImage('assets/kronos/textures/quotes/04thursday.png')),
    Image(image: AssetImage('assets/kronos/textures/quotes/05friday.png')),
    Image(image: AssetImage('assets/kronos/textures/quotes/06saturday.png')),
  ];
  
  int index = 0;

  @override
  Widget build(BuildContext context) {

    var shownVotd = votdDaily[daysSinceEpoch % votdDaily.length];
    var shownQuote = quotesDaily[daysSinceEpoch % quotesDaily.length];

    var shownImage = [shownVotd, shownQuote];

    tmpFunction() {
      Container(
          child: shownImage[index]
      );
    };

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                        print('KRONOS: SETTING TO VOTD');
                      });
                    },
                    child: Text("Verse of the Day")),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        index = 1;
                        print('KRONOS: SETTING TO QUOTES');
                      });
                    },
                    child: Text("Quotes")),
              ],
            ),
            Container(
              child: shownImage[index],
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('BACK', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}



class DietaryScreen extends StatefulWidget {
  const DietaryScreen({Key? key}) : super(key: key);

  @override
  State<DietaryScreen> createState() => _DietaryState();
}

class _DietaryState extends State<DietaryScreen> {

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var daysSinceEpoch = DateTime.now().millisecondsSinceEpoch ~/ 86400000;
  @override

  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        Diet1Widget(),
        Diet2Widget(),
        Diet3Widget(),
        Diet4Widget(),
        Diet5Widget(),
        Diet6Widget(),
        Diet7Widget(),
      ],
    );
  }
}

class Diet1Widget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/kronos/textures/dietaryplans/dp_oneday_1.png')
              ),
              const SizedBox(height: 30),
              Text(
                  '1600 CALORIES MEAL PLAN\nBreakfast: Fiber filled muffins (455.1 cal)\nLunch: Baked sweet potato (235 cal)\nSnack: Spicy pineapple chunks (272 cal)\nDinner: Spicy salmon over creamy eggplant (625 cal)',
                  style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class Diet2Widget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/kronos/textures/dietaryplans/dp_oneday_2.jpg')
              ),
              const SizedBox(height: 30),
              Text(
                  '969.3 CALORIES MEAL PLAN\nBreakfast: Burrito (260 cal)\nLunch: Lentil salad (260.3 cal)\nSnack: Fresh carrots, cucumbers, celery with american (272 cal)\nDinner: Spicy salmon over creamy eggplant (625 cal)\n',
                  style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class Diet3Widget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/kronos/textures/dietaryplans/dp_oneday_3.jpg')
              ),
              const SizedBox(height: 30),
              Text(
                  '924.9 CALORIES MEAL PLAN\nBreakfast: Fruit yogurt parfaits (379 cal)\nLunch: Asian shrimp cups (279.9 cal)\nSnack: Mini cheese board (Grapes, Cheese, Almonds, Pear) (206 cal)\nDinner: Spaghetti Squash (42 cal)',
                  style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class Diet4Widget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/kronos/textures/dietaryplans/dp_oneday_4.jpg')
              ),
              const SizedBox(height: 30),
              Text(
                  '1271.1 CALORIES MEAL PLAN\nBreakfast: Waffles with dates (508 cal)\nLunch: Burrito bowl/salad (543 cal)\nSnack: Pumpkin/sunflower seeds (103 cal)\nDinner: Roasted winter veggie salad (117.7 cal)',
                  style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class Diet5Widget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/kronos/textures/dietaryplans/dp_oneday_5.jpg')
              ),
              const SizedBox(height: 30),
              Text(
                  '1030 CALORIES MEAL PLAN\nBreakfast: Mild rice and spinach egg bowl (350 cal)\nLunch: Butternut squash with turkey/chicken breast (270 cal)\nSnack: Roasted peanuts (170 cal)\nDinner: Sauteed shrimp on warm black bean salad (240 cal)',
                  style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class Diet6Widget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/kronos/textures/dietaryplans/dp_oneday_6.jpg')
              ),
              const SizedBox(height: 30),
              Text(
                  '1151.1 CALORIES MEAL PLAN\nBreakfast: Bread with cheese/egg (293 cal)\nLunch: Tuna salad (187 cal)\nSnack: Banana & granola protein bar (231 cal)\nDinner: BBQ pork with sweet potato salad (440 cal)',
                  style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class Diet7Widget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage('assets/kronos/textures/dietaryplans/dp_oneday_7.jpg')
              ),
              const SizedBox(height: 30),
              Text(
                  '814.8 CALORIES MEAL PLAN\nBreakfast: Oatmeal with peanut butter (276.8 cal)\nLunch: Luvo chicken chile verde with orange (320 cal)\nSnack: Low fat vanilla Greek yogurt and almonds (160 cal)\nDinner: Vegetable salad (160 cal)',
                  style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}


class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseScreen> createState() => _ExerciseState();
}

class _ExerciseState extends State<ExerciseScreen> {
  var exerciseDaily = ['assets/kronos/video/JadesExercise01.mp4', 'assets/kronos/video/JadesExercise02.mp4',
    'assets/kronos/video/JadesExercise03.mp4',];

  var daysSinceEpoch = DateTime.now().millisecondsSinceEpoch ~/ 86400000;
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    var shownExer = exerciseDaily[daysSinceEpoch % exerciseDaily.length];
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset(shownExer);

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise Video'),
      ),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

alarmStart()
{
  NotificationManager n = new NotificationManager();
  n.initNotificationManager();
  n.showNotificationWithDefaultSound("Kronos says!", "Kronos has started the timer. Take care!");
  print("[*] Called from AlarmManager");
  return;
}

alarmPosture()
{
  NotificationManager n = new NotificationManager();
  n.initNotificationManager();
  n.showNotificationWithDefaultSound("Kronos says!", "Hold up, Quasimodo! A Guy Like You shouldn't be hunching your back. Remember to straighten up!");
  print("[*] Called from AlarmManager");
  return;
}

alarmWater()
{
  NotificationManager n = new NotificationManager();
  n.initNotificationManager();
  n.showNotificationWithDefaultSound("Kronos says!", "Hey hey hey! Let's take a break, drink a glass of water to hydrate yourself.");
  print("[*] Called from AlarmManager");
  return;
}

alarmScreentime()
{
  NotificationManager n = new NotificationManager();
  n.initNotificationManager();
  n.showNotificationWithDefaultSound("Kronos says!", "Oops! It looks like you've been using your phone for quite a while now. Head on to Kronos and try to do some exercises!");
  print("[*] Called from AlarmManager");
  return;
}

