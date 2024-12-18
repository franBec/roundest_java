package dev.pollito.roundest_java.configuration.properties;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix = "spring.application")
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class SpringApplicationConfigurationProperties {
  String name;
}
