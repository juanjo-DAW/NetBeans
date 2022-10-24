<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
private static final int NUM_PLANTES = 6;
private static final int NUM_HAB = 11;
private static final int MAX_CLIENTS = 5;
private boolean habBuides(int[][] hotel) {
boolean trobat = false;
return trobat;
// He puesto las constantes con un valor mas del determinada para a la hora de printar no salga habitacion 0 o planta 0
}

private int[] ocupadas(int[][] hotel){
int [] ocupades = new int[NUM_PLANTES];
int suma = 0;

       for(int i = 1; i < NUM_PLANTES; i++){

        for(int j = 1; j < NUM_HAB; j++){
            if (hotel[i][j] >= 1){
            suma++;
            }      
       }    
       ocupades[i] = suma;
       suma = 0;
        }
   
return ocupades;
}


private boolean Vacias(int[][] hotel) {
boolean trobat = false;
    int i=0,j=0;
        while(trobat == false && i < NUM_PLANTES) {
            while(trobat == false && i < NUM_HAB) {
                if(hotel[i][j]== 0){
                    trobat=true;
                    }
                    j++;
                }
                i++;
            }
return trobat;
}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<%
    Random rand = new Random();
    int suma = 0;
   
    int[][] clientes = new int[NUM_PLANTES][NUM_HAB];
        for(int i = 1; i < NUM_PLANTES; i++){
            for(int j = 1 ; j < NUM_HAB; j++){
                clientes[i][j] =  rand.nextInt(MAX_CLIENTS);
        }
       }
       
       for(int i = 1; i < NUM_PLANTES; i++){

       out.println("<br/>Planta " + i);
       out.println("<br/><hr/>");
        for(int j = 1; j < NUM_HAB; j++){

        out.println("Habitacion " + j + " : tiene " + clientes[i][j] + " personas<br/>");    
       
        }
       
    }
        int[] array = new int[NUM_PLANTES];
        array = ocupadas(clientes);
       
        for(int h = 1; h < NUM_PLANTES; h++){
        out.println("<br/>Total habitaciones ocupadas [" + array[h] + "] en la planta " + h + "<br/><br/>" );
    }

%>
</html>
