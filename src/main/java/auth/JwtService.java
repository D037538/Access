package auth;

import com.google.gson.Gson;

import com.jwt.model.Registration;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Timestamp;
import java.util.Date;


@Service
public class JwtService {

    @Autowired
    private Environment environment;

    private static final String ISSUER = "in.goalseek.bloomr";

    public String tokenFor(Registration user) throws IOException, URISyntaxException {
        long nowMillis = System.currentTimeMillis();
        Date now = new Date(nowMillis);
        long expirationTime = 1000000000;

        //Let's set the JWT Claims
        JwtBuilder builder = Jwts.builder().setId(user.getR_username())
                .setIssuedAt(now)
                .setSubject("JWT")
                .claim("user", user)
                .setIssuer(ISSUER)
                .signWith(SignatureAlgorithm.HS256, environment.getRequiredProperty("jwt.secret"));

        //if it has been specified, let's add the expiration
        long expMillis = nowMillis + expirationTime;
        Date exp = new Date(expMillis);
        builder.setExpiration(exp);

        //Builds the JWT and serializes it to a compact, URL-safe string
        return builder.compact();
    }



    public Registration verify(String token) throws IOException, URISyntaxException, JWTCustomException {
        try {
            Claims claims = Jwts.parser().setSigningKey(environment.getRequiredProperty("jwt.secret"))
                    .parseClaimsJws(token).getBody();
            Gson gson = Helper.getGsonWithTypeAdapter(Timestamp.class, new LongToTimestampDeserializer());
            return gson.fromJson(gson.toJson(claims.get("user")), Registration.class);
        } catch (Exception e){
        	Registration user = new Registration();
            user.setR_username("405");
            return user;
//           throw new JWTCustomException("Session expired, please login again");
        }
    }
}