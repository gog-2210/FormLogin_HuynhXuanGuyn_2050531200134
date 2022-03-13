package formlogin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductController {
    public static ArrayList<Product> getAllProduct() throws SQLException{
        ArrayList<Product> list = new ArrayList<>();
        String url = "jdbc:sqlserver://LAPTOP-E2K5JO10\\GUYNIT:1433;databaseName=ThuVien;user=sa;password=guynhuynh123";
        Connection conn = DriverManager.getConnection(url);
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM Sach");
            while(rs.next()){
                String mtl = rs.getString("MaTaiLieu");
                String ttg = rs.getString("TenTacGia");
                String tnsx = rs.getString("TenNhaXuatBan");       
                int sbph = rs.getInt("SoBanPhatHanh");       
                int str = rs.getInt("SoTrang");
                
                Product sach = new Product(mtl,ttg,tnsx,sbph,str);
                list.add(sach);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
