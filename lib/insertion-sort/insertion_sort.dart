void insertionSort(List<int> sequence) {
  if (sequence == null || sequence.length == 0) {
    return;
  }

  for (var j = 1; j < sequence.length; j++) {
    var key = sequence[j];

    var i = j - 1;
    while (i >= 0 && sequence[i] > key) {
      sequence[i+1] = sequence[i];
      i--;
    }

    sequence[i+1] = key;
  }
}
