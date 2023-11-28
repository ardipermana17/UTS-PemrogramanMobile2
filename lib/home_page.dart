import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Thrifting Apps'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Input'),
                Tab(text: 'List'),
                Tab(text: 'About App'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              // Tab 1 content
              InputForm(),

              // Tab 2 content
              MyListView(),

              // Date Picker tab content
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Text(
                  'Aplikasi ini merupakan aplikasi penjualan produk yang lebih murah dari Mahasiswa Sekolah Tinggi Teknologi Bandung. Ada juga beberapa fitur dalam aplikasi in, yaitu halaman login, halaman register, halaman input data, halaman list informasi, dan halaman tentang aplikasi ini',
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Text(
              "@Copyright by Azhar Kurniawan_22552012036 dan Ardi Permana_18111406",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                height: 2,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Nama Barang',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Harga Barang',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Jumlah Barang',
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: FilledButton(
                onPressed: () {},
                child: const Align(
                    alignment: Alignment.center, child: Text('Simpan')))),
      ],
    );
  }
}

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final List<String> NamaBarang = <String>['Baju', 'Celana', 'Tas'];
  final List<String> Stok = <String>['10', '15', '5'];
  final List<String> Harga = <String>['Rp. 45.000', 'Rp. 60.000', 'Rp. 90.000'];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: NamaBarang.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${NamaBarang[index]} (Stok: ${Stok[index]})'),
              Text(Harga[index]),
            ]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
