package YingzuiBean.controller;

import YingzuiBean.pojo.gene;
import YingzuiBean.service.GeneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping(value="/gene")
public class GeneController {
    @Autowired
    public GeneService geneService;

    @RequestMapping(value="/showGene1")
    public  String getGeneById(@RequestParam("SSR_ID") String ssrId,
                                Model model) {
        List<gene> geneList = geneService.getGeneBySSRID(ssrId);
        model.addAttribute("geneList", geneList);
        return "showGene1";
    }

    @RequestMapping(value="/showGene2")
    public  String getGeneByGeneId(@RequestParam("geneID") String geneID,
                               Model model) {
        List<gene> geneList = geneService.getGeneByGeneID(geneID);
        model.addAttribute("geneList", geneList);
        return "showGene2";
    }

    @RequestMapping(value="/showGene3")
    public  String getGeneBygenic(@RequestParam("genic_nongenic") String genic,
                               Model model) {
        List<gene> geneList = geneService.getGeneByIf(genic);
        model.addAttribute("geneList", geneList);
        return "showGene3";
    }
    @RequestMapping(value="/showGene")
    public  String getGene(Model model) {
        List<gene> geneList = geneService.getAllGene();
        model.addAttribute("geneList", geneList);
        return "showGene";
    }

    @RequestMapping(value="/showGeneByID/{SSR_ID}")
    public String getGeneByID(@PathVariable("SSR_ID") String ssrID,
                              Model model){
        List<gene> geneList = geneService.getGeneBySSRID(ssrID);
        model.addAttribute("geneList", geneList);
        return "showAll";
    }

}
