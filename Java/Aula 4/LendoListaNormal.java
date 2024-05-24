import java.util.ArrayList;
import java.util.Collections;

public class LendoListaNormal {

    public static void main(String[] args) {
        ArrayList < String > nomes = new ArrayList < String > ();

        nomes.add("Galileu");
        nomes.add("Cubas");
        nomes.add("Alberto");

        //Lendo a lista desordenada
        for (String nome: nomes) {
            System.out.println(nome);
        }

        //Ordenando e lendo
        Collections.sort(nomes);

        for (int i = 0; i < nomes.size(); i++) {
            System.out.println(nomes.get(i));
        }
    }
}