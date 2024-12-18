package dev.pollito.roundest_java.filter;

import dev.pollito.roundest_java.configuration.properties.SpringApplicationConfigurationProperties;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import lombok.RequiredArgsConstructor;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Component
@Order(1)
@RequiredArgsConstructor
public class ApplicationNameHeaderFilter implements Filter {
  private final SpringApplicationConfigurationProperties springApplicationConfigurationProperties;

  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
      throws IOException, ServletException {
    if (response instanceof HttpServletResponse httpServletResponse) {
      httpServletResponse.addHeader(
          "X-Application-Name", springApplicationConfigurationProperties.getName());
    }
    chain.doFilter(request, response);
  }
}
