package YingzuiBean.controller;

import YingzuiBean.pojo.primer;
import YingzuiBean.service.PrimerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping(value="/primer")
public class PrimerController {
    @Autowired
    public PrimerService primerService;

    @RequestMapping(value="/showPrimer1")
    public String getPrimerByID(@RequestParam("SSR_ID") String ssrID,
                                Model model){
        List<primer> primerList = primerService.getPrimerByID(ssrID);
        model.addAttribute("primerList",primerList);
        return "showPrimer1";
    }

    @RequestMapping(value="/showPrimer2")
    public String getPrimerByTm(@RequestParam("minTm") Double minTm,
                                @RequestParam("maxTm") Double maxTm,
                                Model model){
        List<primer> primerList = primerService.getPrimerByTm(minTm,maxTm);
        model.addAttribute("primerList",primerList);
        return "showPrimer2";
    }

    @RequestMapping(value="/showPrimer3")
    public String getPrimerByLen(@RequestParam("minAmpli") Integer minAmpli,
                                @RequestParam("maxAmpli") Integer maxAmpli,
                                Model model){
        List<primer> primerList = primerService.getPrimerByAmpli(minAmpli,maxAmpli);
        model.addAttribute("primerList",primerList);
        return "showPrimer3";
    }

    @RequestMapping(value="/showPrimer")
    public String getPrimerByID(Model model){
        List<primer> primerList = primerService.getAllPrimer();
        model.addAttribute("primerList",primerList);
        return "showPrimer";
    }

}
