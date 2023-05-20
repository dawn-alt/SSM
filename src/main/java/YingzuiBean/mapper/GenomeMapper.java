package YingzuiBean.mapper;

import YingzuiBean.pojo.genome;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GenomeMapper {
    List<genome> getGenomeByID(String ssrId);
    List<genome> getGenomeByChro(@Param("chromosome") String chromosome);
    List<genome> getAllGenome();
}
