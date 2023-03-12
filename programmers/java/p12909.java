/**
 * 문제 : https://school.programmers.co.kr/learn/courses/30/lessons/12909?language=java
 * 제목 : 올바른 괄호
 */
public class p12909 {
    public static void main(String[] args) {
        String s = "(())()";

        solution(s);
    }

    public static boolean solution(String s) {
        boolean answer = true;

        if (s.startsWith(")")) return false;

        int check = 0;
        for (char ss : s.toCharArray()) {
            check += (ss == '(') ? 1 : -1;
            if (check < 0) return false;
        }

        answer = check == 0 ? true : false;

        return answer;
    }
}
