package YingzuiBean.controller;

import YingzuiBean.pojo.All_Info;
import YingzuiBean.service.AdvSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping(value = "allssrInfo")
public class AllinfoController {
    @Autowired
    private AdvSearchService advSearchService;

    @RequestMapping(value = "/showAdv")
    public String index2(Model model, @RequestParam("ssrType") String ssrType,
                         @RequestParam("simpleType") String simpleType,
                         @RequestParam("chromosome") String chromosome,
                         @RequestParam("motif") String motif){
        All_Info allInfo = new All_Info();
        //allInfo.setSSR_ID("test1");
        allInfo.setSSRType(ssrType);
        allInfo.setSimpleType(simpleType);
        allInfo.setChromosome(chromosome);
        allInfo.setSSR_motif(motif);
        List<All_Info> allInfoList = advSearchService.getAllInfo(allInfo);
        model.addAttribute("allInfoList",allInfoList);
        return "showAdv";
    }



}
