package com.zhg.javakc.base.util.file;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

/**
 * 文件下載操作
 * @author zhou
 * @version v0.1
 */
public class DownloadFile {

	public ResponseEntity<byte[]> download(String path) throws IOException {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		headers.setContentDispositionFormData("attachment", "aa.txt");
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray( new File(path) ), headers,
				HttpStatus.OK);
	}
}
