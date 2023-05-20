package YingzuiBean.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/mainPage")
public class mainPageController {

    @RequestMapping(value = "/homepage")
    public String homepage() {
        return "homepage";
    }

    @RequestMapping(value = "/aboutour")
    public String aboutour() {
        return "aboutour";
    }

    @RequestMapping(value = "/search")
    public String index() {
        return "index";
    }

}
