import 'SubParteHistoria.dart';

class ParteHistoria{
    final int idParte;
    final int numParte;
    final List<SubParteHistoria> subpartes;

  ParteHistoria({
    required this.idParte,
    required this.numParte,
    required  this.subpartes});
}