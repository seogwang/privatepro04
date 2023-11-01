package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.util.Page;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeMapper {
    public List<Notice> noticeList(Page page) throws Exception;
    public Notice getNotice(int no) throws Exception;
    public void noticeInsert(Notice dto) throws Exception;
    public void noticeUpdate(Notice dto) throws Exception;
    public void noticeDelete(int no) throws Exception;
    public void noticeVisit(int no) throws Exception;
    public int noticeCount(Page page) throws Exception;
}
