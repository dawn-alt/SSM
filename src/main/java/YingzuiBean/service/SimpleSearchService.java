package YingzuiBean.service;

import YingzuiBean.pojo.SSR_Info;

import java.util.List;

public interface SimpleSearchService {
    //根据SSRtype查询所有SSR信息
    List<SSR_Info> getSSRInfoByType(String type);
    //根据SSR长度范围查询SSR信息
    List<SSR_Info> getSSRInfoByLength(int param1, int param2);
    //根据简单SSR的重数 Di，Tri，Tetra,Penta,Hexa;
    List<SSR_Info> getSSRInfoBySimple(String s);
    //根据motif片段模糊查询
    List<SSR_Info> getSSRInfoByMotif(String motif);

    List<SSR_Info> getAllSSRInfo();

}
