package xinQing.web.menu.service;

import xinQing.web.menu.entity.Menu;

import java.util.List;

/**
 * Created by xuan on 16-10-23.
 */
public interface MenuService {

    List<Menu> selectByParentId(Integer parentId);

}
