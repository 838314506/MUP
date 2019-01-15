package com.zhg.javakc.base.util.excel;

import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;


public class ExportExcel{

	public void buildExcelDocument(Map<String, Object> data, HSSFWorkbook workbook, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		response.reset();
		response.setContentType("APPLICATION/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=\""+getFileName()+".xls"+"\"");
		
        HSSFSheet sheet=workbook.createSheet();// 产生工作表对象---------表单
        
        // 设置字体
        HSSFFont font = workbook.createFont();
        font.setFontHeightInPoints((short)10); //字体高度
        //font.setColor(HSSFFont.COLOR_RED); //字体颜色
        font.setFontName("黑体"); //字体
        font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD); //宽度
        
        // 设置单元格类型样式
        HSSFCellStyle cellStyle = workbook.createCellStyle();
        cellStyle.setFont(font);
        cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER); //水平布局：居中
        cellStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);//带边框
        cellStyle.setWrapText(true);
        cellStyle.setFillForegroundColor(HSSFColor.GREY_25_PERCENT.index);//行底色
        cellStyle.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
        
        HSSFCellStyle cellStyle2 = workbook.createCellStyle();
        cellStyle2.setAlignment(HSSFCellStyle.ALIGN_LEFT); //水平布局：居左
        cellStyle2.setWrapText(true);
        
        //产生一行
        HSSFRow header=sheet.createRow((short)0);
        //产生标题列
        String[] array = (String[])data.get("title");
        for(int i=0;i<array.length;i++)
        {
        	header.createCell(i).setCellValue(array[i]);
        }
        cellStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("mm/dd/yyyy"));
        
        //产生数据行,填充数据
        int rowNum=1;
        for (Iterator<?> iter = ((List<?>)data.get("data")).iterator(); iter.hasNext();){
//            TestEntity element = (TestEntity) iter.next();
//            HSSFRow row=sheet.createRow(rowNum++);
//            row.createCell(0).setCellValue(element.getTestName());
//            row.createCell(1).setCellValue(element.getTestTime());
//            row.createCell(2).setCellValue(element.getTestLevel());
        }
        
        OutputStream os = response.getOutputStream();
        workbook.write(os);
        os.flush();
        os.close();
	}
	
	protected String getFileName()
	{
		SimpleDateFormat datetime = new SimpleDateFormat("yyyyMMddhhmmssSSS");
		Date time = new Date();
		String name = datetime.format(time);
		return name;
	}

}
