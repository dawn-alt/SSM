package YingzuiBean.service.Impl;

import YingzuiBean.mapper.PrimerMapper;
import YingzuiBean.pojo.primer;
import YingzuiBean.service.PrimerService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class PrimerServiceImpl implements PrimerService {
    @Autowired
    private PrimerMapper primerMapper;

    public List<primer> getPrimerByID(String ssrID){
        return primerMapper.getPrimerByID(ssrID);
    }
    public List<primer> getPrimerByTm(double tm1,double tm2){
        return primerMapper.getPrimerByTm(tm1,tm2);
    }
    public List<primer> getPrimerByAmpli(int ampli1,int ampli2){
        return primerMapper.getPrimerByAmpli(ampli1,ampli2);
    }
    public List<primer> getAllPrimer(){return primerMapper.getAllPrimer();}

}
