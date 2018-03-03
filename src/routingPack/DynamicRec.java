package routingPack;

/**
 * Created by Kushn_000 on 02.09.2017.
 */
public class DynamicRec {
    public static void main(String[] args) {
        int sideLength = 7;
        //square(sideLength);

        dynSquare(sideLength);


    }

    public static void square(int squareLength) {
        for (int i = 0; i < squareLength; i++) {
            System.out.println();
            for (int j = 0; j < squareLength; j++)
                System.out.print("*");
        }
        //Console Clear
    }

    public static void dynSquare(int dinSquareLength) {
        for (int i = 0; i < dinSquareLength; i++) {
            square(i);
        }
    }
}
