package com.human.dao;

import java.util.List;

import com.human.dto.BoardDTO;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

public interface BoardDAO {

  public void create(BoardDTO vo) throws Exception;

  public BoardDTO read(Integer bno) throws Exception;

  public void update(BoardDTO vo) throws Exception;

  public void delete(Integer bno) throws Exception;

  public List<BoardDTO> listAll() throws Exception;

 // public List<BoardVO> listPage(int page) throws Exception;

//  public List<BoardVO> listCriteria(Criteria cri) throws Exception;
//
//  public int countPaging(Criteria cri) throws Exception;
//  
//  //use for dynamic sql
//  
//  public List<BoardVO> listSearch(SearchCriteria cri)throws Exception;
//  
//  public int listSearchCount(SearchCriteria cri)throws Exception;

}
