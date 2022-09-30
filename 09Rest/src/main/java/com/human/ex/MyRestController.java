package com.human.ex;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.human.dto.SampleVO;

/*
1.pom.xml 자바버전1.8 스프링버전 4.3.5.RELEASE으로 변경
2.jackson-databind 의존객체 추가
3.프로젝트 > properties > project facts > java 1.8변경
4.SampleVO 제작
5.MyRestController 제작
*/

@RestController
@RequestMapping("/sample")
public class MyRestController {
	@RequestMapping("/hello")
	public String sayHello() {
		return "Hello World ";
	}

	@RequestMapping("/sendVO")
	public SampleVO sendVO() {

		SampleVO vo = new SampleVO();
		vo.setFirstName("길동");
		vo.setLastName("홍");
		vo.setMno(123);

		return vo;
	}

	@RequestMapping("/sendList")
	public List<SampleVO> sendList() {

		List<SampleVO> list = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			SampleVO vo = new SampleVO();
			vo.setFirstName("길동");
			vo.setLastName("홍");
			vo.setMno(i);
			list.add(vo);
		}
		return list;
	}

	@RequestMapping("/sendMap")
	public Map<Integer, SampleVO> sendMap() {

		Map<Integer, SampleVO> map = new HashMap<>();

		for (int i = 0; i < 10; i++) {
			SampleVO vo = new SampleVO();
			vo.setFirstName("길동");
			vo.setLastName("홍");
			vo.setMno(i);
			map.put(i, vo);
		}
		return map;
	}
	
	@RequestMapping("/sendErrorAuth")
	  public ResponseEntity<Void> sendListAuth() {

	    return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	  }

	  @RequestMapping("/sendErrorNot")
	  public ResponseEntity<List<SampleVO>> sendListNot() {

	    List<SampleVO> list = new ArrayList<>();
	    for (int i = 0; i < 10; i++) {
	      SampleVO vo = new SampleVO();
	      vo.setFirstName("길동");
	      vo.setLastName("홍");
	      vo.setMno(i);
	      list.add(vo);
	    }

	    return new ResponseEntity<>(list, HttpStatus.NOT_FOUND);
	  }

}