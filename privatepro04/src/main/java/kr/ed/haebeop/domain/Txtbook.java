package kr.ed.haebeop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Txtbook {
    private int txtcode;
    private String txttitle;
    private String txtindx;
    private String txtpub;
    private String pdate;
    private String txtauthor;
    private int price;
    private String memo;
}
