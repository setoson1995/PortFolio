package com.example.popol.mapper;

import com.example.popol.model.UserDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {

    // 중복체크
    String checkId(String UserId);

    // 회원가입
    void join(UserDto userDto);

    // 로그인
    UserDto logined(UserDto userDto);

    // 탈퇴
    void closeAcount(String userId);

    // 글추천 UP
    void thumbup(String userId);
    // 글추천 DOWN
}
