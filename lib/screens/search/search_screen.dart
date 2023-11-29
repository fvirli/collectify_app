import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _sortOption = 'Relevance';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildSearchBar(),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: _buildSortDropdown(),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: _buildSearchResults(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search...',
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            _searchController.clear();
          },
        ),
      ),
    );
  }

  Widget _buildSortDropdown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Sort by:'),
        const SizedBox(width: 8),
        DropdownButton<String>(
          value: _sortOption,
          onChanged: (String? newValue) {
            setState(() {
              _sortOption = newValue!;
            });
          },
          items: <String>['Relevance', 'Date', 'Popularity', 'Price']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildSearchResults() {
    // Placeholder data for demonstration purposes
    List<String> searchResults = [
      'BE by BTS',
      'Proof By BTS',
      'Almond by Wong Pyung Sohn',
      'The Power Of Language by Shin Do Hyun',
      'Sky by me',
      'Map Of The Soul by Jung',
      'Butter by BTS',
      'Happier Than Ever by Billie Eilish',
      'Demian by Hermann Hesse',
      'Kim Ji Yeong born 1982 by Cho Nam Joo',
      // ... add more results as needed
    ];

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index]),
          // You can customize this ListTile as needed
        );
      },
    );
  }
}
