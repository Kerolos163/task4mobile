import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task4mobile/func.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Basketball Score Counter"),
        ),
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColumnForTeam(team: "TEAM A"),
                divider(),
                ColumnForTeam(team: "TEAM B")
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamA = 0;
                  teamB = 0;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[350],minimumSize:const Size(150, 50)),
              child: const Text("Reset",style: TextStyle(color: Colors.black),),
            )
          ],
        ));
  }

  Widget divider() => Container(height: 400, width: 1, color: Colors.grey);

  Widget ColumnForTeam({required String team}) => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                team,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                team == "TEAM A" ? '$teamA' : '$teamB',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    team == "TEAM A"
                        ? teamA = incPoint(teamA, 1)
                        : teamB = incPoint(teamB, 1);
                  });
                },
                child: const Text(
                  '+1 POINT',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      team == "TEAM A"
                          ? teamA = incPoint(teamA, 2)
                          : teamB = incPoint(teamB, 2);
                    });
                  },
                  child: const Text('+2 POINT')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      team == "TEAM A"
                          ? teamA = incPoint(teamA, 3)
                          : teamB = incPoint(teamB, 3);
                    });
                  },
                  child: const Text('+3 POINT')),
            ],
          ),
        ),
      );
}
