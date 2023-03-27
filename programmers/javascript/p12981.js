/**
 * 문제: https://school.programmers.co.kr/learn/courses/30/lessons/12981
 * 제목: 영어 끝말잇기
 */

// var words = ["hello", "one", "even", "never", "now", "world", "draw"];
// var n = 2;
// solution(n, words);

function solution(n, words) {
  var answer = [];
  // 지는 경우,
  // 1. 중복된 단어를 말했을경우
  // 2. 앞단어의 마지막글자로 시작하는 단어가 아닐경우
  let interruptIdx = 0;
  let prevWord = "";
  for (let i = 0; i < words.length; i++) {
    if (i == 0) {
      prevWord = words[0];
      continue;
    }

    if (words[i].startsWith(prevWord.substring(prevWord.length - 1))) {
      // 이전 에 있는거면 break;
      let dup = words.slice(0, i).filter((word) => word == words[i]);
      if (dup.length > 0) {
        interruptIdx = i;
        break;
      }
    } else {
      interruptIdx = i;
      break;
    }

    prevWord = words[i];
  }

  if (interruptIdx > 0) {
    let num = (interruptIdx + 1) % n == 0 ? n : (interruptIdx + 1) % n;
    let round = Math.ceil((interruptIdx + 1) / n);
    answer = [num, round];
  } else {
    answer = [0, 0];
  }

  return answer;
}
