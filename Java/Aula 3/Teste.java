public class Teste {
    public static void main(String[] args) {
        Agencia agencia = new Agencia();

        Conta conta1 = new Conta("João");
        Conta conta2 = new Conta("Júllia");
        Conta conta3 = new Conta("João");

        agencia.adicionarConta(conta1);
        agencia.adicionarConta(conta2);
        agencia.adicionarConta(conta3);

        conta1.deposito(1000);
        conta2.deposito(500);

        System.out.println("Saldo total da agência: " + agencia.saldoTotal());
}
