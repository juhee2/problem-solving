import java.util.Arrays;
import java.util.Locale;

/*
 * 문제: https://school.programmers.co.kr/learn/courses/30/lessons/12951
 * 제목: JadenCase 문자열 만들기
 * 메모: 공백이 여러개 올수있다는 거 주의!! 문제 잘읽기
 * 원래는 공백으로 쪼개서 첫글자만 대문자로 바꾸고 붙이면 되겠지 하고 생각했었는데 공백이 맨 마지막에 오는경우 맨마지막의 공백은 제외된다!!!
 */
public class p12951 {
    public static void main(String[] args) {
        String s = "for      the last week  ";
//        String s = "   ";
        System.out.println(solution(s));
    }
    // 한 글자씩
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

//    public static String solution(String s) {
//        String answer = "";
//
//        String[] sArr = s.toLowerCase().split("\\s");
////        System.out.println(Arrays.toString(sArr)); // [for, , , , , , the, last, week] 이렇게됨. 주어진 문자열 week 뒤에 공백이 두개 존재!
//        for (int i = 0; i < sArr.length; i++) {
//            if (sArr[i].equals("")) {
//                answer += " ";
//                continue;
//            }
//            answer += sArr[i].substring(0,1).toUpperCase() + sArr[i].substring(1) + ((i == (sArr.length -1)) ? "" : " ");
//        }
//
//        return answer;
//    }


}
