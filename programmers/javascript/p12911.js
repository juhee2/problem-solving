/**
 * 문제: https://school.programmers.co.kr/learn/courses/30/lessons/12911
 * 제목: 다음 큰 숫자
 */

function solution(n) {
  var answer = 0;
  const cnt = getOneCount(decimalToBinary(n)); // 1 갯수

  let targetCnt = 0;
  while (targetCnt != cnt) {
    n++;
    //console.log(decimalToBinary(n));
    targetCnt = getOneCount(decimalToBinary(n));
  }
  answer = n;

  return answer;
}

function decimalToBinary(num) {
  let convert = "";
  while (num > 0) {
    convert = (num % 2) + convert;
    num = parseInt(num / 2);
  }
  return convert;
}

function getOneCount(b) {
  return b.split("").reduce(function (acc, cur) {
    return acc + Number(cur);
  }, 0);
}

const n = 78;
solution(n);
