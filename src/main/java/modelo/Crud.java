/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author SergioCaballeroS√°ez
 */
public class Crud {
    public static List<Productos> getProductos(){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("persistenciaTPV");
        EntityManager manager = factory.createEntityManager();
        String sql = "SELECT * FROM productos";
        Query q = manager.createNativeQuery(sql,Productos.class);
        List<Productos> productosBD = q.getResultList();
        
        return productosBD;
        
    }
    
}
