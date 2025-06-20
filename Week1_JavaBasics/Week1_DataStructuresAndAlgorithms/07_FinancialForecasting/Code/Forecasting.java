package FinancialForecasting.Code;

public class Forecasting {
    public static void main(String[] args) {
        double[] sales = {10000, 12000, 13000, 14000, 15000};
        double total = 0;

        for (double s : sales) {
            total += s;
        }

        double average = total / sales.length;
        System.out.println("Average Monthly Sales: " + average);
        System.out.println("Forecasted Sales Next Month: " + average);
    }
}
