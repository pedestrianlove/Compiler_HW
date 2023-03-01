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

real	1m18.217s
user	1m18.162s
sys	0m0.019s
-rwxr-xr-x 1 jsl jsl 15816 Mar  1 10:29 out.0
----------------------------------------
 O1 optimization: 
20480.000000

real	0m53.306s
user	0m53.265s
sys	0m0.017s
-rwxr-xr-x 1 jsl jsl 15856 Mar  1 10:29 out.1
----------------------------------------
 O2 optimization: 
20480.000000

real	0m43.038s
user	0m43.002s
sys	0m0.011s
-rwxr-xr-x 1 jsl jsl 15856 Mar  1 10:29 out.2
----------------------------------------
 O3 optimization: 
20480.000000

real	0m40.689s
user	0m40.650s
sys	0m0.020s
-rwxr-xr-x 1 jsl jsl 15856 Mar  1 10:29 out.3
----------------------------------------
```

## 清理out檔
<img width="342" alt="image" src="https://user-images.githubusercontent.com/37164678/220505652-d70e37e7-3297-4ae6-bce3-fa97cb0db3ad.png">

## 心得
O2應該是CP值最高的優化，O3就有些雞肋了。
