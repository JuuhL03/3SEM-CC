public class Agencia {
    private Conta[] contas;
    private int numContas;

    public Agencia() {
        contas = new Conta[10];
        numContas = 0;
    }

    public void adicionarConta(Conta conta) {
        boolean contaExistente = false;
        for (int i = 0; i < contas.length; i++) {
            if (contas[i].getTitular().equals(conta.getTitular())) {
                contaExistente = true;
                break;
            }
        }
        if (!contaExistente && numContas < 10) {
            contas[numContas] = conta;
            numContas++;
            System.out.println("Conta adicionada.");
        } else if (contaExistente) {
            System.out.println("Conta já existente.");
        } else {
            System.out.println("Número máximo de contas atingido.");
        }
    }

    public double saldoTotal() {
        double saldoTotal = 0;
        for (int i = 0; i < numContas; i++) {
            saldoTotal += contas[i].getSaldo();
        }
        return saldoTotal;
    }
}