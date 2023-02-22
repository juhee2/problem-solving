package programmers.java;

class Solution {
    public String solution(String s) {
        String answer = "";
        String[] numbers = s.split(" ");
        int max = 0, min = 0;
        for (int i = 0; i < numbers.length; i++) {
            int num = Integer.parseInt(numbers[i]);
            
            if (i == 0) {
                min = num; max = num;
                continue;
            }
            
            min = (min > num) ? num : min;
            max = (max < num) ? num : max;
        }
        
        answer = min + " " + max;
            
        return answer;
    }
}