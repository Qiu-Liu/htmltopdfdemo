package com.example;

import freemarker.template.Configuration;
import freemarker.template.Template;
import io.woo.htmltopdf.HtmlToPdf;
import io.woo.htmltopdf.HtmlToPdfObject;

import java.io.File;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *底层为包装wkhtmltopdf，示例
 */
public class OpenHtmlToPDF {
    public static void main(String[] args) {
        getPdf();
    }
    public static void getPdf(){
        //HtmlToPdfObject.forUrl("D:/template.html").enableIntelligentShrinking(false)
        //enableIntelligentShrinking(false)(关闭自动缩放)
        Map<String,String> map=new HashMap<>();
        if (analysisHtml()) {
            map.put("orientation", "Landscape");
        }
        boolean success = HtmlToPdf.create(map)
                .object(HtmlToPdfObject.forHtml(getHtmlforFtl()).enableIntelligentShrinking(false).usePrintMediaType(false).loadImages(true))
                .convert(getPath()+"templates/file.pdf");
        System.out.println("转换结果"+success+","+getPath()+"templates/file.pdf");
    }

    /**
     * 解析获得html的方向
     * @return
     */
    public static boolean analysisHtml(){
        String reg="\\@page\\{([^}]*)\\}";   //匹配@page{}
        Pattern compile = Pattern.compile(reg);
        Matcher matcher = compile.matcher(getHtmlforFtl());
        boolean flag=false;
        while (matcher.find()){
            String filed= matcher.group(1);//获取到@page{内的值}
            flag = filed.contains("landscape");
        }
        return flag;

    }
    public static String getHtmlforFtl(){
        Configuration cfg = new Configuration(Configuration.DEFAULT_INCOMPATIBLE_IMPROVEMENTS);
        String html="";
        Map<String,String> map =new HashMap<>();
        map.put("pingzheng","这是转PDF后的凭证");
        map.put("imageUrl","file:///"+getPath()+"templates/1234.jpg");
        try {
            cfg.setDirectoryForTemplateLoading(new File(getPath()+"templates"));
            cfg.setEncoding(Locale.CHINA,"UTF-8");
            Template template = cfg.getTemplate("template.ftl", "UTF-8");
            StringWriter stringWriter = new StringWriter();
            template.process(map,stringWriter);
            stringWriter.flush();
            html=stringWriter.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return html;

    }
    public static String getPath(){
        return OpenHtmlToPDF.class.getResource("/").getPath().substring(1);
    }

}