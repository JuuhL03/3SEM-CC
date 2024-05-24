public class TesteCalculadora {

    public static void main(String[] args) {
        testCalBasica();
        testCalCientifica();
    }

    public static void testCalBasica() {
        CalBasica CalBasica = new CalBasica();

        double resultadoSoma = CalBasica.soma(10,10);
        System.out.println("Soma: " + resultadoSoma);

        double resultadoSubtracao = CalBasica.subtracao(10,10);
        System.out.println("Subtração: " + resultadoSubtracao);

        double resultadoDivisao = CalBasica.divisao(10,10);
        System.out.println("Divisão: " + resultadoDivisao);

        double resultadoMultiplicacao = CalBasica.multiplicacao(10,10);
        System.out.println("Multiplicação: " + resultadoMultiplicacao);
    }

    public static void testCalCientifica() {
        CalCientifica CalCientifica = new CalCientifica();

        double potenciaResul = CalCientifica.potencia(10, 3);
        System.out.println("Potência: " + potenciaResul); 

        double raizQResul = CalCientifica.raizQuadrada(36);
        System.out.println("Raiz Quadrada: " + raizQResul);
    }
}