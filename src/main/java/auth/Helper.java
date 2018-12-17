package auth;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.math.BigInteger;
import java.security.SecureRandom;

public class Helper {

    @Autowired
    private Environment environment;

    public static String randomTokenGenerator() {
        SecureRandom random = new SecureRandom();
        return new BigInteger(60, random).toString(32);
    }
    public static String getEncodedPassword(String password) {
        if (password != null) {
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            String hashedPassword = passwordEncoder.encode(password);
            return hashedPassword;
        } else {
            return "";
        }
    }




    public static Gson getGsonWithTypeAdapter(Class cls, JsonDeserializer deserializer) {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.registerTypeAdapter(cls, deserializer);
        Gson gson = gsonBuilder.create();
        return gson;
    }


    public static boolean isValidApiKey(String apiKey) {
        return !(apiKey == null || !apiKey.equals(Constants.ANU_API_KEY));
    }


}