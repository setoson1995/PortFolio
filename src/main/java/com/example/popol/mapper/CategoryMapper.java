package com.example.popol.mapper;

import com.example.popol.model.CategoryDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CategoryMapper {
    List<CategoryDto> listAll();
}
