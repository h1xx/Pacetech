package atividadesemana7;

public class Atividadesemana7 {

    public static void main(String[] args) {

         System.out.println("Bem-Vindo");
         System.out.println(" ");
        
         
        
        Empregado andre = new Empregado("Andre Victor", "Leal", 2500.0f);          
        
        System.out.println("Salario de " + andre.getNome()+ " "
        + andre.getSobrenome() + " " + "é de R$" + String.format("%.2f", andre.getSalario()));
        System.out.println("Sua renda anual é de R$" + String.format("%.2f", andre.SalarioAnual()));
        System.out.println("Com aumento de 10% que será concedido, sua renda anual será de R$" + String.format("%.2f", andre.AumentoSalario()));
        
        
        System.out.println(" ");
          
                
        Empregado matheus = new Empregado("Matheus", "Oliveira", 3000.0f);
       
        System.out.println("Salario de " + matheus.getNome()+ " "
        + matheus.getSobrenome() + " " + "é de R$" + String.format("%.2f", matheus.getSalario()));
        System.out.println("Sua renda anual é de R$" + String.format("%.2f", matheus.SalarioAnual()));
        System.out.println("Com aumento de 10% que será concedido, sua renda anual será de R$" + String.format("%.2f", matheus.AumentoSalario()));
    
        System.out.println(" ");
        System.out.println("-------------- fim ----------------");

    }

}
