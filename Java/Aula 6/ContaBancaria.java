public class ContaBancaria {
    private double saldo;

    public ContaBancaria(double saldoInicial) {
        this.saldo = saldoInicial;
    }

    public void sacar(double valor) {
        if (valor > saldo) {
            throw new RuntimeException("Saldo insuficiente para sacar o valor especificado.");
        }
        saldo -= valor;
    }

    public double getSaldo() {
        return saldo;
    }
}
