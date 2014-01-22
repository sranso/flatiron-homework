function countSentences(string) {
  var regex = /(\.|\?|\!)/g;
  var match = string.match(regex);
  if (match) {
    return match.length;
  }
  else {
    return 0;
  }
}