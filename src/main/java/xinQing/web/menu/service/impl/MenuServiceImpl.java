package xinQing.web.menu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xinQing.web.menu.dao.MenuDao;
import xinQing.web.menu.entity.Menu;
import xinQing.web.menu.service.MenuService;

import java.util.List;

/**
 * Created by xuan on 16-10-23.
 */
@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuDao menuDao;

    public List<Menu> selectByParentId(Integer parentId) {
        return menuDao.selectByParentId(parentId);
    }
}
