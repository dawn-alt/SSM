package YingzuiBean.service.Impl;

import YingzuiBean.mapper.GenomeMapper;
import YingzuiBean.pojo.genome;
import YingzuiBean.service.GenomeService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class GenomeServiceImpl implements GenomeService {
    @Autowired
    private GenomeMapper genomeMapper;

    public List<genome> getGenomeByID(String ssrId){
        return genomeMapper.getGenomeByID(ssrId);
    }
    public List<genome> getGenomeByChro(String chromosome){
        return genomeMapper.getGenomeByChro(chromosome);
    }
    public List<genome> getAllGenome(){
        return genomeMapper.getAllGenome();
    }
}
