public class ConversorDeMoeda {

    private double taxaDolarParaReal = 5.50; 
    private double taxaEuroParaReal = 6.30;

    public double realParaDolar(double valorEmReal) {

        return valorEmReal / taxaDolarParaReal;

    }

    public double dolarParaReal(double valorEmDolar) {

        return valorEmDolar * taxaDolarParaReal;

    }

    public double euroParaReal(double valorEmEuro) {

        return valorEmEuro * taxaEuroParaReal;

    }

public double realParaEuro(double valorEmReal) {

return valorEmReal / taxaEuroParaReal;

'}