package YingzuiBean.controller;

import YingzuiBean.pojo.All_Info;
import YingzuiBean.service.AdvSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/index")
public class indexController {
    @Autowired
    private AdvSearchService advSearchService;

    //    ----------后台-------
    @RequestMapping(value = "/top")
    public String top() {
        return "top";
    }
    @RequestMapping(value = "/right")
    public String right() {
        return "right";
    }
    @RequestMapping(value = "/left")
    public String left() {
        return "left";
    }



    @RequestMapping(value = "/admin")
    public String adminlogin() {
        return "test";
    }

    @RequestMapping(value = "/advsearch")
    public String advsearch(){return "allInfo";}

    @RequestMapping(value="/ssrInfo")
    public String showInfo(){return "ssrInfo";}

    @RequestMapping(value="/ssrGenome")
    public String showGenome(){return "showGenome";}

    @RequestMapping(value="/ssrPrimer")
    public String showPrimer(){return "showPrimer";}

    @RequestMapping(value="/ssrGene")
    public String showGene(){return "showGene";}


    @RequestMapping(value = "/showAll")
    public String showAll(Model model){
        List<All_Info> allInfoList = advSearchService.getAll();
        model.addAttribute("allInfoList",allInfoList);
        return "showAll";
    }


}
