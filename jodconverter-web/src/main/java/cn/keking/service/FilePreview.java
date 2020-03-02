package cn.keking.service;

import java.util.List;

import org.springframework.ui.Model;

import cn.keking.model.FileAttribute;

/**
 * Created by kl on 2018/1/17. Content :
 */
public interface FilePreview {

    /**
     * 文件处理并返回预览view
     * 
     * @param url
     * @param model
     * @param fileAttribute
     * @return
     */
    String filePreviewHandle(String url, Model model, FileAttribute fileAttribute);

    /**
     * 获取预览 全路径地址
     * 
     * @param url
     * @param fileAttribute
     * @return
     */
    default List<String> listOnlinePreviewByUrl(String url, FileAttribute fileAttribute) {
        return null;
    }
}
