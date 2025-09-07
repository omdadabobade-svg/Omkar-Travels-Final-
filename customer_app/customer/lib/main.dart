import 'package:flutter/material.dart';

void main() {
  runApp(const OmkarTravelsRewardsApp());
}

class OmkarTravelsRewardsApp extends StatelessWidget {
  const OmkarTravelsRewardsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Omkar Travels Rewards',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DemoHomePage(),
    );
  }
}

class DemoHomePage extends StatelessWidget {
  const DemoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Omkar Travels Rewards')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Demo User: 9123456789', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 12),
          const Text('Balance: 100 Coins (from PNR1001)', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Redeem PNR1001 → +100 Coins'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Withdraw 50 Coins'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Enquiry (Call 9922938209)'),
          ),
        ],
      ),
    );
  }
}
