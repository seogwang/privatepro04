package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Notice;

import java.util.List;

public interface NoticeMapper {
    public List<Notice> noticeList() throws Exception;
    public Notice getNotice(int no) throws Exception;
    public void noticeInsert(Notice dto) throws Exception;
    public void noticeUpdate(Notice dto) throws Exception;
    public void noticeDelete(int no) throws Exception;
    public void noticeVisit(int no) throws Exception;
}
