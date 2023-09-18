import 'package:flutter/material.dart';

void main() {
runApp(const RunMyApp());
}

class RunMyApp extends StatefulWidget {
const RunMyApp({super.key});

@override
State<RunMyApp> createState() => _RunMyAppState();
}

class _RunMyAppState extends State<RunMyApp> {
ThemeMode _themeMode = ThemeMode.system;//we have to make the new variable and then define the method.
void changeTheme(ThemeMode themeMode) {
  

	setState(() {
	_themeMode = themeMode;
	});
}

@override
Widget build(BuildContext context) {
	return MaterialApp(
	theme: ThemeData(primarySwatch: Colors.green),
		
	// standard dark theme
	darkTheme: ThemeData.dark(),
	themeMode: _themeMode,
	debugShowCheckedModeBanner: false,
	home: Scaffold(
		appBar: AppBar(
		title: const Text('Device Controlled theme Mode'),
		
		),
		body: Center(
		child: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
			const Text(
				'Choose your theme:',
			),
			Row(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				children: [
					
				// Change theme & rebuild to
				// show it using these buttons
				ElevatedButton(
					onPressed: () {
						changeTheme(ThemeMode.light);
					},
					child: const Text('Light theme')),
				ElevatedButton(
					onPressed: () {
						changeTheme(ThemeMode.dark);
					},
					child: const Text('Dark theme')),
					
				],
			),
			],
		),
		),
	),
	);
}
}
