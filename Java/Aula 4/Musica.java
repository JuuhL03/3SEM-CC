import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Musica implements Comparable < Musica > {
    private String nome;
    private String genero;
    private String banda;
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getGenero() {
        return genero;
    }
    public void setGenero(String genero) {
        this.genero = genero;
    }
    public String getBanda() {
        return banda;
    }
    public void setBanda(String banda) {
        this.banda = banda;
    }
    @Override
    public int compareTo(Musica musica) {
        return nome.compareTo(musica.nome);
    }

    public static void main(String[] args) {
        List < Musica > musicas = new ArrayList < Musica > ();

        Musica musica1 = new Musica();
        musica1.setNome("Psycho Circus");
        musica1.setGenero("Rock Roll");
        musica1.setBanda("Kiss");

        Musica musica2 = new Musica();
        musica2.setNome("Rock 'n' Roll Dream");
        musica2.setGenero("Rock Roll");
        musica2.setBanda("AC DC");

        Musica musica3 = new Musica();
        musica3.setNome("No Prayer For The Dying");
        musica3.setGenero("Rock Roll");
        musica3.setBanda("IRON MADEN");

        Musica musica4 = new Musica();
        musica4.setNome("All Screwed Up");
        musica4.setGenero("Rock Roll");
        musica4.setBanda("AC DC");

        Musica musica5 = new Musica();
        musica5.setNome("Prodigal Son");
        musica5.setGenero("Rock Roll");
        musica5.setBanda("IRON MADEN");

        musicas.add(musica1);
        musicas.add(musica2);
        musicas.add(musica3);
        musicas.add(musica4);
        musicas.add(musica5);

        //Leitura desordenada
        for (Musica musica: musicas) {
            System.out.println(musica.getNome());
        }

        //Ordenando e lendo
        Collections.sort(musicas);
        for (Musica musica: musicas) {
            System.out.println(musica.getNome());
        }
    }
}