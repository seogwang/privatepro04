package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.util.Page;

import java.util.List;

public interface NoticeService {
    public List<Notice> noticeList(Page page) throws Exception;
    public Notice getNotice(int no) throws Exception;
    public void noticeInsert(Notice dto) throws Exception;
    public void noticeUpdate(Notice dto) throws Exception;
    public void noticeDelete(int no) throws Exception;
    public int noticeCount(Page page) throws Exception;
}
