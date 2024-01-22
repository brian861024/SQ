package spring.mvc.sq.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Service {
	private Integer serviceId;
    private String serviceLocation;
    private String serviceName;
    private String serviceUrl;
        
}