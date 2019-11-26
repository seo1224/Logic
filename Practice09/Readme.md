![](https://github.com/jiwonryu/Logic/blob/master/Practice09/Practice09_wave.png)
![](https://github.com/jiwonryu/Logic/blob/master/Practice09/Practice09_wave_%EC%84%A4%EB%AA%85.png)

1. ir_rx의 값이 seq_rx에 들어옴(저장됨)
2. seq_rx가 11이면 cnt_h가 증가, 00이면 cnt_l가 증가
3. cnt_h>=8500 && cnt_l>=4000이면 data code로 state가 넘어감 
4. seq_rx가 01이면 (즉, 상승edge 일때) cnt32가 증가
5. cnt 32가 32가 되면 complete
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTgzODg4NDE4MywzOTA4NTk1NDMsNDY0ND
E3MTExXX0=
-->