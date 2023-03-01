/* 
    문제: https://school.programmers.co.kr/learn/courses/30/lessons/12951
    제목: JadenCase 문자열 만들기
*/

function solution(s) {
  var answer = "";

  const words = s.split(" ");
  const startNumRegExp = new RegExp("^[0-9]");
  answer = words
    .map((word) => {
      if (startNumRegExp.test(word)) return word.toLowerCase();
      else
        return word.substr(0, 1).toUpperCase() + word.substr(1).toLowerCase();
    })
    .join(" ");

  return answer;
}
