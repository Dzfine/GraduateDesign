package com.ssm.demo.utils;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 验证码生成类
 */
public class MakeCertPic {
    public static final String RANDOM_CODEKEY = "random_codekey";  //放入session中的key
    public String randString = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";  //随机产生数字与字母混合的验证码字符串
    private int width = 70;   //验证码图片的宽度
    private int height = 28;  //验证码图片的高度
    private int lingSize = 20;  //干扰线的数量
    private int stringNum = 4;  //验证码图片中字符的个数
    private Random random = new Random();

    //获取验证码的字体
    private Font getFont() {
        return new Font("Fixedsys", Font.CENTER_BASELINE, 22);
    }

    //获取验证码背景的颜色
    private Color getRandColor() {
        /*if(fc > 255) {
            fc = 255;
        }
        if(bc > 255) {
            bc = 255;
        }
        int r = fc + random.nextInt(bc - fc -16);
        int g = fc + random.nextInt(bc - fc -14);
        int b = fc + random.nextInt(bc - fc -18);*/
        return new Color(150, 130, 80);
    }

    //生成随机的图片
    public void getRandCode(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        //BufferedImage类是具有缓冲区的Image类，用于描述图像信息的类
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);
        Graphics g = image.getGraphics();
        g.setFont(new Font("Times New Roman", Font.ROMAN_BASELINE, 18));
        g.setColor(getRandColor());
        for(int i = 0;i<= lingSize; i++) {
            drowLine(g);
        }
        String randomString = "";
        for(int i=0; i<stringNum; i++) {
            randomString = drowString(g, randomString, i);
        }
        //将生成的随机字符串保存到session中，jsp页面通过session.getAttribute获取该值
        session.removeAttribute(RANDOM_CODEKEY);
        session.setAttribute(RANDOM_CODEKEY, randomString);
        g.dispose();
        try {
            ImageIO.write(image, "JPEG", response.getOutputStream());
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    //得到字符串
    private String drowString(Graphics g, String randomString, int i) {
        g.setFont(getFont());
        g.setColor(new Color(135,156,220));
        String rand = String.valueOf(getRandomString(random.nextInt(randString.length())));
        randomString += rand;
        g.translate(random.nextInt(3), random.nextInt(3));
        g.drawString(rand,13 * i, 16);
        return randomString;
    }
    //获取随机的字符
    private String getRandomString(int num) {
        return String.valueOf(randString.charAt(num));
    }

    private void drowLine(Graphics g) {
        int x = random.nextInt(width);
        int y = random.nextInt(height);
        int x1 = random.nextInt(13);
        int y1 = random.nextInt(13);
        g.drawLine(x, y ,x+x1, y+y1);
    }


}
