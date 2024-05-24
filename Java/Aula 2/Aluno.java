public class Aluno {
    private String nomeAluno;
    private String emailAluno;
    public Aluno(String nomeAluno, String emailAluno) {
        this.nomeAluno = nomeAluno;
        this.emailAluno = emailAluno;
    }

    public Aluno() {

    }

    public String getNomeAluno() {

        return nomeAluno;
    }

    public void setNomeAluno(String nomeAluno) {

        this.nomeAluno = nomeAluno;
    }

    public String getEmailAluno() {

        return emailAluno;
    }

    public void setEmailAluno(String emailAluno) {

        this.emailAluno = emailAluno;
    }
}

