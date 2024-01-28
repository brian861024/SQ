package spring.mvc.sq.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * 解析器：放在Spring設定檔中
 * 	<!-- 配置上傳檔案解析器 -->
	<bean id="multipartResolver" class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
        <property name="maxUploadSize" value="#{1024 * 1024 * 50}"></property>
    </bean>
 * http://localhost:8080/SpiritQuest/mvc/upload
 */
@Controller
@RequestMapping("/upload")
public class UploadFileController {

	/**
	 * http://localhost:8080/SpiritQuest/mvc/upload/single POST
	 * @param file
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping("/single")
	public String upload(@RequestParam("file") MultipartFile file) throws IllegalStateException, IOException {
		file.transferTo(new File("C:/uploads/"+file.getOriginalFilename()));
		return "/sq/backend/backend_plusProd";
		
		
	}
	
	/**
	 * http://localhost:8080/SpiritQuest/mvc/upload/multi POST
	 * @param files
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping("/multi")
	@ResponseBody
	public String upload(@RequestParam("formId") Integer formId,
			@RequestParam("file") List<MultipartFile> files) throws IllegalStateException, IOException {
		for (MultipartFile file:files) {
			file.transferTo(new File("C:/uploads/"+file.getOriginalFilename()));
		}
		return String.valueOf(formId);
	}
	
}
