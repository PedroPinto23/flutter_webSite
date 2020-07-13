import 'package:flutter/material.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosCozinha/produtos_cozinha.dart';
import 'package:flutter_website/screens/Bares/widgets/ProdutosTabela/produtos_tabela.dart';
import 'package:flutter_website/screens/Bares/widgets/ResumoVenda/resumo_venda.dart';

class Bares extends StatefulWidget {
  @override
  _BaresState createState() => _BaresState();
}

class _BaresState extends State<Bares> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600 && constraints.maxWidth < 1024) {
        return Scaffold(
            body: Container(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProdutosCozinha(),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 280,
                        child: ResumoVenda(
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        child: ProdutosTabela(),
                      ),
                    ],
                  ),
                )));
      } else if (constraints.maxWidth >= 1024) {
        return Scaffold(
            body: Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(flex: 2, child: ProdutosCozinha()),
                    Expanded(
                        flex: 1,
                        child: ResumoVenda(
                          scrollDirection: Axis.vertical,
                        )),
                    Expanded(flex: 2, child: ProdutosTabela()),
                  ],
                )));
      } else {
        return Scaffold(
          body: PageView(
            controller: pageController,
            children: [
              ProdutosCozinha(),
              ResumoVenda(
                scrollDirection: Axis.vertical,
              ),
              ProdutosTabela()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Icon(
                  Icons.kitchen,
                  color: Colors.white,
                ),
                title: Text("Cozinha"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.monetization_on,
                  color: Colors.white,
                ),
                title: Text("Resumo venda"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_grocery_store,
                  color: Colors.white,
                ),
                title: Text("Produtos"),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Theme.of(context).primaryColor,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        );
      }
    });
  }
}
