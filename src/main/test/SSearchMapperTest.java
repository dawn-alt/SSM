import YingzuiBean.pojo.*;
import YingzuiBean.service.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration("classpath:springApplication.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class SSearchMapperTest {
    @Autowired
    private BeanFactory beanFactory;

    @Test
    public void testGetAllssrInfo() {
        SimpleSearchService simpleSearchService = beanFactory.getBean("simpleSearchService", SimpleSearchService.class);

//        SSR_Info ssrInfo = new SSR_Info();
//        ssrInfo.setSSR_ID("111");
//        ssrInfo.setSSRType("simple");
          String s="compound";

        List<SSR_Info> res = simpleSearchService.getSSRInfoByType(s);
        for (SSR_Info i: res) { System.out.println(i); }
    }
    @Test
    public void testGetSSRInfoByLength(){
        SimpleSearchService simpleSearchService = beanFactory.getBean("simpleSearchService", SimpleSearchService.class);
        List<SSR_Info> res = simpleSearchService.getSSRInfoByLength(20,91);
        for (SSR_Info i: res) { System.out.println(i); }
    }
    @Test
    public void testGetSSRBySimple(){
        SimpleSearchService simpleSearchService = beanFactory.getBean("simpleSearchService", SimpleSearchService.class);
        List<SSR_Info> res = simpleSearchService.getSSRInfoBySimple("Hexa");
        for (SSR_Info i: res) { System.out.println(i); }
    }
    @Test
    public void testGetSSRByMotif(){
        SimpleSearchService simpleSearchService = beanFactory.getBean("simpleSearchService", SimpleSearchService.class);
        List<SSR_Info> res = simpleSearchService.getSSRInfoByMotif("AT");
        for (SSR_Info i: res) { System.out.println(i); }
    }

    @Test
    public void testGetAllSSR(){
        AdvSearchService advSearchService = beanFactory.getBean("advSearchService", AdvSearchService.class);

        All_Info allInfo = new All_Info();
        //allInfo.setSSR_ID("test1");
        allInfo.setSSRType("simple");
        //allInfo.setSimpleType("Di");
        //allInfo.setChromosome("Contigs");
        //allInfo.setChromosome("Ca1");
        //allInfo.setChromosome("Scaffolds");
        allInfo.setSSR_motif("AT");
        List<All_Info> res = advSearchService.getAllInfo(allInfo);
        for (All_Info i: res) { System.out.println(i); }
    }

    @Test
    public void testShowAll(){
        AdvSearchService advSearchService = beanFactory.getBean("advSearchService", AdvSearchService.class);
        List<All_Info> res = advSearchService.getAll();
        for (All_Info i: res) { System.out.println(i); }
    }

    @Test
    public void testPrimer(){
        PrimerService primerService = beanFactory.getBean("primerService",PrimerService.class);
//        List<primer> res = primerService.getPrimerByID("CaGM00089");
//        List<primer> res = primerService.getPrimerByTm(55.0,58.3);
        List<primer> res = primerService.getPrimerByAmpli(100,200);
        for (primer i: res) { System.out.println(i); }
    }

    @Test
    public void testGenome(){
        GenomeService genomeService = beanFactory.getBean("genomeService",GenomeService.class);
        List<genome> res = genomeService.getGenomeByChro("Pseudo molecules");
        for (genome i: res) { System.out.println(i); }
    }

    @Test
    public void testGene(){
        GeneService geneService = beanFactory.getBean("geneService",GeneService.class);
//        List<gene> res = geneService.getAllGene();
          List<gene> res = geneService.getGeneByGeneID("Ca_08807");
//        List<gene> res = geneService.getGeneByIf("genic");
//        List<gene> res = geneService.getGeneBySSRID("CaGM02540");
        for (gene i: res) { System.out.println(i); }
    }
}