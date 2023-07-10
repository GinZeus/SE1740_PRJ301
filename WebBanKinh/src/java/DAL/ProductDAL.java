/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Brand;
import model.Category;
import model.Info;
import model.Product;

/**
 *
 * @author datng
 */
public class ProductDAL extends BaseDAO{
     public ArrayList<Product> getAllProducts() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Product]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                products.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    public ArrayList<Product> getTop6Products() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT TOP 6 *"
                    + "  FROM [Product]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                products.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    public ArrayList<Product> getProductByCid(String cid) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Product]"
                    + "WHERE category_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, cid);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                products.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    public ArrayList<Product> getProductByBid(String bid) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Product]"
                    + "WHERE brand_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, bid);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                products.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    public ArrayList<Product> searchByName(String txtSearch) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Product]"
                    + "WHERE product_name like ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,"%"+ txtSearch+"%");
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                products.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    public ArrayList<Category> getAllCategory() {
        ArrayList<Category> categories = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Category]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Category c = new Category();
                c.setCid(rs.getInt("category_id"));
                c.setCname(rs.getString("category_name"));
                categories.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return categories;
    }
    public ArrayList<Brand> getAllBrand() {
        ArrayList<Brand> brands = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Brand]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Brand b = new Brand();
                b.setBid(rs.getInt("brand_id"));
                b.setBname(rs.getString("brand_name"));
                b.setBaddress(rs.getString("brand_address"));
                brands.add(b);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return brands;
    }
    public Product getProductById(String pid) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Product]"
                    + "WHERE product_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, pid);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Info getInfoByID(String id) {
        try {
            String sql = "select info_id, material, color, title,price, description,imageUrl1, imageUrl2, imageUrl3 \n" +
                         "from Info i, Product p\n" +
                         "where i.info_id=p.product_id\n" +
                         "and info_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Info s = new Info();
                s.setInfo_id(rs.getInt("info_id"));
                s.setMaterial(rs.getNString("material"));
                s.setColor(rs.getNString("color"));
                s.setTitle(rs.getString("title"));
                s.setPrice(rs.getDouble("price"));
                s.setDescription(rs.getNString("description"));
                s.setImageUrl1(rs.getString("imageUrl1"));
                s.setImageUrl2(rs.getString("imageUrl2"));
                s.setImageUrl3(rs.getString("imageUrl3"));
                return s;
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Account login(String user, String pass){
        try {
            String sql = "select * from Account \n" +
                         "where [username] = ?\n" +
                         "and [password] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Account acc = new Account();
                acc.setId(rs.getInt("id"));
                acc.setUser(rs.getString("username"));
                acc.setPass(rs.getString("password"));
                acc.setEmail(rs.getString("email"));
                acc.setRole(rs.getInt("role"));
                return acc;
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Account checkAccountExist(String user){
        try {
            String sql = "select * from Account \n" +
                         "where [username] = ?\n";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            ResultSet rs = statement.executeQuery();
            while(rs.next())
            {
                Account acc = new Account();
                acc.setId(rs.getInt("id"));
                acc.setUser(rs.getString("username"));
                acc.setPass(rs.getString("password"));
                acc.setEmail(rs.getString("email"));
                acc.setRole(rs.getInt("role"));
                return acc;
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public void signup(String user, String pass, String email){
        try {
            String sql = "insert into Account \n" +
                         "values (?,?,?,'2')";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            statement.setString(3, email);
            statement.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void deleteProduct(String pid){
        try {
            String sql = "delete from Info\n" +
                         "where info_id =?\n" +
                         "delete from Product\n" +
                         "where product_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, pid);
            statement.setString(2, pid);
            statement.executeUpdate();         
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void insertProduct(String name, String image, String price,String category, String brand) {
        try {
            String sql = "insert into [Product]"
                    + "(product_name,category_id,brand_id,price,imageUrl,create_time)"
                    + " values(?,?,?,?,?,GETDATE())";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, category);
            statement.setString(3, brand);
            statement.setString(4, price);
            statement.setString(5, image);
            statement.executeUpdate();         
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void insertInfo(String id, String name, String material, String color,String description,String image1, String image2, String image3) {
        try {
            String sql = "insert into [Info]"
                    + "(info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) "
                    + "values(?,?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.setString(2, material);
            statement.setString(3, color);
            statement.setString(4, name);
            statement.setString(5, description);
            statement.setString(6, image1);
            statement.setString(7, image2);
            statement.setString(8, image3);
            statement.executeUpdate();         
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void editProduct(String name, String image, String price,String category, String brand, String pid) {
        try {
            String sql = "update [Product]"
                    + "set [product_name]=?,"
                    + "[category_id]=?,"
                    + "[brand_id]=?,"
                    + "[price]=?,"
                    + "[imageUrl]=?,"
                    + "[create_time]=GETDATE()"
                    + "where product_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, category);
            statement.setString(3, brand);
            statement.setString(4, price);
            statement.setString(5, image);
            statement.setString(6, pid);
            statement.executeUpdate();         
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     public static void main(String[] args) {
        ProductDAL p=new ProductDAL();
//        ArrayList<Product> products = p.getAllProducts();
//        ArrayList<Category> categories = p.getAllCategory();
//        ArrayList<Brand> brands = p.getAllBrand();
//        ArrayList<Product> productcid = p.getProductByCid("1");
//        ArrayList<Product> productbid = p.getProductByBid("1");
//        ArrayList<Product> search = p.searchByName("KR");
//        Info infoProducts=p.getInfoByID("12");
//        Account acc=new Account();
//        acc=p.login("admin", "admin1");
//        for (Product o:search){
//            System.out.println(o);
//        }
////         System.out.println(infoProducts);
//         System.out.println(acc);
         p.deleteProduct("36");
        
     }

}
