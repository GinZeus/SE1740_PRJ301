/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Brand;
import model.Cart;
import model.Category;
import model.Info;
import model.Item;
import model.Order;
import model.Product;

/**
 *
 * @author datng
 */
public class ProductDAL extends BaseDAO {

    public ArrayList<Product> getAllProducts() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Product]"
                    + "where deleted=0";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                s.setDeleted(rs.getInt("deleted"));
                products.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public ArrayList<Account> getAllAccount() {
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Account]"
                    + "where deleted=0";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc.setId(rs.getInt("id"));
                acc.setUser(rs.getString("username"));
                acc.setPass(rs.getString("password"));
                acc.setEmail(rs.getString("email"));
                acc.setRole(rs.getInt("role"));
                acc.setFullname(rs.getNString("fullname"));
                acc.setAddress(rs.getNString("address"));
                acc.setPhone(rs.getString("phone_number"));
                acc.setDeleted(rs.getInt("deleted"));
                accounts.add(acc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return accounts;
    }

    public Account getAccountById(String accid) {

        try {
            String sql = "SELECT *"
                    + "  FROM [Account]"
                    + "WHERE id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, accid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc.setId(rs.getInt("id"));
                acc.setUser(rs.getString("username"));
                acc.setPass(rs.getString("password"));
                acc.setEmail(rs.getString("email"));
                acc.setRole(rs.getInt("role"));
                acc.setFullname(rs.getNString("fullname"));
                acc.setAddress(rs.getNString("address"));
                acc.setPhone(rs.getString("phone_number"));
                acc.setDeleted(rs.getInt("deleted"));
                return acc;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deleteAccount(String id) {
        try {
            String sql = "update Account "
                    + "set [deleted]=1\n"
                    + "where id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editAccount(String user, String pass, String email, String role, String name, String address, String phone, String id) {
        try {
            String sql = "update [Account]\n"
                    + "set [username]= ?,\n"
                    + "[password]=?,\n"
                    + "[email]=?,\n"
                    + "[role]=?,\n"
                    + "[fullname]=?,\n"
                    + "[address]=?,\n"
                    + "[phone_number]=?\n"
                    + "where id= ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            statement.setString(3, email);
            statement.setString(4, role);
            statement.setString(5, name);
            statement.setString(6, address);
            statement.setString(7, phone);
            statement.setString(8, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Order> getAllOrder() {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + "  FROM [Order]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order ord = new Order();
                ord.setOrder_id(rs.getInt("order_id"));
                ord.setUser_id(rs.getInt("user_id"));
                ord.setFullname(rs.getNString("fullname"));
                ord.setAddress(rs.getNString("address"));
                ord.setEmail(rs.getString("email"));
                ord.setPhone_number(rs.getString("phone_number"));
                ord.setNote(rs.getNString("note"));
                ord.setDate(rs.getDate("oder_date"));
                ord.setStatus(rs.getInt("status"));
                ord.setTotal_money(rs.getDouble("total_money"));
                orders.add(ord);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orders;
    }

    public void deleteOrder(String oid) {
        try {
            String sql = "delete from OrderDetails\n"
                    + "where order_id =?\n"
                    + "delete from [Order]\n"
                    + "where order_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, oid);
            statement.setString(2, oid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Product> getTop6Products() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT TOP 6 *"
                    + "  FROM [Product]"
                    + "where deleted = 0";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                s.setDeleted(rs.getInt("deleted"));
                products.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public ArrayList<Product> getRandomProducts() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "select top 4 * from Product\n"
                    + "where deleted = 0"
                    + "order by NEWID()";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                s.setDeleted(rs.getInt("deleted"));
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
                    + "WHERE deleted=0"
                    + "and category_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, cid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                s.setDeleted(rs.getInt("deleted"));
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
                    + "WHERE deleted=0"
                    + "and brand_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, bid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                s.setDeleted(rs.getInt("deleted"));
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
                    + "WHERE deleted=0"
                    + "and product_name like ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + txtSearch + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                s.setDeleted(rs.getInt("deleted"));
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
            while (rs.next()) {
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
            while (rs.next()) {
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

        try {
            String sql = "SELECT *"
                    + "  FROM [Product]"
                    + "WHERE deleted=0"
                    + "and product_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, pid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                s.setDeleted(rs.getInt("deleted"));
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Info getInfoByID(String id) {
        try {
            String sql = "select info_id, material, color, title,price, description,imageUrl1, imageUrl2, imageUrl3 \n"
                    + "from Info i, Product p\n"
                    + "where i.info_id=p.product_id\n"
                    + "and p.deleted=0"
                    + "and info_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
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

    public Account login(String user, String pass) {
        try {
            String sql = "select * from [Account]\n"
                    + "where username=?\n"
                    + "and password = ?\n"
                    + "and deleted = 0";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc.setId(rs.getInt("id"));
                acc.setUser(rs.getString("username"));
                acc.setPass(rs.getString("password"));
                acc.setEmail(rs.getString("email"));
                acc.setRole(rs.getInt("role"));
                acc.setFullname(rs.getNString("fullname"));
                acc.setAddress(rs.getNString("address"));
                acc.setPhone(rs.getString("phone_number"));
                acc.setDeleted(rs.getInt("deleted"));
                return acc;

            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        try {
            String sql = "select * from Account \n"
                    + "where [username] = ?\n";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
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

    public void signup(String user, String pass, String email, String name, String address, String phone) {
        try {
            String sql = "insert into Account \n"
                    + "values (?,?,?,?,?,?,'2','0')";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pass);
            statement.setString(3, email);
            statement.setString(4, name);
            statement.setString(5, address);
            statement.setString(6, phone);
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteProduct(String pid) {
        try {
            String sql = "update Product "
                    + "set [deleted]=1\n"
                    + "where product_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, pid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertProduct(String name, String image, String price, String category, String brand) {
        try {
            String sql = "insert into [Product]"
                    + "(product_name,category_id,brand_id,price,imageUrl,create_time,deleted)"
                    + " values(?,?,?,?,?,GETDATE(),'0')";
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

    public void insertInfo(String id, String name, String material, String color, String description, String image1, String image2, String image3) {
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

    public void editProduct(String name, String image, String price, String category, String brand, String pid) {
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

    public int getTotalProduct() {
        try {
            String sql = "select count(*) from Product where deleted=0";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<Product> pagingProduct(int index) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product where deleted=0"
                    + "order by product_id\n"
                    + "offset ? rows fetch next 9 rows only";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, (index - 1) * 9);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product s = new Product();
                s.setId(rs.getInt("product_id"));
                s.setName(rs.getString("product_name"));
                s.setCategory_id(rs.getInt("category_id"));
                s.setBrand_id(rs.getInt("brand_id"));
                s.setImageurl(rs.getString("imageUrl"));
                s.setPrice(rs.getDouble("price"));
                s.setCreateTime(rs.getDate("create_time"));
                s.setDeleted(rs.getInt("deleted"));
                list.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void addOrder(String id, String name, String address, String email, String phone, String note, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            //add order
            String sql = "insert into [Order] "
                    + "values (?,?,?,?,?,?,?,'1',?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.setString(2, name);
            statement.setString(3, address);
            statement.setString(4, email);
            statement.setString(5, phone);
            statement.setString(6, note);
            statement.setString(7, date);
            statement.setDouble(8, cart.getTotalMoney());
            statement.executeUpdate();

            //layid cua order vua add
            String sql1 = "select top 1 order_id from [Order] order by order_id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();

            //add hang OrderDetail
            if (rs.next()) {
                int oid = rs.getInt("order_id");
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into [OrderDetails] "
                            + "values (?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setDouble(3, i.getPrice());
                    st2.setDouble(4, i.getQuantity());
                    st2.executeUpdate();

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        ProductDAL p = new ProductDAL();
//        ArrayList<Order> ord=p.getAllOrder();
//        for(Order o:ord){
//            System.out.println(o);
//        }
        ArrayList<Product> pcid = p.pagingProduct(1);
        for (Product o : pcid) {
            System.out.println(pcid);
        }
    }

}
