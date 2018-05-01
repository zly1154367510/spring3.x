package zhongfucheng.listener;

import org.elasticsearch.client.transport.TransportClient;
import zhongfucheng.exception.InitException;
import zhongfucheng.utils.ElasticsearchUtils;
import zhongfucheng.utils.EsUtilsPro;
import zhongfucheng.utils.FreeMarkerUtils;
import zhongfucheng.utils.ReadPropertiesUtil;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.HashMap;
import java.util.Map;

/**
 * 项目启动时初始化监听器
 * Created by ozc on 2017/12/8.
 *
 * @author ozc
 * @version 1.0
 */
public class ProjectListener implements ServletContextListener {

    /**
     * 当项目启动的时候，我们就根据模版生成我们的index页面
     *
     * 与Elasticsearch连接、如果index不存在则创建
     *
     * @param servletContextEvent
     */
    public void contextInitialized(ServletContextEvent servletContextEvent) {

        try {
            //根据模版生成我们的index页面
            FreeMarkerUtils markerUtils = new FreeMarkerUtils();
            Map map = new HashMap();
            map.put("path", ReadPropertiesUtil.readProp("projectPath"));
            markerUtils.ouputFile("index.ftl", "index.html", map);

            //如果在Elasticsearch没有索引、则创建


            // 2018年1月1日20:48:30这里改成了EsUtilsPro
            TransportClient client = EsUtilsPro.getTransportClient();
            if (!ElasticsearchUtils.isIndexExists(client, EsUtilsPro.INDEX_NAME)) {
                ElasticsearchUtils.createIndex(client, EsUtilsPro.INDEX_NAME,EsUtilsPro.TYPE_NAME);
            }

        } catch (Exception e) {
            e.printStackTrace();
            try {
                throw new InitException("项目初始化异常");
            } catch (InitException e1) {
                e1.printStackTrace();
            }
        }

    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
