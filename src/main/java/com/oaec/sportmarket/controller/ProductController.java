package com.oaec.sportmarket.controller;

import com.github.pagehelper.Page;
import com.oaec.sportmarket.service.BrandService;
import com.oaec.sportmarket.service.impl.CommodityServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class ProductController {
    @Autowired
    private CommodityServiceImpl commodityService;
    @Autowired
    private BrandService brandService;
    @GetMapping("/list")
    public String list(String name, Integer typeId, Integer brandId, @RequestParam(required = false,defaultValue = "1") Integer page, Model model){
        List<Map<String, Object>> commodities = commodityService.query(name, typeId, brandId,page);
        List<Map<String, Object>> brands = brandService.query(typeId);
        model.addAttribute("commodities",commodities);
        model.addAttribute("brands",brands);
        if(commodities instanceof Page){
            Page commodityPage = (Page) commodities;
            int pageNum = commodityPage.getPageNum();
            int pages = commodityPage.getPages();
            model.addAttribute("pageNum",pageNum);
            model.addAttribute("pages",pages);
        }
        return "list";
    }
    @GetMapping("/commodity")
    public String product(Integer commodityId,Model model){
        Map<String, Object> commodity = commodityService.getCommodity(commodityId);
        System.out.println("commodity = " + commodity);
        model.addAttribute("commodity",commodity);
        return "product";
    }
//    @GetMapping("/index")
//    public String index(){
//        return "index";
//    }
}
