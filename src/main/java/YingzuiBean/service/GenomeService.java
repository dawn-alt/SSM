package YingzuiBean.service;

import YingzuiBean.pojo.genome;

import java.util.List;

public interface GenomeService {
    List<genome> getGenomeByID(String ssrId);
    List<genome> getGenomeByChro(String chromosome);
    List<genome> getAllGenome();
}
