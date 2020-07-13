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
            backgroundColor: Color.fromARGB(255, 18, 140, 126),
            body: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                // padding: EdgeInsets.all(38),
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
            backgroundColor: Color.fromARGB(255, 18, 140, 126),
            body: Container(
                color: Colors.transparent,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(45))),
                padding: EdgeInsets.all(30),
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
          appBar: AppBar(
            title: Text("Bares"),
            centerTitle: true,
          ),
          backgroundColor: Color.fromARGB(255, 18, 140, 126),
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
