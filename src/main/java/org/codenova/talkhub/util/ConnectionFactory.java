package org.codenova.talkhub.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    public static Connection open() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://database.ch662qumapvg.ap-northeast-2.rds.amazonaws.com:3306/talkhub",
                "admin", "1q2w3e4r");
        return conn;
    }
}
