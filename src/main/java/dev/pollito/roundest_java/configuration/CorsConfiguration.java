package dev.pollito.roundest_java.configuration;

import dev.pollito.roundest_java.configuration.properties.CorsConfigurationProperties;
import lombok.RequiredArgsConstructor;
import org.jetbrains.annotations.NotNull;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@RequiredArgsConstructor
public class CorsConfiguration implements WebMvcConfigurer {
  private final CorsConfigurationProperties corsConfigurationProperties;

  @Override
  public void addCorsMappings(@NotNull CorsRegistry registry) {
    registry
        .addMapping("/**")
        .allowedOrigins(corsConfigurationProperties.getAllowedOrigins().toArray(new String[0]))
        .allowedMethods(corsConfigurationProperties.getAllowedMethods().toArray(new String[0]))
        .allowedHeaders(corsConfigurationProperties.getAllowedHeaders())
        .allowCredentials(corsConfigurationProperties.getAllowCredentials());
  }
}
