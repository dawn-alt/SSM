package YingzuiBean.service.Impl;

import YingzuiBean.mapper.AllInfoMapper;
import YingzuiBean.pojo.All_Info;
import YingzuiBean.service.AdvSearchService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AdvSearchServiceImpl implements AdvSearchService {
    @Autowired
    private AllInfoMapper allInfoMapper;

     public List<All_Info> getAllInfo(All_Info allInfo){
         return allInfoMapper.getAllInfo(allInfo);
     }

     public  List<All_Info> getAll(){
         return allInfoMapper.getAll();
     }


}
