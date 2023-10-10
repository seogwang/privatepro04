package kr.ed.haebeop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Archive {
    private int ano;
    private String title;
    private String content;
    private String file1;
    private String file2;
    private String file3;
    private String regdate;
    private String author;
    private int visit;
}
