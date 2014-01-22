function countSentences(string) {
  return string.split(/\.|\?|!/).length -1
}