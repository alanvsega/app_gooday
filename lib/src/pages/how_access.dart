import 'package:flutter/material.dart';

class HowAccess extends StatefulWidget {
  const HowAccess({super.key});

  @override
  State<HowAccess> createState() => _HowAccessState();
}

class _HowAccessState extends State<HowAccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset(
              'lib/assets/how-access.png',
              width: MediaQuery.of(context).size.width,
              height: 339,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Ótimo dia!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            'Como deseja acessar?',
            style: TextStyle(
              color: Color.fromRGBO(46, 62, 75, 1.0),
              fontSize: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 24,
              height: 62,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                icon: Image.network(
                  'https://cdn-icons-png.flaticon.com/256/2875/2875404.png',
                  width: 32,
                  height: 32,
                ),
                label: const Text(
                  'Como deseja acessar',
                  style: TextStyle(color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(20, 200, 113, 1.0),
                  side: const BorderSide(
                    color: Color.fromRGBO(20, 200, 113, 1.0),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 24,
            height: 62,
            child: OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color.fromRGBO(20, 200, 113, 1.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Outras Opções'),
            ),
          )
        ],
      ),
    );
  }
}
