package YingzuiBean.service.Impl;

import YingzuiBean.mapper.GeneMapper;
import YingzuiBean.pojo.gene;
import YingzuiBean.service.GeneService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class GeneServiceImpl implements GeneService {
    @Autowired
    private GeneMapper geneMapper;

    public List<gene> getAllGene(){
        return geneMapper.getAllGene();
    }
    public List<gene> getGeneBySSRID(String ssrID){
        return geneMapper.getGeneBySSRID(ssrID);
    }
    public List<gene> getGeneByGeneID(String geneID){ return geneMapper.getGeneByGeneID(geneID);}
    public List<gene> getGeneByIf(String genic){
        return geneMapper.getGeneByIf(genic);
    }
}
