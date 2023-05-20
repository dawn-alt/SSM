package YingzuiBean.mapper;

import YingzuiBean.pojo.primer;

import java.util.List;

public interface PrimerMapper {
   List<primer> getPrimerByID(String ssrID);
   List<primer> getPrimerByTm(double tm1,double tm2);
   List<primer> getPrimerByAmpli(int ampli1,int ampli2);
   List<primer> getAllPrimer();
}
