package org.codenova.talkhub.model.dao;

import org.codenova.talkhub.model.vo.Post;
import org.codenova.talkhub.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class PostDAO {
    public boolean create(Post one) {
        boolean result = false;
        try {
            Connection conn = ConnectionFactory.open();

            PreparedStatement ps = conn.prepareStatement("insert into posts values(null, ?, ?, ?, ?, 0, 0, now(), now())");

            ps.setString(1, one.getWriterId());
            ps.setString(2, one.getCategory());
            ps.setString(3, one.getTitle());
            ps.setString(4, one.getContent());

            int r = ps.executeUpdate();
            result = true;  // r값을 확인안하고 result 를 true 로 설정한 이유?

            conn.close();
        }catch(Exception e) {
            System.out.println("UserDAO.create : "+ e.toString() );
        }
        return result;
    }
}
