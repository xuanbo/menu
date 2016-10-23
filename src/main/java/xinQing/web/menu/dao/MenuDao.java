package xinQing.web.menu.dao;

import org.apache.ibatis.annotations.Mapper;
import xinQing.web.menu.entity.Menu;

import java.util.List;

/**
 * Created by xuan on 16-10-23.
 */
@Mapper
public interface MenuDao {

    List<Menu> selectByParentId(Integer parentId);

}
