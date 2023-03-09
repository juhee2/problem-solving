/* 
    문제: https://school.programmers.co.kr/learn/courses/30/lessons/12909
    제목: 올바른 괄호
*/

function solution(s) {
  if (s.startsWith(")")) return false;

  let stack = [];
  for (let i = 0; i < s.length; i++) {
    if (s[i] === "(") {
      stack.push(s[i]);
    } else {
      if (stack.length === 0) return false;
      stack.pop();
    }
  }

  answer = stack.length === 0 ? true : false;

  return answer;
}

/**
 * 굳이 s 를 split 하지 않아도됨!
 */
// 효율성 테스트 2번 통과 실패
function solution_fail(s) {
  if (s.startsWith(")")) return false;
  const input = s.split("");

  let stack = [];
  for (let i = 0; i < input.length; i++) {
    if (input[i] === "(") {
      stack.push(input[i]);
    } else {
      if (stack.length === 0) return false;
      stack.pop();
    }
  }

  answer = stack.length === 0 ? true : false;

  return answer;
}
