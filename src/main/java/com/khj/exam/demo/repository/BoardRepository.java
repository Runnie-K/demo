package com.khj.exam.demo.repository;

import org.apache.ibatis.annotations.Select;

public interface BoardRepository {
	@Select("""
			
			SELECT *
			FROM board AS B
			WHERE B.id = #{id}
			AND B.delStatus = 0
			
			""")
	Board getBoardById

}
