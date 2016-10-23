package xinQing.web.menu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import xinQing.web.menu.entity.Menu;
import xinQing.web.menu.service.MenuService;

import java.util.List;

/**
 * Created by xuan on 16-10-23.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @RequestMapping(value = "/selectByParentId", method = RequestMethod.GET)
    public
    @ResponseBody
    List<Menu> selectByParentId(@RequestParam(required = false, defaultValue = "0") Integer parentId) {
        return menuService.selectByParentId(parentId);
    }
}
