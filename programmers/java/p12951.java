/*
 * 문제: https://school.programmers.co.kr/learn/courses/30/lessons/12951
 * 제목: JadenCase 문자열 만들기
 * 메모: 공백이 여러개 올수있다는 거 주의!! 문제 잘읽기
 * 원래는 공백으로 쪼개서 첫글자만 대문자로 바꾸고 붙이면 되겠지 하고 생각했었는데 공백이 여러개 올수 있으므로 해당 방법으로는 공백이 여러개 올때 처리를 할수가 없다..
 */
public class p12951 {
    public static void main(String[] args) {
        String s = "for      the last week";
//        String s = "   ";
        solution(s);
    }
    public static String solution(String s) {
        String answer="";

        String[] sArr = s.toLowerCase().split("");
//        System.out.println(Arrays.toString(sArr));
        boolean isFirst = true;
        for (String ss : sArr) {
            if (ss.equals(" ")) {
                isFirst = true;
                answer += ss;
                continue;
            }

            if (isFirst) {
                answer += ss.toUpperCase();
                isFirst = false;
            } else {
                answer += ss;
            }
        }

        return answer;
    }


}
