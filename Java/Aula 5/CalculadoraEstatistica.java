public class CalEstatistica {

    public double calcularMedia(double[] valores) {
        if (valores == null || valores.length == 0) {
        }

        double soma = 0;
        for (double valor : valores) {
            soma += valor;
        }

        return soma / valores.length;
    }

    public static void main(String[] args) {

        double[] valores = {10, 20, 30, 40, 50};
        CalEstatistica CalEstatistica = new CalEstatistica();
        double media = CalEstatistica.calcularMedia(valores);
        System.out.println("Media: " + media);
    }
}