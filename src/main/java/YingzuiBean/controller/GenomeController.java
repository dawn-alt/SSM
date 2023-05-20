package YingzuiBean.controller;

import YingzuiBean.pojo.genome;
import YingzuiBean.service.GenomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping(value="/genome")
public class GenomeController {
    @Autowired
    public GenomeService genomeService;

    @RequestMapping(value="/showGenome1")
    public  String getGenomById(@RequestParam("SSR_ID") String ssrId,
                                Model model) {
        List<genome> genomeList = genomeService.getGenomeByID(ssrId);
        model.addAttribute("genomeList", genomeList);
        return "showGenome1";
    }

    @RequestMapping(value="/showGenome2")
    public  String getGenomBychro(@RequestParam("chromosome") String chromosome,
                                Model model) {
        List<genome> genomeList = genomeService.getGenomeByChro(chromosome);
        model.addAttribute("genomeList", genomeList);
        return "showGenome2";
    }

    @RequestMapping(value="/showGenome")
    public String getAllGenome(Model model){
        List<genome> genomeList = genomeService.getAllGenome();
        model.addAttribute("genomeList",genomeList);
        return "showGenome";
    }
}
