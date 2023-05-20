package YingzuiBean.service;

import YingzuiBean.pojo.gene;

import java.util.List;

public interface GeneService {
    List<gene> getAllGene();
    List<gene> getGeneBySSRID(String ssrID);
    List<gene> getGeneByGeneID(String geneID);
    List<gene> getGeneByIf(String genic);
}

