package kr.ed.haebeop.repository;

import kr.ed.haebeop.domain.Notice;

import java.util.List;

public interface NoticeRepository {
    public List<Notice> notiList() throws Exception;
    public Notice getNoti(int no) throws Exception;
    public void insertNoti(Notice notice) throws Exception;
    public void updateNoti(Notice notice) throws Exception;
    public void deleteNoti(int no) throws Exception;
}
