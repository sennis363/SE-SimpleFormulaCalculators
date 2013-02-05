
import java.util.*;

public class DataProcessor {

    public double calculateRectangleArea(String length1, String width1) {
        double area1 = Double.parseDouble(length1) * Double.parseDouble(width1);
        return area1;
    }

    public double calculateCircleArea(String radius) {
        double area2 = MainServlet.PI * Double.parseDouble(radius) * Double.parseDouble(radius);
        return area2;
    }

    public double calculateHypotenuse(String leg1, String leg2) {
        double hypotenuse = (Double.parseDouble(leg1) * Double.parseDouble(leg1))
                + (Double.parseDouble(leg2) * Double.parseDouble(leg2));
        hypotenuse = Math.sqrt(hypotenuse);
        return hypotenuse;
    }

    public double calculateOtherLeg(String leg2, String hypotenuse) {
        double leg1 = (Double.parseDouble(hypotenuse) * Double.parseDouble(hypotenuse))
                - (Double.parseDouble(leg2) * Double.parseDouble(leg2));
        leg1 = Math.sqrt(leg1);
        return leg1;
    }
}
