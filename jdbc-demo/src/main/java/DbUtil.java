import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import javax.sql.DataSource;
import java.sql.*;

public class DbUtil {
    // jdbc:mysql://<hostname>:<port>/<db>?key1=value1&key2=value2
    public static final String URL = "jdbc:mysql://localhost:3306/db01";
    public static final String USER = "root";
    public static final String PASSWORD = "1234";

    public static void main(String[] args) throws Exception {
        // 加载驱动
        Class.forName("com.mysql.cj.jdbc.Driver");
        // 配置连接池
        HikariConfig config = new HikariConfig();
        config.setJdbcUrl(URL);
        config.setUsername(USER);
        config.setPassword(PASSWORD);
        config.addDataSourceProperty("connectionTimeout", "1000");
        config.addDataSourceProperty("idleTimeout", "6000");
        config.addDataSourceProperty("maximumPoolSize", "10");
        DataSource ds = new HikariDataSource(config);
        try (Connection conn = ds.getConnection()) {
            try (PreparedStatement sta = conn.prepareStatement("select name,age from tb_user where id = ?")) {
                sta.setObject(1, 10);
                try (ResultSet rs = sta.executeQuery()) {
                    while (rs.next()) {
                        System.out.println(rs.getString("name") + rs.getString("age"));
                    }
                }

            }
        }

    }

}
