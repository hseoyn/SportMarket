package com.oaec.sportmarket.controller;

import com.alibaba.fastjson.JSON;
import com.oaec.sportmarket.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class CartController {
    @Autowired
    private CartService cartService;
    @GetMapping("/cart")
    public String cart(HttpServletRequest req, Model model){
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int usersId = Integer.parseInt(user.get("users_id").toString());
//        查询用户的购物车的商品
        List<Map<String, Object>> commodity = cartService.getCartCommodity(usersId);
        System.out.println("commodity = " + commodity);
//        将查询到的商品存放在request中
        model.addAttribute("commodity",commodity);
        return "cart";
    }
    @GetMapping(value = "/add2Cart",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String add2Cart(Integer commodityId, Integer num,HttpServletRequest request){
        HttpSession session = request.getSession();
        Map<String, Object> user = (Map<String, Object>) session.getAttribute("user");
        int userId = Integer.parseInt(user.get("users_id").toString());
        boolean b = cartService.addCart(userId,commodityId,num);
        return "{\"success\":"+b+"}";
    }
    @GetMapping(value = "/cartTotal",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String cartTotal(HttpServletRequest request,Integer[] commodityId){
        HttpSession session = request.getSession();
        Map<String, Object> user = (Map<String, Object>) session.getAttribute("user");
        int userId = Integer.parseInt(user.get("users_id").toString());
        Map<String, Object> total = cartService.getTotal(userId, commodityId);
        System.out.println("total = " + total);
        return JSON.toJSONString(total);
    }
    @GetMapping(value = "/updateNum",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String UpdateNum(HttpServletRequest req,String action,Integer commodityId){
        HttpSession session = req.getSession();
        Map<String, Object> user = (Map<String, Object>) session.getAttribute("user");
        int userId = Integer.parseInt(user.get("users_id").toString());
        boolean b = cartService.updateNum(action, userId, commodityId);
        return "{\"success\":"+b+"}";
    }

    @GetMapping(value = "/cart/delete",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String Delete(HttpServletRequest req,Integer commodityId){
        HttpSession session = req.getSession();
        Map<String, Object> user = (Map<String, Object>) session.getAttribute("user");
        int userId = Integer.parseInt(user.get("users_id").toString());
        boolean b = cartService.delete(userId, commodityId);
        return "{\"success\":"+b+"}";
    }
}
