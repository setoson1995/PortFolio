package com.example.popol.controller;

import com.example.popol.model.BoardDto;
import com.example.popol.model.UserDto;
import com.example.popol.service.BoardService;
import com.example.popol.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MainController {
    @Autowired
    UserService mainService;
    @Autowired
    BoardService boardService;

    // 전체출력
    @GetMapping("/home")
    public String home(Model model){
        List<BoardDto> listedAll = boardService.listAll();
        System.out.println("게시글 시간 " + listedAll.get(0).getCreateTime());
        System.out.println("게시글 카테고리 " + listedAll.get(0).getCategoryId());
        model.addAttribute("list", listedAll);
        return "home";
        // redirect를 메인페이지에 지정해놓으면 "localhost에서 리디렉션한 횟수가 너무 많습니다." 라는 메세지로 페이지를 작동할 수 없게된다 주의.
    }

    @PostMapping("/idcheck")
    @ResponseBody   // 이걸 해줘야 ajax에서 석세스했을때 여기서 리턴하는 값을 넣을 수 있다. 만약 하지않으면 값의 타입에 문제가 있다고 나옴.
    public int idCheck(@RequestParam("userId") String userId) {
        int resultNum = 0;
        System.out.println("Ajax파라미터 받은 값 : " + userId);
        try {
            mainService.checkId(userId);
        } catch (NullPointerException e) {
            resultNum = 1;
            return resultNum;
        }
        resultNum = 2;
        return resultNum;
    }

    // 유저 가입
    @GetMapping("/join")
    public String joinUser(){
        return "join";
    }

    @PostMapping("/checkid")
    @ResponseBody
    public String checkId(@RequestParam("id") String userId) {
        System.out.println("ajax로 받은 데이터" + userId);
        try {
            mainService.checkId(userId);
        } catch(Exception e) {
            return "false";
        }
        return "true";
    }
    @PostMapping("/joinUser")
    public String joinUser(UserDto userDto){
        try {
            mainService.join(userDto);  // return String "sucess"를 받을 수 있지만
            System.out.println("== Controller : join 통과 ==");
        } catch (NullPointerException e) {
            System.out.println("== Controller : check fail ==");
            return "redirect:/home";
        }
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login(){
        return "login";
    }
    @PostMapping("/logined")
    public String logined(UserDto userDto, HttpServletRequest request) {
        try {
            mainService.logined(userDto);
        } catch (NullPointerException e) { return "redirect:/home"; }
        HttpSession session = request.getSession();
        session.setAttribute("K-Village", userDto.getUserId());
        return "redirect:/home";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/home";
    }

    @GetMapping("/myPage")
    public String userPage() {

        return "myPage";
    }
    @GetMapping("/closeAcount")
    public String closeAcount(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session != null) {
        mainService.closeAcount(session);
            return "rediret:/home";
        }
        return "rediret:/home";
    }

    @GetMapping("board")
    public String board() {
        return "";
    }

    @GetMapping("write")
    public String write(HttpServletRequest request) {
        HttpSession session = request.getSession();
        System.out.println(session);
        if(session.getAttribute("K-Village") == null) {
            return "redirect:/home";
        }
        return "/write";
    }
    @PostMapping("writed")
    public String writed(BoardDto boardDto, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session != null) {   // session검사를 해서 로그인된상태인지 채크
            mainService.writed(boardDto);
            return "redirect:/home";
        }
        return "redirect:/home";
    }

    @PostMapping("thumbup")
    public String thumbup(HttpServletRequest request) {
        HttpSession sessoin = request.getSession();
        String userId = (String) sessoin.getAttribute("K-Village");
        if(sessoin.getAttribute("K-Village") == null) {
        return "false";
        }
        mainService.thumbup(userId);
        return "true";
    }
}
