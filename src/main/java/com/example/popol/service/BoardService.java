package com.example.popol.service;

import com.example.popol.mapper.BoardMapper;
import com.example.popol.mapper.CategoryMapper;
import com.example.popol.mapper.UserMapper;
import com.example.popol.model.BoardDto;
import com.example.popol.model.CategoryDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    @Autowired
    UserMapper userMapper;
    @Autowired
    BoardMapper boardMapper;
    @Autowired
    CategoryMapper categoryMapper; // Could not autowire. No beans of 'CategoryMapper' type found. = @Mapper를 안해서임;;

    public List<BoardDto> listAll() {
        List<BoardDto>listAll = boardMapper.listAll();

        return listAll;
    }


}
