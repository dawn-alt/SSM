package YingzuiBean.service.Impl;

import YingzuiBean.mapper.SimpleSearchMapper;
import YingzuiBean.pojo.SSR_Info;
import YingzuiBean.service.SimpleSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


public class SimpleSearchServiceImpl implements SimpleSearchService {
    @Autowired
    private SimpleSearchMapper simpleSearchMapper;

    public List<SSR_Info> getSSRInfoByType(String type){
        return simpleSearchMapper.getSSRInfoByType(type);
    }
    public List<SSR_Info> getSSRInfoByLength(int param1 ,int param2){
        return simpleSearchMapper.getSSRInfoByLength(param1,param2);
    }
    public List<SSR_Info> getSSRInfoBySimple(String s){
        if(s.equals("Di"))
            return simpleSearchMapper.getSSRInfoByDi();
        else if(s.equals("Tri")) return simpleSearchMapper.getSSRInfoByTri();
        else if(s.equals("Tetra")) return simpleSearchMapper.getSSRInfoByTetra();
        else if(s.equals("Penta")) return simpleSearchMapper.getSSRInfoByPenta();
        else if(s.equals("Hexa")) return simpleSearchMapper.getSSRInfoByHexa();
        else
            return simpleSearchMapper.getSSRInfoByDi();
    }
    public List<SSR_Info> getSSRInfoByMotif(String motif){
        return simpleSearchMapper.getSSRInfoByMotif(motif);
    }
    public List<SSR_Info> getAllSSRInfo(){ return simpleSearchMapper.getAllSSRInfo();}

}
