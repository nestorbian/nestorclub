package com.jstu.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.web.multipart.commons.CommonsMultipartFile;



public class MultiPartTools {

	private static final Logger logger = Logger.getLogger(MultiPartTools.class
			.getName());

	private static DateFormat DF = new SimpleDateFormat("yyyyMMdd");

	private static DateFormat DF1 = new SimpleDateFormat("HHmmss");

	public static String saveFile(CommonsMultipartFile myfile,String BASE_PATH) {
		// 如果为空的return null
		if (null == myfile || myfile.isEmpty()) {
			return null;
		}

		String realPath = "E:/java/workspeace/tea Maven Webapp/src/main/webapp/"+BASE_PATH;

		String DF_DATE = DF.format(new Date());

		// 物理地址，类似于D:\\workspace\\shop Maven
		// Webapp\\src\\main\\webapp\\upload\\img
		realPath += "/" + DF_DATE;

		// 访问地址， 类似于http://localhost:8080/shop/upload/img
		String url = BASE_PATH + "/" + DF_DATE;

		// 判断目录存在与否，不存在则创建
		File file = new File(realPath);
		if (!file.isDirectory()) {
			file.mkdirs();
		}

		String oldFileName = myfile.getOriginalFilename();

		// 获取文件后缀名称
		String suffixName = oldFileName.substring(oldFileName.lastIndexOf("."));

		String DF1_DATE = DF1.format(new Date());

		// 生成新的文件名
		String newFileName = DF1_DATE + "_" + (int) (100 + Math.random() * 900)
				+ suffixName;

		realPath += "/" + newFileName;
		url += "/" + newFileName;

		// 日志打印
		if (logger.isDebugEnabled()) {
			logger.debug("【saveMutiPart】path:" + realPath);
			logger.debug("【saveMutiPart】url:" + url);
		}
		// 保存 方法一
		// InputStream is = null;
		// OutputStream os = null;
		//
		// try {
		// is = myfile.getInputStream();
		// os = new FileOutputStream(realPath);
		//
		// int count = 0;
		// byte[] b = new byte[1024];
		// while ((count = is.read(b)) > 0) {
		// os.write(b, 0, count);
		// }
		// os.flush();
		//
		// } catch (IOException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// } finally {
		// if (null != os) {
		// try {
		// os.close();
		// } catch (IOException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// }
		//
		// if (null != is) {
		// try {
		// is.close();
		// } catch (IOException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// }
		// }

		// 保存附件 方法二
		try {
			myfile.transferTo(new File(realPath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return url;
	}
	
	
	
	public static void delFile(String imgPath) {
		String realPath = "E:/java/workspeace/tea Maven Webapp/src/main/webapp";

		realPath += "/" + imgPath;

		File file = new File(realPath);

		if (file.exists()) {
			file.delete();
		}
	}
}
