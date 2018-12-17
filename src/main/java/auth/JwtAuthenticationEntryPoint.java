package auth;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jwt.model.Result;
import org.springframework.http.MediaType;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Component
public class JwtAuthenticationEntryPoint implements AuthenticationEntryPoint {
    @Override
    public void commence(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e)
            throws IOException, ServletException {
        httpServletResponse.setStatus(403);
        httpServletResponse.setContentType(MediaType.APPLICATION_JSON_VALUE);

        Result result = new Result();
        result.setStatus(false);

        if (e.getCause() != null) {
            result.setMessage(e.getCause().getMessage());
        } else {
            result.setMessage(e.getMessage());
        }

        byte[] body = new ObjectMapper()
                .writeValueAsBytes(result);

        httpServletResponse.getOutputStream().write(body);
    }
}
