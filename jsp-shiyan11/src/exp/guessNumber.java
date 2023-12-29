package exp;

public class guessNumber {
    private int answer = 0; //        系统随机生成的一个数
    private int guessNumber = 0; //   用户猜的数
    private int guessCount = 0;  //   用户猜的次数
    private String result = null; //  最终的结果
    private boolean right = false; // 用户是否猜对

    // 获取答案
    public int getAnswer() {
        return answer;
    }

    public void setAnswer(int answer) {
        this.answer = answer;
        guessCount = 0;
    }

    public int getGuessNumber() {
        return guessNumber;
    }

    public void setGuessNumber(int guessNumber) {
        this.guessNumber = guessNumber;
        this.guessCount++;  // 每猜一次 次数加一
        if (guessNumber == answer) {
            result = "恭喜你猜对啦，答案是：" + this.answer;
            right = true;
        } else if (guessNumber > answer) {
            result = "不好意思，你猜大了";
            right = false;

        } else if (guessNumber < answer) {
            result = "不好意思，你猜小了";
            right = false;

        } else if (this.answer == -1 || this.answer > 100) {
            result = "请输入1-100的整数";
            right = false;
        }

    }

    public int getGuessCount() {
        return guessCount;
    }

    public void setGuessCount(int guessCount) {
        this.guessCount = guessCount;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public boolean isRight() {
        return right;
    }

    public void setRight(boolean right) {
        this.right = right;
    }
}
