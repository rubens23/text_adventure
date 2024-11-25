import 'package:flutter/material.dart';
import 'package:text_adventure/data/HistoriaDataSource.dart';

import 'data/Escolha.dart';
import 'data/Historia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StoryLayout(historia: HistoriaDataSource.historia,),
    );
  }
}

class StoryLayout extends StatefulWidget {
  StoryLayout({Key? key,required this.historia}) : super(key: key);

  final Historia historia;

  @override
  _StoryLayoutState createState() => _StoryLayoutState();
}

class _StoryLayoutState extends State<StoryLayout> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.historia.titulo,
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 26.0)
                ),
                SizedBox(height: 20,),
                Text(widget.historia.sinopse, style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),),

                 ElevatedButton(
                  onPressed: ()=>{
            
                    //IniciarHistoria(historia: widget.historia)
                      Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IniciarHistoria(historia: widget.historia)),
              )
                    

                  },
                   child: Text('Começar',
                   style: TextStyle(fontSize: 16.0),))
                   
               
              ],
            ),
        ),
      ),
    );
  }


  
}

class IniciarHistoria extends StatefulWidget{
  late Historia historia;

  IniciarHistoria({required this.historia});

  @override
  _IniciarHistoriaState createState() => _IniciarHistoriaState();
  
}

class _IniciarHistoriaState extends State<IniciarHistoria>{

  int parteAtualIndex = 0;
  String subparteAtual = "";
  
  @override
    void initState() {
      super.initState();
    

      subparteAtual =  widget.historia.partesHistoria[0].subpartes[0].parte;

    }

  void carregarProximoDestinoDaHistoria(String destino){
    // Procurar a subparte correspondente ao destino
    for(var parte in widget.historia.partesHistoria){
      for(var subparte in parte.subpartes){
        if(subparte.parte == destino){
          setState(() {
            parteAtualIndex = widget.historia.partesHistoria.indexWhere((parte){
                return parte.subpartes.any((subparte) => subparte.parte == destino);
            }); 
            subparteAtual = destino;
        });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    //String escolhaAtual = "";
    //int parteAtualIndex = 0;
    //int indexSubparteAtual = 0;
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(widget.historia.partesHistoria[parteAtualIndex].subpartes[widget.historia.partesHistoria[parteAtualIndex].subpartes.indexWhere((subparte)=> subparte.parte == subparteAtual)].texto, style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0, color: Colors.white),),
                        SizedBox(height: 20.0,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.historia.partesHistoria[parteAtualIndex].subpartes[widget.historia.partesHistoria[parteAtualIndex].subpartes.indexWhere((subparte)=> subparte.parte == subparteAtual)].escolhas.length > 0 ? 'O que você escolhe fazer?' : '',
                           style: 
                           TextStyle(fontFamily: 'Roboto',
                            fontSize: 16.0, color: Colors.white),
                            ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.historia.partesHistoria[parteAtualIndex].subpartes[widget.historia.partesHistoria[parteAtualIndex].subpartes.indexWhere((subparte)=> subparte.parte == subparteAtual)].escolhas.length,
                          itemBuilder: (context, index){
                            int indexSubparte = widget.historia.partesHistoria[parteAtualIndex].subpartes.indexWhere((subparte)=> subparte.parte == subparteAtual);

                            return Padding(padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                            child: CustomButton(escolha: widget.historia.partesHistoria[parteAtualIndex].subpartes[indexSubparte].escolhas[index],
                            onPressed: (destino){
                              //Para qual parte da historia
                              //essa escolha vai me levar?
                              //o destino tem que ser recebido aqui.
                              carregarProximoDestinoDaHistoria(destino);


                            },),
                            );
                          },
                        )

                        


                      ],
                    )

                  ],
                ),
              
            ),
          ),
        ),
      ),
    );
    
  }

}

class CustomButton extends StatelessWidget{
  final Escolha escolha;
  final Function(String) onPressed;

  const CustomButton({Key? key,required this.escolha, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        onPressed(escolha.destinoEscolha);
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shadowColor: Colors.transparent,
        side: BorderSide(
          color: Colors.grey,
          width: 1
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2)
        ),
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      ),
      
      child: Text(
        escolha.textoEscolha,
        style: const TextStyle(
          fontFamily: 'Roboto',
          color: Colors.white
        ),
      ),
      
    );
  }

  
}