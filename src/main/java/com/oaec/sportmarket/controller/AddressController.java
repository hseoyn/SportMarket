package com.oaec.sportmarket.controller;

import com.oaec.sportmarket.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class AddressController {
    @Autowired
    private AddressService addressService;
    @GetMapping("/address")
    public String cart(HttpServletRequest req, Model model){
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int userId = Integer.parseInt(user.get("users_id").toString());
        List<Map<String, Object>> address = addressService.queryAll(userId);
        model.addAttribute("address",address);
        return "address";
    }
    @GetMapping("/updateAddress")
    public String view(Integer addressId,Model model){
        if (addressId != null){
            Map<String, Object> map = addressService.queryById(addressId);
            model.addAttribute("address",map);
        }
        return "xiugai";
    }
    @PostMapping(value = "/updateAddress", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String update(String name,String tel,String address,Integer addressId,HttpServletRequest req){
        boolean b = addressService.updateAddress(name, tel, address, addressId);
        return "{\"success\":"+b+"}";
    }
    @GetMapping("/doAddress")
    public String Insert(){
        return "Update";
    }
    @PostMapping(value = "/doAddress", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String doUpdate(String name,String tel,String address,HttpServletRequest req){
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int userId = Integer.parseInt(user.get("users_id").toString());
        boolean b = addressService.addAdderss(name, tel, address, userId);
        return "{\"success\":"+b+"}";
    }
    @GetMapping(value = "/address/delete",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String Delete(HttpServletRequest req,Integer addressId){
        HttpSession session = req.getSession();
        Map<String, Object> user = (Map<String, Object>) session.getAttribute("user");
        int userId = Integer.parseInt(user.get("users_id").toString());
        System.out.println("userId = " + userId);
        boolean b = addressService.delete(addressId);
        return "{\"success\":"+b+"}";
    }
}
