package com.khj.exam.demo.service;

import com.khj.exam.demo.repository.BoardRepository;
import com.khj.exam.demo.vo.Board;

public class BoardService {
	private BoardRepository boardRepository;
	public BoardService(BoardRepository boardRepository) {
		this.boardRepository = boardRepository;
	}
	
	public Board getBoardById(int id) {
		return boardRepository.getBoardById(id);
	}

}
