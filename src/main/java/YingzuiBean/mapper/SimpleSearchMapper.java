package YingzuiBean.mapper;

import YingzuiBean.pojo.SSR_Info;

import java.util.List;

public interface SimpleSearchMapper {
    //根据SSRtype查询所有SSR信息
    List<SSR_Info> getSSRInfoByType(String type);
    List<SSR_Info> getSSRInfoByLength(int param1, int param2);

    List<SSR_Info> getSSRInfoByDi();
    List<SSR_Info> getSSRInfoByTri();
    List<SSR_Info> getSSRInfoByTetra();
    List<SSR_Info> getSSRInfoByPenta();
    List<SSR_Info> getSSRInfoByHexa();

    List<SSR_Info> getSSRInfoByMotif(String motif);
    List<SSR_Info> getAllSSRInfo();

}
