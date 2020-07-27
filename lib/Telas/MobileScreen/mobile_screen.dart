import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/produtos_cozinha.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosTabela/produtos_tabela.dart';
import 'package:flutter_website/screens/Bares/widgets/ResumoVenda/resumo_venda.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  PageController pageController = PageController();

  int _selectedIndex = 0;

  void bottomTapped(int index) {
    setState(() {
      _selectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bares"),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 18, 140, 126),
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        controller: pageController,
        children: [
          ProdutosCozinha(),
          ResumoVenda(
            scrollDirection: Axis.vertical,
          ),
          ProdutosTabela(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.kitchen,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("Cozinha"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("Resumo venda"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_grocery_store,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("Produtos"),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          bottomTapped(index);
        },
      ),
    );
  }
}
