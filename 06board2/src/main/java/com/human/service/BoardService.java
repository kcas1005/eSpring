package com.human.service;

import java.util.List;

import com.human.dto.BoardDTO;
//import org.zerock.domain.Criteria;
//import org.zerock.domain.SearchCriteria;

public interface BoardService {

  public void regist(BoardDTO board) throws Exception;

  public BoardDTO read(Integer bno) throws Exception;

  public void modify(BoardDTO board) throws Exception;

  public void remove(Integer bno) throws Exception;

  public List<BoardDTO> listAll() throws Exception;

//  public List<BoardVO> listCriteria(Criteria cri) throws Exception;
//
//  public int listCountCriteria(Criteria cri) throws Exception;
//
//  public List<BoardVO> listSearchCriteria(SearchCriteria cri) 
//      throws Exception;
//
//  public int listSearchCount(SearchCriteria cri) throws Exception;

}
