import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotifScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifikasi'),
        backgroundColor: const Color(0xFF7553F6),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0), // Tambahkan padding pada ListView
        children: [
          _buildNotifikasiItem(
            title: 'Music Collection',
            subtitle: 'Dont forget to add your daily music collection',
            date: DateTime.now(),
          ),
          _buildNotifikasiItem(
            title: 'Collection Target',
            subtitle:
                'Add more 2 collection to get free access to monthly gift.',
            date: DateTime.now().subtract(const Duration(days: 1)),
          ),
          _buildNotifikasiItem(
            title: 'Collection Target',
            subtitle:
                'Add more 1 collection to get free access to monthly gift.',
            date: DateTime.now().subtract(const Duration(days: 1)),
          ),
        ],
      ),
    );
  }

  Widget _buildNotifikasiItem({
    required String title,
    required String subtitle,
    required DateTime date,
  }) {
    return Container(
      margin: const EdgeInsets.only(
          bottom: 16.0), // Tambahkan margin antar notifikasi
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: _NotifikasiItem(
        title: title,
        subtitle: subtitle,
        date: date,
      ),
    );
  }
}

class _NotifikasiItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final DateTime date;

  const _NotifikasiItem({
    required this.title,
    required this.subtitle,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(
        _formatDate(date),
        style: const TextStyle(color: Colors.grey),
      ),
      onTap: () {
        // Tambahkan aksi yang dijalankan saat notifikasi diklik
      },
    );
  }

  String _formatDate(DateTime date) {
    final dateFormat = DateFormat('dd MMM yyyy HH:mm');
    return dateFormat.format(date);
  }
}
