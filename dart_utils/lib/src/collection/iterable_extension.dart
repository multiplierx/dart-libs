import '../exceptions/invalid_range_exception.dart';

extension IterableExtension<E> on Iterable<E> {
  /// Separa uma lista em listas menores
  /// com base no tamanho passado por parametro
  /// Exemplo: chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
  List<Iterable<E>> chunk(int size) {
    if (size < 1) throw InvalidRangeException();

    var chunks = <Iterable<E>>[];
    var index = 0;

    do {
      chunks.add(skip(index).take(size));
      index += size;
    } while (index < length);

    return chunks;
  }
}
