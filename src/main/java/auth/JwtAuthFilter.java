package auth;


import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;


@Component
public class JwtAuthFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest servletRequest = (HttpServletRequest) request;
        String authorization = servletRequest.getHeader(Constants.AUTH_TOKEN);
        if (authorization != null) {
            JwtAuthToken token = new JwtAuthToken(authorization);
            SecurityContextHolder.getContext().setAuthentication(token);
        }
        chain.doFilter(request, response);
        SecurityContextHolder.getContext().setAuthentication(null);
    }

    @Override
    public void destroy() {

    }
}
