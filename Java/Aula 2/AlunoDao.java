import java.util.ArrayList;
import java.util.List;

public class AlunoDao {

    List<Aluno> alunos = new ArrayList<>();
    public void createAluno(Aluno aluno){

        alunos.add(aluno);
    }

    public Aluno readAluno(String nomeAluno, String emailAluno){
        for(Aluno alunoLoop : alunos){
            if(alunoLoop.getNomeAluno().equals(nomeAluno)){
                System.out.println("O nome do aluno é " + nomeAluno);
                return alunoLoop;
            }
            if(alunoLoop.getEmailAluno().equals(emailAluno)){
                System.out.println("E o seu email é " + emailAluno);
                return alunoLoop;
            }
        }
        return null;
    }

    public void updateAluno(Aluno aluno){
        for(Aluno alunoLoop : alunos){
            if(alunoLoop.getNomeAluno().equals(aluno.getNomeAluno())){

                alunoLoop.setNomeAluno(aluno.getNomeAluno());
                alunoLoop.setEmailAluno(aluno.getEmailAluno());
            }
        }
        System.out.println("Aluno atualizado com sucesso!");
    }

    public void deleteAluno(Aluno aluno){

        alunos.remove(aluno);
        System.out.println("Aluno deletado com sucesso!");
    }
}
