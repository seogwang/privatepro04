package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Notice;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface NoticePersistence {
    @Select("SELECT * FROM notice")
    public List<Notice> noticeList();

    @Select("SELECT * FROM NOTICE WHERE no = #{no }")
    public Notice getNoti(int no);

    @Insert("INSERT INTO notice(title, content) VALUES(#{title }, #{content })")
    @Options(useGeneratedKeys = true, keyProperty = "no")
    public void insert3(Notice notice);

    @Update("UPDATE notice SET title=#{title }, content=#{content } WHERE no=#{no }")
    public void updateNoti(Notice notice);

    @Delete("DELETE FROM notice WHERE no=#{no }")
    public void deleteNoti(int no);
}
