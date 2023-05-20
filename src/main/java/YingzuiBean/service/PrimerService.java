package YingzuiBean.service;

import YingzuiBean.pojo.primer;

import java.util.List;

public interface PrimerService {
    List<primer> getPrimerByID(String ssrID);
    List<primer> getPrimerByTm(double tm1 ,double tm2);
    List<primer> getPrimerByAmpli(int ampli1,int ampli2);
    List<primer> getAllPrimer();
}
