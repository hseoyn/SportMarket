package com.oaec.sportmarket.controller;

import com.oaec.sportmarket.service.AddressService;
import com.oaec.sportmarket.service.CartService;
import com.oaec.sportmarket.service.OrderService;
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
public class OrderController {
    @Autowired
    private AddressService addressService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private CartService cartService;
    @GetMapping("/checkout")
    public String checkout(Integer[] commodityId, HttpServletRequest request, Model model){
        HttpSession session = request.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int usersId = Integer.parseInt(user.get("users_id").toString());
        //查询收货地址
        List<Map<String, Object>> address = addressService.queryAll(usersId);
        //查询要结算的商品
        List<Map<String, Object>> commodities = cartService.gerCommodity4Checkout(usersId,commodityId);
        //查询统计
        Map<String, Object> total = cartService.getTotal(usersId, commodityId);
        model.addAttribute("total",total);
        model.addAttribute("address",address);
        model.addAttribute("commodities",commodities);
        return "checkout";
    }
    @GetMapping("/orders")
    public String order(HttpServletRequest req, Model model){
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int userId = Integer.parseInt(user.get("users_id").toString());
        List<Map<String, Object>> orders = orderService.getOrders(userId);
        model.addAttribute("orders",orders);
        return "orders";
    }
    @GetMapping(value = "/submit",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String submit(Integer[] commodityId,Integer addressId,HttpServletRequest request){
        HttpSession session = request.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int userId = Integer.parseInt(user.get("users_id").toString());
        boolean submit = orderService.submit(userId,addressId, commodityId);
        System.out.println("/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/");
        System.out.println("submit = " + submit);
        return "{\"success\":"+submit+"}";
    }
}
