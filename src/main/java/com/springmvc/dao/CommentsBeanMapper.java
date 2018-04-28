package com.springmvc.dao;

import com.springmvc.pojo.CommentsBean;

public interface CommentsBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommentsBean record);

    int insertSelective(CommentsBean record);

    CommentsBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommentsBean record);

    int updateByPrimaryKey(CommentsBean record);
}