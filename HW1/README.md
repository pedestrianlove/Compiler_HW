# HW1

## 檔案結構
<img width="415" alt="image" src="https://user-images.githubusercontent.com/37164678/220504706-0ce63e9d-e9bd-4b27-a0c9-e5221588b814.png">

## 編譯
<img width="462" alt="image" src="https://user-images.githubusercontent.com/37164678/220504861-759bd81c-30d3-4a20-90cd-4e10e5e0116f.png">

## 計時結果(TARGET=2048)
```shell
❯ make run TARGET=2048
----------------------------------------
- Time the program...                  -
----------------------------------------
 No optimization: 
20480.000000

real    1m15.585s
user    1m15.545s
sys     0m0.022s
----------------------------------------
 O1 optimization: 
20480.000000

real    0m51.715s
user    0m51.688s
sys     0m0.010s
----------------------------------------
 O2 optimization: 
20480.000000

real    0m41.113s
user    0m41.050s
sys     0m0.040s
----------------------------------------
 O3 optimization: 
20480.000000

real    0m41.175s
user    0m41.139s
sys     0m0.020s
----------------------------------------
```

## 清理out檔
<img width="342" alt="image" src="https://user-images.githubusercontent.com/37164678/220505652-d70e37e7-3297-4ae6-bce3-fa97cb0db3ad.png">

## 心得
O2應該是CP值最高的優化，O3就有些雞肋了。
