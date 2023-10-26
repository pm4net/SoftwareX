```

BenchmarkDotNet v0.13.7, Windows 10 (10.0.19045.3324/22H2/2022Update)
AMD Ryzen 9 5950X, 1 CPU, 32 logical and 16 physical cores
.NET SDK 7.0.203
  [Host]     : .NET 7.0.10 (7.0.1023.36312), X64 RyuJIT AVX2
  Job-OQNLVQ : .NET 7.0.10 (7.0.1023.36312), X64 RyuJIT AVX2

Runtime=.NET 7.0  InvocationCount=1  IterationCount=3  
RunStrategy=Monitoring  UnrollFactor=1  WarmupCount=1  

```
|        Method |        OcelFile |        Mean |       Error |    StdDev |      Median |
|-------------- |---------------- |------------:|------------:|----------:|------------:|
| **DiscoverOcDfg** |    **github_pm4py** |    **52.57 ms** |    **67.35 ms** |  **3.692 ms** |    **53.75 ms** |
| **DiscoverOcDfg** |             **o2c** | **5,058.90 ms** | **1,338.10 ms** | **73.346 ms** | **5,058.21 ms** |
| **DiscoverOcDfg** |             **p2p** | **2,438.68 ms** | **1,478.98 ms** | **81.068 ms** | **2,477.29 ms** |
| **DiscoverOcDfg** |      **recruiting** |   **151.75 ms** | **1,030.79 ms** | **56.501 ms** |   **121.16 ms** |
| **DiscoverOcDfg** | **running-example** | **1,284.33 ms** |   **885.46 ms** | **48.535 ms** | **1,308.49 ms** |
| **DiscoverOcDfg** |  **transfer_order** |   **227.72 ms** |   **200.25 ms** | **10.976 ms** |   **221.41 ms** |
| **DiscoverOcDfg** |  **windows_events** | **2,918.42 ms** |   **912.44 ms** | **50.014 ms** | **2,891.41 ms** |
