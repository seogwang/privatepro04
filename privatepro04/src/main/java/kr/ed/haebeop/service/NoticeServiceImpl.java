package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.persistence.NoticeMapper;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    private NoticeMapper noticeMapper;

    @Override
    public List<Notice> noticeList(Page page) throws Exception {
        return noticeMapper.noticeList(page);
    }

    @Override
    public Notice getNotice(int no) throws Exception {
        noticeMapper.noticeVisit(no);
        return noticeMapper.getNotice(no);
    }

    @Override
    public void noticeInsert(Notice dto) throws Exception {
        noticeMapper.noticeInsert(dto);
    }

    @Override
    public void noticeUpdate(Notice dto) throws Exception {
        noticeMapper.noticeUpdate(dto);
    }

    @Override
    public void noticeDelete(int no) throws Exception {
        noticeMapper.noticeDelete(no);
    }

    @Override
    public int noticeCount(Page page) throws Exception {
        return noticeMapper.noticeCount(page);
    }
}
