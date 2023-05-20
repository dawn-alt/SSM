package YingzuiBean.controller;

import YingzuiBean.pojo.SSR_Info;
import YingzuiBean.service.SimpleSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping(value="/ssrInfo")
public class SsrInfoController {
    @Autowired
    private SimpleSearchService simpleSearchService;

    @RequestMapping(value="/show1")
    public String getByType(@RequestParam("ssrType") String ssrType,
                            Model model){
        List<SSR_Info> ssrInfoList = simpleSearchService.getSSRInfoByType(ssrType);
        model.addAttribute("ssrInfoList",ssrInfoList);
        return "show1";
    }

    @RequestMapping(value="/show2")
    public String getBySimpleType(@RequestParam("simpleType") String simpleType,
                                  Model model) {
        List<SSR_Info> ssrInfoList = simpleSearchService.getSSRInfoBySimple(simpleType);
        model.addAttribute("ssrInfoList",ssrInfoList);
        return "show2";
    }
    @RequestMapping(value="/show3")
    public String getBylen(@RequestParam("minlen") Integer minlen ,@RequestParam("maxlen") Integer maxlen,
                                  Model model) {
        List<SSR_Info> ssrInfoList = simpleSearchService.getSSRInfoByLength(minlen,maxlen);
        model.addAttribute("ssrInfoList",ssrInfoList);
        return "show3";
    }
    @RequestMapping(value="/show4")
    public String getBymotif(@RequestParam("motif") String motif,
                                  Model model) {
        List<SSR_Info> ssrInfoList = simpleSearchService.getSSRInfoByMotif(motif);
        model.addAttribute("ssrInfoList",ssrInfoList);
        return "show4";
    }

    @RequestMapping(value="showSSR")
    public String getAllSSRInfo(Model model){
        List<SSR_Info> ssrInfoList = simpleSearchService.getAllSSRInfo();
        model.addAttribute("ssrInfoList",ssrInfoList);
        return "ssrInfo";
    }
}
