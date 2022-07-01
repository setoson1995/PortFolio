package com.example.popol.service;

import com.example.popol.mapper.BoardMapper;
import com.example.popol.mapper.UserMapper;
import com.example.popol.model.BoardDto;
import com.example.popol.model.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class UserService {

    @Autowired
    UserMapper userMapper;
    @Autowired
    BoardMapper boardMapper;

    public void checkId(String userId) {
        String id = userMapper.checkId(userId);
        if(id == null) {
            throw new NullPointerException();
        }
    }
    public void join(UserDto userDto) throws NullPointerException{
        String id = userMapper.checkId(userDto.getUserId());
        System.out.println("== Service : check id & password ==");
        System.out.println("Service ID : " + id);
        if(id != null || !userDto.getPassword1().equals(userDto.getPassword2())){
            System.out.println("== Service : check fail ==");
            throw new NullPointerException();
        }
        userMapper.join(userDto);
    }

    public void logined(UserDto userDto) throws NullPointerException{
        UserDto userInfo = userMapper.logined(userDto);
        if(!userDto.getUserId().equals(userInfo.getUserId()) ||
                !userDto.getPassword1().equals(userInfo.getPassword1())) {
            throw new NullPointerException();
        }
    }

    public void closeAcount(HttpSession session) {
        String userId = String.valueOf(session);
        userMapper.closeAcount(userId);
    }

    // BOARD
    public void writed(BoardDto boardDto) {
        boardMapper.writed(boardDto);
    }

    // User recommened
    public void thumbup(String userId) {
        userMapper.thumbup(userId);
    }
}
