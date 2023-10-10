package kr.ed.haebeop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Slec {
    private int slcode;
    private int lcode;
    private String stid;
    private int totlect;
    private boolean ltf;
}
