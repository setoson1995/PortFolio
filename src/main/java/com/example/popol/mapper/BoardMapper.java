package com.example.popol.mapper;

import com.example.popol.model.BoardDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {
    List<BoardDto> listAll();
    void writed(BoardDto boardDto);
}
