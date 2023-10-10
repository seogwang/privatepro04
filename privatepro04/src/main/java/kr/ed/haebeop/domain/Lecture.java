package kr.ed.haebeop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Lecture {
    private int lcode;
    private String ltitle;
    private String lfile;
    private int scode;
    private String bcode;
    private String tcode;
    private int totsdent;
}