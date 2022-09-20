package com.human.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.IBoardDao;
import com.human.dto.BoardDto;
@Service
public class BoardServiceImpl implements IBoardService {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public void create(BoardDto dto) throws Exception {
		//추가 비지니스로직을 기술하기 위해서 service 인터페이스를 추가하였다.
		IBoardDao dao=sqlSession.getMapper(IBoardDao.class);
		dao.create(dto);
	}
	@Override
	public BoardDto read(int bno) throws Exception {
		// TODO Auto-generated method stub
		IBoardDao dao=sqlSession.getMapper(IBoardDao.class);
		BoardDto r=dao.read(bno);
		return r;
	}

	@Override
	public void delete(int bno) throws Exception {
		// TODO Auto-generated method stub
		IBoardDao dao=sqlSession.getMapper(IBoardDao.class);
		dao.delete(bno);
	}

	@Override
	public void update(BoardDto dto) throws Exception {
		// TODO Auto-generated method stub
		IBoardDao dao=sqlSession.getMapper(IBoardDao.class);
		dao.update(dto);
	}

	@Override
	public List<BoardDto> listAll() throws Exception {
		IBoardDao dao=sqlSession.getMapper(IBoardDao.class);
		List<BoardDto> dtos=dao.listAll();
		return dtos;
	}

}
