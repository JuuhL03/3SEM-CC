public class Main {

    public static void main(String[] args){

        AlunoDao funcoes = new AlunoDao();

        Aluno aluno = new Aluno();
        aluno.setNomeAluno("Alvin");
        aluno.setEmailAluno("alvin@gmail.com");

        //Adicione o aluno à lista
        funcoes.createAluno(aluno);

        aluno = new Aluno();
        aluno.setNomeAluno("Luana");
        aluno.setEmailAluno("luana@gmail.com");

        funcoes.createAluno(aluno);

        System.out.println("==== APÓS ADIÇÃO ======");
        listarTodosAlunos(funcoes);

        //Busca o aluno adicionado na lista
        Aluno alvin = funcoes.readAluno("Alvin","alvin@gmail.com");

        alvin.setEmailAluno("alvinNovoEmail@gamil.com");
        funcoes.updateAluno(alvin);

        System.out.println("==== APÓS EDIÇÃO ======");
        listarTodosAlunos(funcoes);

        //Busca aluna luana
        Aluno luana = funcoes.readAluno("Luana",null);
        funcoes.deleteAluno(luana);

        System.out.println("==== APÓS REMOÇÃO ======");
        listarTodosAlunos(funcoes);

    }
    public static void listarTodosAlunos(AlunoDao funcoes) {
        System.out.println("=========== ALUNOS =============");
        for(Aluno alunoLoop : funcoes.alunos){
            System.out.println("Nome: "+alunoLoop.getNomeAluno() + " | Email: " + alunoLoop.getEmailAluno());
        }
        System.out.println("===============================");

    }
}
