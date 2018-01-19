package com.javaex.dao;

import java.util.List;

import com.javaex.vo.EmaillistVo;

public class DaoTest {

	public static void main(String[] args) {
		
		EmaillistVo vo = new EmaillistVo( 1, "유", "재석" , "yoo@email.com" );
		EmaillistDao dao = new EmaillistDao();
		
		
		
		/*dao.insert(vo);*/
		
		List<EmaillistVo> eList = dao.getList();
		for(EmaillistVo eVo : eList) {
			System.out.println(eVo.toString());
		}

	}

}
