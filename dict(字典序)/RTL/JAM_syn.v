/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Mon Sep 19 16:06:37 2022
/////////////////////////////////////////////////////////////


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Match_list, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  output [239:0] Match_list;
  input CLK, RST;
  output Valid;
  wire   n2675, n2676, n2677, n2678, n2679, n2680, n2681, n2682, n2683, n2684,
         n2685, n2686, n2687, n2688, n2689, n2690, n2691, n2692, n2693, n2694,
         n2695, n2696, n2697, n2698, n2699, n2700, n2701, n2702, n2703, n2704,
         n2705, n2706, n2707, n2708, n2709, n2710, n2711, n2712, n2713, n2714,
         n2715, n2716, n2717, n2718, n2719, n2720, n2721, n2722, n2723, n2724,
         n2725, n2726, n2727, n2728, n2729, n2730, n2731, n2732, n2733, n2734,
         n2735, n2736, n2737, n2738, n2739, n2740, n2741, n2742, n2743, n2744,
         n2745, n2746, n2747, n2748, n2749, n2750, n2751, n2752, n2753, n2754,
         n2755, n2756, n2757, n2758, n2759, n2760, n2761, n2762, n2763, n2764,
         n2765, n2766, n2767, n2768, n2769, n2770, n2771, n2772, n2773, n2774,
         n2775, n2776, n2777, n2778, n2779, n2780, n2781, n2782, n2783, n2784,
         n2785, n2786, n2787, n2788, n2789, n2790, n2791, n2792, n2793, n2794,
         n2795, n2796, n2797, n2798, n2799, n2800, n2801, n2802, n2803, n2804,
         n2805, n2806, n2807, n2808, n2809, n2810, n2811, n2812, n2813, n2814,
         n2815, n2816, n2817, n2818, n2819, n2820, n2821, n2822, n2823, n2824,
         n2825, n2826, n2827, n2828, n2829, n2830, n2831, n2832, n2833, n2834,
         n2835, n2836, n2837, n2838, n2839, n2840, n2841, n2842, n2843, n2844,
         n2845, n2846, n2847, n2848, n2849, n2850, n2851, n2852, n2853, n2854,
         n2855, n2856, n2857, n2858, n2859, n2860, n2861, n2862, n2863, n2864,
         n2865, n2866, n2867, n2868, n2869, n2870, n2871, n2872, n2873, n2874,
         n2875, n2876, n2877, n2878, n2879, n2880, n2881, n2882, n2883, n2884,
         n2885, n2886, n2887, n2888, n2889, n2890, n2891, n2892, n2893, n2894,
         n2895, n2896, n2897, n2898, n2899, n2900, n2901, n2902, n2903, n2904,
         n2905, n2906, n2907, n2908, n2909, n2910, n2911, n2912, n2913, n2914,
         n2915, n2916, n2917, n2918, n2919, n2920, n2921, n2922, n2923, n2924,
         n2925, n2926, n2927, n2928, n2929, n2930, n2931, \list[7][2] ,
         \list[7][1] , \list[7][0] , \list[6][2] , \list[6][1] , \list[6][0] ,
         \list[5][2] , \list[5][1] , \list[5][0] , \list[4][2] , \list[4][1] ,
         \list[4][0] , \list[3][2] , \list[3][1] , \list[3][0] , \list[2][2] ,
         \list[2][1] , \list[2][0] , \list[1][2] , \list[1][1] , \list[1][0] ,
         \list[0][2] , \list[0][1] , \list[0][0] , N209, \replace_value[1] ,
         N310, N438, \gt_replace_value_num[6][3] ,
         \gt_replace_value_num[6][2] , \gt_replace_value_num[6][1] ,
         \gt_replace_value_num[6][0] , \gt_replace_value_num[5][3] ,
         \gt_replace_value_num[5][2] , \gt_replace_value_num[5][1] ,
         \gt_replace_value_num[5][0] , \gt_replace_value_num[4][3] ,
         \gt_replace_value_num[4][2] , \gt_replace_value_num[4][1] ,
         \gt_replace_value_num[4][0] , \gt_replace_value_num[3][3] ,
         \gt_replace_value_num[3][2] , \gt_replace_value_num[3][1] ,
         \gt_replace_value_num[3][0] , \gt_replace_value_num[2][3] ,
         \gt_replace_value_num[2][2] , \gt_replace_value_num[2][1] ,
         \gt_replace_value_num[2][0] , \gt_replace_value_num[1][3] ,
         \gt_replace_value_num[1][2] , \gt_replace_value_num[1][1] ,
         \gt_replace_value_num[1][0] , \gt_replace_value_num[0][3] ,
         \gt_replace_value_num[0][2] , \gt_replace_value_num[0][1] ,
         \gt_replace_value_num[0][0] , N772, N773, N774, N783, N784, N800,
         N801, N802, N803, N804, N805, N806, N807, N808, N809, N818, N819,
         N820, N843, N844, N845, N846, N847, N848, N849, N850, N851, N852,
         N873, N874, N875, N876, n1045, n1046, n1047, n1048, n1049, n1050,
         n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060,
         n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070,
         n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080,
         n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090,
         n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100,
         n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110,
         n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120,
         n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130,
         n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140,
         n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150,
         n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160,
         n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170,
         n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180,
         n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190,
         n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200,
         n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210,
         n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220,
         n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230,
         n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240,
         n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250,
         n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260,
         n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270,
         n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280,
         n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290,
         n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300,
         n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310,
         n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320,
         n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330,
         n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340,
         n1341, \intadd_0/CI , \intadd_0/SUM[4] , \intadd_0/SUM[3] ,
         \intadd_0/SUM[2] , \intadd_0/SUM[1] , \intadd_0/SUM[0] ,
         \intadd_0/n5 , \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , n1343, n1344, n1345, n1346, n1347, n1349, n1351, n1353,
         n1355, n1357, n1359, n1361, n1363, n1365, n1367, n1369, n1371, n1373,
         n1375, n1377, n1379, n1381, n1383, n1385, n1387, n1389, n1391, n1393,
         n1395, n1456, n1457, n1458, n1459, n1629, n1630, n1631, n1632, n1633,
         n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643,
         n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653,
         n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663,
         n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673,
         n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683,
         n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693,
         n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703,
         n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712, n1713,
         n1714, n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722, n1723,
         n1724, n1725, n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733,
         n1734, n1735, n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743,
         n1744, n1745, n1746, n1747, n1748, n1749, n1750, n1751, n1752, n1753,
         n1754, n1755, n1756, n1757, n1758, n1759, n1760, n1761, n1762, n1763,
         n1764, n1765, n1766, n1767, n1768, n1769, n1770, n1771, n1772, n1773,
         n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781, n1782, n1783,
         n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792, n1793,
         n1794, n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802, n1803,
         n1804, n1805, n1806, n1807, n1808, n1809, n1810, n1811, n1812, n1813,
         n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822, n1823,
         n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832, n1833,
         n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842, n1843,
         n1844, n1845, n1846, n1847, n1848, n1849, n1850, n1851, n1852, n1853,
         n1854, n1855, n1856, n1857, n1858, n1859, n1860, n1861, n1862, n1863,
         n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, n1872, n1873,
         n1874, n1875, n1876, n1877, n1878, n1879, n1880, n1881, n1882, n1883,
         n1884, n1885, n1886, n1887, n1888, n1889, n1890, n1891, n1892, n1893,
         n1894, n1895, n1896, n1897, n1898, n1899, n1900, n1901, n1902, n1903,
         n1904, n1905, n1906, n1907, n1908, n1909, n1910, n1911, n1912, n1913,
         n1914, n1915, n1916, n1917, n1918, n1919, n1920, n1921, n1922, n1923,
         n1924, n1925, n1926, n1927, n1928, n1929, n1930, n1931, n1932, n1933,
         n1934, n1935, n1936, n1937, n1938, n1939, n1940, n1941, n1942, n1943,
         n1944, n1945, n1946, n1947, n1948, n1949, n1950, n1951, n1952, n1953,
         n1954, n1955, n1956, n1957, n1958, n1959, n1960, n1961, n1962, n1963,
         n1964, n1965, n1966, n1967, n1968, n1969, n1970, n1971, n1972, n1973,
         n1974, n1975, n1976, n1977, n1978, n1979, n1980, n1981, n1982, n1983,
         n1984, n1985, n1986, n1987, n1988, n1989, n1990, n1991, n1992, n1993,
         n1994, n1995, n1996, n1997, n1998, n1999, n2000, n2001, n2002, n2003,
         n2004, n2005, n2006, n2007, n2008, n2009, n2010, n2011, n2012, n2013,
         n2014, n2015, n2016, n2017, n2018, n2019, n2020, n2021, n2022, n2023,
         n2024, n2025, n2026, n2027, n2028, n2029, n2030, n2031, n2032, n2033,
         n2034, n2035, n2036, n2037, n2038, n2039, n2040, n2041, n2042, n2043,
         n2044, n2045, n2046, n2047, n2048, n2049, n2050, n2051, n2052, n2053,
         n2054, n2055, n2056, n2057, n2058, n2059, n2060, n2061, n2062, n2063,
         n2064, n2065, n2066, n2067, n2068, n2069, n2070, n2071, n2072, n2073,
         n2074, n2075, n2076, n2077, n2078, n2079, n2080, n2081, n2082, n2083,
         n2084, n2085, n2086, n2087, n2088, n2089, n2090, n2091, n2092, n2093,
         n2094, n2095, n2096, n2097, n2098, n2099, n2100, n2101, n2102, n2103,
         n2104, n2105, n2106, n2107, n2108, n2109, n2110, n2111, n2112, n2113,
         n2114, n2115, n2116, n2117, n2118, n2119, n2120, n2121, n2122, n2123,
         n2124, n2125, n2126, n2127, n2128, n2129, n2130, n2131, n2132, n2133,
         n2134, n2135, n2136, n2137, n2138, n2139, n2140, n2141, n2142, n2143,
         n2144, n2145, n2146, n2147, n2148, n2149, n2150, n2151, n2152, n2153,
         n2154, n2155, n2156, n2157, n2158, n2159, n2160, n2161, n2162, n2163,
         n2164, n2165, n2166, n2167, n2168, n2169, n2170, n2171, n2172, n2173,
         n2174, n2175, n2176, n2177, n2178, n2179, n2180, n2181, n2182, n2183,
         n2184, n2185, n2186, n2187, n2188, n2189, n2190, n2191, n2192, n2193,
         n2194, n2195, n2196, n2197, n2198, n2199, n2200, n2201, n2202, n2203,
         n2204, n2205, n2206, n2207, n2208, n2209, n2210, n2211, n2212, n2213,
         n2214, n2215, n2216, n2217, n2218, n2219, n2220, n2221, n2222, n2223,
         n2224, n2225, n2226, n2227, n2228, n2229, n2230, n2231, n2232, n2233,
         n2234, n2235, n2236, n2237, n2238, n2239, n2240, n2241, n2242, n2243,
         n2244, n2245, n2246, n2247, n2248, n2249, n2250, n2251, n2252, n2253,
         n2254, n2255, n2256, n2257, n2258, n2259, n2260, n2261, n2262, n2263,
         n2264, n2265, n2266, n2267, n2268, n2269, n2270, n2271, n2272, n2273,
         n2274, n2275, n2276, n2277, n2278, n2279, n2280, n2281, n2282, n2283,
         n2284, n2285, n2286, n2287, n2288, n2289, n2290, n2291, n2292, n2293,
         n2294, n2295, n2296, n2297, n2298, n2299, n2300, n2301, n2302, n2303,
         n2304, n2305, n2306, n2307, n2308, n2309, n2310, n2311, n2312, n2313,
         n2314, n2315, n2316, n2317, n2318, n2319, n2320, n2321, n2322, n2323,
         n2324, n2325, n2326, n2327, n2328, n2329, n2330, n2331, n2332, n2333,
         n2334, n2335, n2336, n2337, n2338, n2339, n2340, n2341, n2342, n2343,
         n2344, n2345, n2346, n2347, n2348, n2349, n2350, n2351, n2352, n2353,
         n2354, n2355, n2356, n2357, n2358, n2359, n2360, n2361, n2362, n2363,
         n2364, n2365, n2366, n2367, n2368, n2369, n2370, n2371, n2372, n2373,
         n2374, n2375, n2376, n2377, n2378, n2379, n2380, n2381, n2382, n2383,
         n2384, n2385, n2386, n2387, n2388, n2389, n2390, n2391, n2392, n2393,
         n2394, n2395, n2396, n2397, n2398, n2399, n2400, n2401, n2402, n2403,
         n2404, n2405, n2406, n2407, n2408, n2409, n2410, n2411, n2412, n2413,
         n2414, n2415, n2416, n2417, n2418, n2419, n2420, n2421, n2422, n2423,
         n2424, n2425, n2426, n2427, n2428, n2429, n2430, n2431, n2432, n2433,
         n2434, n2435, n2436, n2437, n2438, n2439, n2440, n2441, n2442, n2443,
         n2444, n2445, n2446, n2447, n2448, n2449, n2450, n2451, n2452, n2453,
         n2454, n2455, n2456, n2457, n2458, n2459, n2460, n2461, n2462, n2463,
         n2464, n2465, n2466, n2467, n2468, n2469, n2470, n2471, n2472, n2473,
         n2474, n2475, n2476, n2477, n2478, n2479, n2480, n2481, n2482, n2483,
         n2484, n2485, n2486, n2487, n2488, n2489, n2490, n2491, n2492, n2493,
         n2494, n2495, n2496, n2497, n2498, n2499, n2500, n2501, n2502, n2503,
         n2504, n2505, n2506, n2507, n2508, n2509, n2510, n2511, n2512, n2513,
         n2514, n2515, n2516, n2517, n2518, n2519, n2520, n2521, n2522, n2523,
         n2524, n2525, n2526, n2527, n2528, n2529, n2530, n2531, n2532, n2533,
         n2534, n2535, n2536, n2537, n2538, n2539, n2540, n2541, n2542, n2543,
         n2544, n2545, n2546, n2547, n2548, n2549, n2550, n2551, n2552, n2553,
         n2554, n2555, n2556, n2557, n2558, n2559, n2560, n2561, n2562, n2563,
         n2564, n2565, n2566, n2567, n2568, n2569, n2570, n2571, n2572, n2573,
         n2574, n2575, n2576, n2577, n2578, n2579, n2580, n2581, n2582, n2583,
         n2584, n2585, n2586, n2587, n2588, n2589, n2590, n2591, n2592, n2593,
         n2594, n2595, n2596, n2597, n2598, n2599, n2600, n2601, n2602, n2603,
         n2604, n2605, n2606, n2607, n2608, n2609, n2610, n2611, n2612, n2613,
         n2614, n2615, n2616, n2617, n2618, n2619, n2620, n2621, n2622, n2623,
         n2624, n2625, n2626, n2627, n2628, n2629, n2630, n2631, n2632, n2633,
         n2634, n2635, n2636, n2637, n2638, n2639, n2640, n2641, n2642, n2643,
         n2644, n2645, n2646, n2647, n2648, n2649, n2650, n2651, n2652, n2653,
         n2654, n2655, n2656, n2657, n2658, n2659, n2660, n2661, n2662, n2663,
         n2664, n2665, n2666, n2673, n2674;
  wire   [9:0] cost_temp;
  wire   [2:0] cs;
  wire   [1:0] sort_round;
  wire   [2:0] min_index;

  DFFQX1 \sort_round_reg[0]  ( .D(N783), .CK(CLK), .Q(sort_round[0]) );
  DFFQX1 \cs_reg[0]  ( .D(N209), .CK(CLK), .Q(cs[0]) );
  DFFQX1 \sort_round_reg[1]  ( .D(N784), .CK(CLK), .Q(sort_round[1]) );
  DFFQX1 \cost_temp_reg[9]  ( .D(N809), .CK(CLK), .Q(cost_temp[9]) );
  DFFQX1 \cost_temp_reg[8]  ( .D(N808), .CK(CLK), .Q(cost_temp[8]) );
  DFFQX1 \cost_temp_reg[7]  ( .D(N807), .CK(CLK), .Q(cost_temp[7]) );
  DFFQX1 \cost_temp_reg[6]  ( .D(N806), .CK(CLK), .Q(cost_temp[6]) );
  DFFQX1 \cost_temp_reg[5]  ( .D(N805), .CK(CLK), .Q(cost_temp[5]) );
  DFFQX1 \cost_temp_reg[4]  ( .D(N804), .CK(CLK), .Q(cost_temp[4]) );
  DFFQX1 \cost_temp_reg[3]  ( .D(N803), .CK(CLK), .Q(cost_temp[3]) );
  DFFQX1 \cost_temp_reg[2]  ( .D(N802), .CK(CLK), .Q(cost_temp[2]) );
  DFFQX1 \W_reg[0]  ( .D(N818), .CK(CLK), .Q(n2677) );
  DFFQX1 \MatchCount_reg[1]  ( .D(N874), .CK(CLK), .Q(n2680) );
  DFFQX1 \MatchCount_reg[2]  ( .D(N875), .CK(CLK), .Q(n2679) );
  DFFQX2 \list_reg[1][0]  ( .D(n1336), .CK(CLK), .Q(\list[1][0] ) );
  DFFQX2 \list_reg[2][1]  ( .D(n1332), .CK(CLK), .Q(\list[2][1] ) );
  DFFQX1 \gt_replace_value_num_reg[0][3]  ( .D(n1309), .CK(CLK), .Q(
        \gt_replace_value_num[0][3] ) );
  DFFQX1 \gt_replace_value_num_reg[0][2]  ( .D(n1310), .CK(CLK), .Q(
        \gt_replace_value_num[0][2] ) );
  DFFQX1 \min_index_reg[2]  ( .D(N774), .CK(CLK), .Q(min_index[2]) );
  DFFQX1 \gt_replace_value_num_reg[0][1]  ( .D(n1311), .CK(CLK), .Q(
        \gt_replace_value_num[0][1] ) );
  DFFQX1 \min_index_reg[1]  ( .D(N773), .CK(CLK), .Q(min_index[1]) );
  DFFQX1 \gt_replace_value_num_reg[0][0]  ( .D(n1312), .CK(CLK), .Q(
        \gt_replace_value_num[0][0] ) );
  DFFQX1 \replace_value_reg[1]  ( .D(n1314), .CK(CLK), .Q(\replace_value[1] )
         );
  DFFQX1 \gt_replace_value_num_reg[5][3]  ( .D(n1289), .CK(CLK), .Q(
        \gt_replace_value_num[5][3] ) );
  DFFQX1 \cost_temp_reg[1]  ( .D(N801), .CK(CLK), .Q(cost_temp[1]) );
  DFFQX1 \cs_reg[2]  ( .D(n1340), .CK(CLK), .Q(cs[2]) );
  DFFQX1 \cs_reg[1]  ( .D(n1341), .CK(CLK), .Q(cs[1]) );
  DFFQX1 \gt_replace_value_num_reg[5][2]  ( .D(n1290), .CK(CLK), .Q(
        \gt_replace_value_num[5][2] ) );
  DFFQX1 \gt_replace_value_num_reg[3][2]  ( .D(n1298), .CK(CLK), .Q(
        \gt_replace_value_num[3][2] ) );
  DFFQX1 \gt_replace_value_num_reg[2][3]  ( .D(n1301), .CK(CLK), .Q(
        \gt_replace_value_num[2][3] ) );
  DFFQX1 \W_reg[1]  ( .D(N819), .CK(CLK), .Q(n2676) );
  DFFQX1 \gt_replace_value_num_reg[1][3]  ( .D(n1305), .CK(CLK), .Q(
        \gt_replace_value_num[1][3] ) );
  DFFQX1 \gt_replace_value_num_reg[6][2]  ( .D(n1286), .CK(CLK), .Q(
        \gt_replace_value_num[6][2] ) );
  DFFQX1 \gt_replace_value_num_reg[6][0]  ( .D(n1288), .CK(CLK), .Q(
        \gt_replace_value_num[6][0] ) );
  DFFQX1 \gt_replace_value_num_reg[4][2]  ( .D(n1294), .CK(CLK), .Q(
        \gt_replace_value_num[4][2] ) );
  DFFQX1 \gt_replace_value_num_reg[6][3]  ( .D(n1285), .CK(CLK), .Q(
        \gt_replace_value_num[6][3] ) );
  DFFQX1 \gt_replace_value_num_reg[2][2]  ( .D(n1302), .CK(CLK), .Q(
        \gt_replace_value_num[2][2] ) );
  DFFQX1 \gt_replace_value_num_reg[3][3]  ( .D(n1297), .CK(CLK), .Q(
        \gt_replace_value_num[3][3] ) );
  DFFQX1 \list_reg[4][0]  ( .D(n1327), .CK(CLK), .Q(\list[4][0] ) );
  DFFQX1 \gt_replace_value_num_reg[4][3]  ( .D(n1293), .CK(CLK), .Q(
        \gt_replace_value_num[4][3] ) );
  DFFQX1 \list_reg[4][1]  ( .D(n1326), .CK(CLK), .Q(\list[4][1] ) );
  DFFQX1 \list_reg[2][0]  ( .D(n1333), .CK(CLK), .Q(\list[2][0] ) );
  DFFQX1 \list_reg[5][2]  ( .D(n1322), .CK(CLK), .Q(\list[5][2] ) );
  DFFQX1 \list_reg[7][1]  ( .D(n1317), .CK(CLK), .Q(\list[7][1] ) );
  DFFQX1 \list_reg[7][2]  ( .D(n1316), .CK(CLK), .Q(\list[7][2] ) );
  DFFQX1 \list_reg[7][0]  ( .D(n1318), .CK(CLK), .Q(\list[7][0] ) );
  DFFQX1 \list_reg[6][1]  ( .D(n1320), .CK(CLK), .Q(\list[6][1] ) );
  DFFQX1 \list_reg[3][0]  ( .D(n1330), .CK(CLK), .Q(\list[3][0] ) );
  DFFQX1 \gt_replace_value_num_reg[2][1]  ( .D(n1303), .CK(CLK), .Q(
        \gt_replace_value_num[2][1] ) );
  DFFQX1 \gt_replace_value_num_reg[1][0]  ( .D(n1308), .CK(CLK), .Q(
        \gt_replace_value_num[1][0] ) );
  DFFQX1 \gt_replace_value_num_reg[5][0]  ( .D(n1292), .CK(CLK), .Q(
        \gt_replace_value_num[5][0] ) );
  DFFQX1 \gt_replace_value_num_reg[1][2]  ( .D(n1306), .CK(CLK), .Q(
        \gt_replace_value_num[1][2] ) );
  DFFQX1 \gt_replace_value_num_reg[4][0]  ( .D(n1296), .CK(CLK), .Q(
        \gt_replace_value_num[4][0] ) );
  DFFQX2 \gt_replace_value_num_reg[4][1]  ( .D(n1295), .CK(CLK), .Q(
        \gt_replace_value_num[4][1] ) );
  DFFQX1 \gt_replace_value_num_reg[6][1]  ( .D(n1287), .CK(CLK), .Q(
        \gt_replace_value_num[6][1] ) );
  DFFQX1 \gt_replace_value_num_reg[5][1]  ( .D(n1291), .CK(CLK), .Q(
        \gt_replace_value_num[5][1] ) );
  DFFQX1 \gt_replace_value_num_reg[3][0]  ( .D(n1300), .CK(CLK), .Q(
        \gt_replace_value_num[3][0] ) );
  DFFQX1 \gt_replace_value_num_reg[2][0]  ( .D(n1304), .CK(CLK), .Q(
        \gt_replace_value_num[2][0] ) );
  DFFQX1 \gt_replace_value_num_reg[1][1]  ( .D(n1307), .CK(CLK), .Q(
        \gt_replace_value_num[1][1] ) );
  DFFQX2 \gt_replace_value_num_reg[3][1]  ( .D(n1299), .CK(CLK), .Q(
        \gt_replace_value_num[3][1] ) );
  ADDFXL \intadd_0/U4  ( .A(Cost[4]), .B(cost_temp[4]), .CI(\intadd_0/n4 ), 
        .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[2] ) );
  ADDFXL \intadd_0/U5  ( .A(Cost[3]), .B(cost_temp[3]), .CI(\intadd_0/n5 ), 
        .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[1] ) );
  DFFX1 \cost_temp_reg[0]  ( .D(N800), .CK(CLK), .Q(cost_temp[0]), .QN(n2673)
         );
  DFFQX1 \MatchCount_reg[3]  ( .D(N876), .CK(CLK), .Q(n2678) );
  DFFQX1 \MatchCount_reg[0]  ( .D(N873), .CK(CLK), .Q(n2681) );
  DFFQX4 \replace_value_reg[0]  ( .D(n1315), .CK(CLK), .Q(N438) );
  DFFQX1 \ROM1/Match_list_reg[34]  ( .D(n1249), .CK(CLK), .Q(n2897) );
  DFFQX1 \ROM1/Match_list_reg[33]  ( .D(n1250), .CK(CLK), .Q(n2898) );
  DFFQX1 \ROM1/Match_list_reg[32]  ( .D(n1251), .CK(CLK), .Q(n2899) );
  DFFQX1 \ROM1/Match_list_reg[31]  ( .D(n1252), .CK(CLK), .Q(n2900) );
  DFFQX1 \ROM1/Match_list_reg[30]  ( .D(n1253), .CK(CLK), .Q(n2901) );
  DFFQX1 \ROM1/Match_list_reg[130]  ( .D(n1153), .CK(CLK), .Q(n2801) );
  DFFQX1 \ROM1/Match_list_reg[129]  ( .D(n1154), .CK(CLK), .Q(n2802) );
  DFFQX1 \ROM1/Match_list_reg[128]  ( .D(n1155), .CK(CLK), .Q(n2803) );
  DFFQX1 \ROM1/Match_list_reg[127]  ( .D(n1156), .CK(CLK), .Q(n2804) );
  DFFQX1 \ROM1/Match_list_reg[126]  ( .D(n1157), .CK(CLK), .Q(n2805) );
  DFFQX1 \ROM1/Match_list_reg[164]  ( .D(n1119), .CK(CLK), .Q(n2767) );
  DFFQX1 \ROM1/Match_list_reg[163]  ( .D(n1120), .CK(CLK), .Q(n2768) );
  DFFQX1 \ROM1/Match_list_reg[162]  ( .D(n1121), .CK(CLK), .Q(n2769) );
  DFFQX1 \ROM1/Match_list_reg[157]  ( .D(n1126), .CK(CLK), .Q(n2774) );
  DFFQX1 \ROM1/Match_list_reg[156]  ( .D(n1127), .CK(CLK), .Q(n2775) );
  DFFQX1 \ROM1/Match_list_reg[155]  ( .D(n1128), .CK(CLK), .Q(n2776) );
  DFFQX1 \ROM1/Match_list_reg[154]  ( .D(n1129), .CK(CLK), .Q(n2777) );
  DFFQX1 \ROM1/Match_list_reg[153]  ( .D(n1130), .CK(CLK), .Q(n2778) );
  DFFQX1 \ROM1/Match_list_reg[151]  ( .D(n1132), .CK(CLK), .Q(n2780) );
  DFFQX1 \ROM1/Match_list_reg[150]  ( .D(n1133), .CK(CLK), .Q(n2781) );
  DFFQX1 \ROM1/Match_list_reg[149]  ( .D(n1134), .CK(CLK), .Q(n2782) );
  DFFQX1 \ROM1/Match_list_reg[148]  ( .D(n1135), .CK(CLK), .Q(n2783) );
  DFFQX1 \ROM1/Match_list_reg[147]  ( .D(n1136), .CK(CLK), .Q(n2784) );
  DFFQX1 \ROM1/Match_list_reg[145]  ( .D(n1138), .CK(CLK), .Q(n2786) );
  DFFQX1 \ROM1/Match_list_reg[116]  ( .D(n1167), .CK(CLK), .Q(n2815) );
  DFFQX1 \ROM1/Match_list_reg[115]  ( .D(n1168), .CK(CLK), .Q(n2816) );
  DFFQX1 \ROM1/Match_list_reg[114]  ( .D(n1169), .CK(CLK), .Q(n2817) );
  DFFQX1 \ROM1/Match_list_reg[112]  ( .D(n1171), .CK(CLK), .Q(n2819) );
  DFFQX1 \ROM1/Match_list_reg[109]  ( .D(n1174), .CK(CLK), .Q(n2822) );
  DFFQX1 \ROM1/Match_list_reg[107]  ( .D(n1176), .CK(CLK), .Q(n2824) );
  DFFQX1 \ROM1/Match_list_reg[106]  ( .D(n1177), .CK(CLK), .Q(n2825) );
  DFFQX1 \ROM1/Match_list_reg[104]  ( .D(n1179), .CK(CLK), .Q(n2827) );
  DFFQX1 \ROM1/Match_list_reg[103]  ( .D(n1180), .CK(CLK), .Q(n2828) );
  DFFQX1 \ROM1/Match_list_reg[102]  ( .D(n1181), .CK(CLK), .Q(n2829) );
  DFFQX1 \ROM1/Match_list_reg[101]  ( .D(n1182), .CK(CLK), .Q(n2830) );
  DFFQX1 \ROM1/Match_list_reg[100]  ( .D(n1183), .CK(CLK), .Q(n2831) );
  DFFQX1 \ROM1/Match_list_reg[99]  ( .D(n1184), .CK(CLK), .Q(n2832) );
  DFFQX1 \ROM1/Match_list_reg[98]  ( .D(n1185), .CK(CLK), .Q(n2833) );
  DFFQX1 \ROM1/Match_list_reg[97]  ( .D(n1186), .CK(CLK), .Q(n2834) );
  DFFQX1 \ROM1/Match_list_reg[68]  ( .D(n1215), .CK(CLK), .Q(n2863) );
  DFFQX1 \ROM1/Match_list_reg[66]  ( .D(n1217), .CK(CLK), .Q(n2865) );
  DFFQX1 \ROM1/Match_list_reg[64]  ( .D(n1219), .CK(CLK), .Q(n2867) );
  DFFQX1 \ROM1/Match_list_reg[61]  ( .D(n1222), .CK(CLK), .Q(n2870) );
  DFFQX1 \ROM1/Match_list_reg[60]  ( .D(n1223), .CK(CLK), .Q(n2871) );
  DFFQX1 \ROM1/Match_list_reg[59]  ( .D(n1224), .CK(CLK), .Q(n2872) );
  DFFQX1 \ROM1/Match_list_reg[58]  ( .D(n1225), .CK(CLK), .Q(n2873) );
  DFFQX1 \ROM1/Match_list_reg[57]  ( .D(n1226), .CK(CLK), .Q(n2874) );
  DFFQX1 \ROM1/Match_list_reg[56]  ( .D(n1227), .CK(CLK), .Q(n2875) );
  DFFQX1 \ROM1/Match_list_reg[55]  ( .D(n1228), .CK(CLK), .Q(n2876) );
  DFFQX1 \ROM1/Match_list_reg[54]  ( .D(n1229), .CK(CLK), .Q(n2877) );
  DFFQX1 \ROM1/Match_list_reg[53]  ( .D(n1230), .CK(CLK), .Q(n2878) );
  DFFQX1 \ROM1/Match_list_reg[50]  ( .D(n1233), .CK(CLK), .Q(n2881) );
  DFFQX1 \ROM1/Match_list_reg[49]  ( .D(n1234), .CK(CLK), .Q(n2882) );
  DFFQX1 \ROM1/Match_list_reg[239]  ( .D(n1284), .CK(CLK), .Q(n2692) );
  DFFQX1 \ROM1/Match_list_reg[144]  ( .D(n1139), .CK(CLK), .Q(n2787) );
  DFFQX1 \ROM1/Match_list_reg[96]  ( .D(n1187), .CK(CLK), .Q(n2835) );
  DFFQX1 \ROM1/Match_list_reg[48]  ( .D(n1235), .CK(CLK), .Q(n2883) );
  DFFQX1 \ROM1/Match_list_reg[216]  ( .D(n1067), .CK(CLK), .Q(n2715) );
  DFFQX1 \ROM1/Match_list_reg[168]  ( .D(n1115), .CK(CLK), .Q(n2763) );
  DFFQX1 \ROM1/Match_list_reg[72]  ( .D(n1211), .CK(CLK), .Q(n2859) );
  DFFQX1 \ROM1/Match_list_reg[237]  ( .D(n1046), .CK(CLK), .Q(n2694) );
  DFFQX1 \ROM1/Match_list_reg[236]  ( .D(n1047), .CK(CLK), .Q(n2695) );
  DFFQX1 \ROM1/Match_list_reg[235]  ( .D(n1048), .CK(CLK), .Q(n2696) );
  DFFQX1 \ROM1/Match_list_reg[233]  ( .D(n1050), .CK(CLK), .Q(n2698) );
  DFFQX1 \ROM1/Match_list_reg[232]  ( .D(n1051), .CK(CLK), .Q(n2699) );
  DFFQX1 \ROM1/Match_list_reg[231]  ( .D(n1052), .CK(CLK), .Q(n2700) );
  DFFQX1 \ROM1/Match_list_reg[230]  ( .D(n1053), .CK(CLK), .Q(n2701) );
  DFFQX1 \ROM1/Match_list_reg[229]  ( .D(n1054), .CK(CLK), .Q(n2702) );
  DFFQX1 \ROM1/Match_list_reg[227]  ( .D(n1056), .CK(CLK), .Q(n2704) );
  DFFQX1 \ROM1/Match_list_reg[226]  ( .D(n1057), .CK(CLK), .Q(n2705) );
  DFFQX1 \ROM1/Match_list_reg[225]  ( .D(n1058), .CK(CLK), .Q(n2706) );
  DFFQX1 \ROM1/Match_list_reg[224]  ( .D(n1059), .CK(CLK), .Q(n2707) );
  DFFQX1 \ROM1/Match_list_reg[222]  ( .D(n1061), .CK(CLK), .Q(n2709) );
  DFFQX1 \ROM1/Match_list_reg[221]  ( .D(n1062), .CK(CLK), .Q(n2710) );
  DFFQX1 \ROM1/Match_list_reg[220]  ( .D(n1063), .CK(CLK), .Q(n2711) );
  DFFQX1 \ROM1/Match_list_reg[219]  ( .D(n1064), .CK(CLK), .Q(n2712) );
  DFFQX1 \ROM1/Match_list_reg[218]  ( .D(n1065), .CK(CLK), .Q(n2713) );
  DFFQX1 \ROM1/Match_list_reg[217]  ( .D(n1066), .CK(CLK), .Q(n2714) );
  DFFQX1 \ROM1/Match_list_reg[188]  ( .D(n1095), .CK(CLK), .Q(n2743) );
  DFFQX1 \ROM1/Match_list_reg[187]  ( .D(n1096), .CK(CLK), .Q(n2744) );
  DFFQX1 \ROM1/Match_list_reg[186]  ( .D(n1097), .CK(CLK), .Q(n2745) );
  DFFQX1 \ROM1/Match_list_reg[184]  ( .D(n1099), .CK(CLK), .Q(n2747) );
  DFFQX1 \ROM1/Match_list_reg[181]  ( .D(n1102), .CK(CLK), .Q(n2750) );
  DFFQX1 \ROM1/Match_list_reg[180]  ( .D(n1103), .CK(CLK), .Q(n2751) );
  DFFQX1 \ROM1/Match_list_reg[179]  ( .D(n1104), .CK(CLK), .Q(n2752) );
  DFFQX1 \ROM1/Match_list_reg[178]  ( .D(n1105), .CK(CLK), .Q(n2753) );
  DFFQX1 \ROM1/Match_list_reg[177]  ( .D(n1106), .CK(CLK), .Q(n2754) );
  DFFQX1 \ROM1/Match_list_reg[175]  ( .D(n1108), .CK(CLK), .Q(n2756) );
  DFFQX1 \ROM1/Match_list_reg[174]  ( .D(n1109), .CK(CLK), .Q(n2757) );
  DFFQX1 \ROM1/Match_list_reg[173]  ( .D(n1110), .CK(CLK), .Q(n2758) );
  DFFQX1 \ROM1/Match_list_reg[172]  ( .D(n1111), .CK(CLK), .Q(n2759) );
  DFFQX1 \ROM1/Match_list_reg[170]  ( .D(n1113), .CK(CLK), .Q(n2761) );
  DFFQX1 \ROM1/Match_list_reg[169]  ( .D(n1114), .CK(CLK), .Q(n2762) );
  DFFQX1 \ROM1/Match_list_reg[92]  ( .D(n1191), .CK(CLK), .Q(n2839) );
  DFFQX1 \ROM1/Match_list_reg[90]  ( .D(n1193), .CK(CLK), .Q(n2841) );
  DFFQX1 \ROM1/Match_list_reg[85]  ( .D(n1198), .CK(CLK), .Q(n2846) );
  DFFQX1 \ROM1/Match_list_reg[84]  ( .D(n1199), .CK(CLK), .Q(n2847) );
  DFFQX1 \ROM1/Match_list_reg[83]  ( .D(n1200), .CK(CLK), .Q(n2848) );
  DFFQX1 \ROM1/Match_list_reg[82]  ( .D(n1201), .CK(CLK), .Q(n2849) );
  DFFQX1 \ROM1/Match_list_reg[81]  ( .D(n1202), .CK(CLK), .Q(n2850) );
  DFFQX1 \ROM1/Match_list_reg[80]  ( .D(n1203), .CK(CLK), .Q(n2851) );
  DFFQX1 \ROM1/Match_list_reg[79]  ( .D(n1204), .CK(CLK), .Q(n2852) );
  DFFQX1 \ROM1/Match_list_reg[78]  ( .D(n1205), .CK(CLK), .Q(n2853) );
  DFFQX1 \ROM1/Match_list_reg[77]  ( .D(n1206), .CK(CLK), .Q(n2854) );
  DFFQX1 \ROM1/Match_list_reg[75]  ( .D(n1208), .CK(CLK), .Q(n2856) );
  DFFQX1 \ROM1/Match_list_reg[73]  ( .D(n1210), .CK(CLK), .Q(n2858) );
  DFFQX1 \ROM1/Match_list_reg[166]  ( .D(n1117), .CK(CLK), .Q(n2765) );
  DFFQX1 \ROM1/Match_list_reg[165]  ( .D(n1118), .CK(CLK), .Q(n2766) );
  DFFQX1 \ROM1/Match_list_reg[161]  ( .D(n1122), .CK(CLK), .Q(n2770) );
  DFFQX1 \ROM1/Match_list_reg[160]  ( .D(n1123), .CK(CLK), .Q(n2771) );
  DFFQX1 \ROM1/Match_list_reg[159]  ( .D(n1124), .CK(CLK), .Q(n2772) );
  DFFQX1 \ROM1/Match_list_reg[158]  ( .D(n1125), .CK(CLK), .Q(n2773) );
  DFFQX1 \ROM1/Match_list_reg[146]  ( .D(n1137), .CK(CLK), .Q(n2785) );
  DFFQX1 \ROM1/Match_list_reg[118]  ( .D(n1165), .CK(CLK), .Q(n2813) );
  DFFQX1 \ROM1/Match_list_reg[117]  ( .D(n1166), .CK(CLK), .Q(n2814) );
  DFFQX1 \ROM1/Match_list_reg[113]  ( .D(n1170), .CK(CLK), .Q(n2818) );
  DFFQX1 \ROM1/Match_list_reg[111]  ( .D(n1172), .CK(CLK), .Q(n2820) );
  DFFQX1 \ROM1/Match_list_reg[110]  ( .D(n1173), .CK(CLK), .Q(n2821) );
  DFFQX1 \ROM1/Match_list_reg[105]  ( .D(n1178), .CK(CLK), .Q(n2826) );
  DFFQX1 \ROM1/Match_list_reg[71]  ( .D(n1212), .CK(CLK), .Q(n2860) );
  DFFQX1 \ROM1/Match_list_reg[70]  ( .D(n1213), .CK(CLK), .Q(n2861) );
  DFFQX1 \ROM1/Match_list_reg[69]  ( .D(n1214), .CK(CLK), .Q(n2862) );
  DFFQX1 \ROM1/Match_list_reg[65]  ( .D(n1218), .CK(CLK), .Q(n2866) );
  DFFQX1 \ROM1/Match_list_reg[63]  ( .D(n1220), .CK(CLK), .Q(n2868) );
  DFFQX1 \ROM1/Match_list_reg[62]  ( .D(n1221), .CK(CLK), .Q(n2869) );
  DFFQX1 \ROM1/Match_list_reg[51]  ( .D(n1232), .CK(CLK), .Q(n2880) );
  DFFQX1 \ROM1/Match_list_reg[238]  ( .D(n1045), .CK(CLK), .Q(n2693) );
  DFFQX1 \ROM1/Match_list_reg[223]  ( .D(n1060), .CK(CLK), .Q(n2708) );
  DFFQX1 \ROM1/Match_list_reg[190]  ( .D(n1093), .CK(CLK), .Q(n2741) );
  DFFQX1 \ROM1/Match_list_reg[189]  ( .D(n1094), .CK(CLK), .Q(n2742) );
  DFFQX1 \ROM1/Match_list_reg[185]  ( .D(n1098), .CK(CLK), .Q(n2746) );
  DFFQX1 \ROM1/Match_list_reg[183]  ( .D(n1100), .CK(CLK), .Q(n2748) );
  DFFQX1 \ROM1/Match_list_reg[182]  ( .D(n1101), .CK(CLK), .Q(n2749) );
  DFFQX1 \ROM1/Match_list_reg[171]  ( .D(n1112), .CK(CLK), .Q(n2760) );
  DFFQX1 \ROM1/Match_list_reg[119]  ( .D(n1164), .CK(CLK), .Q(n2812) );
  DFFQX1 \ROM1/Match_list_reg[95]  ( .D(n1188), .CK(CLK), .Q(n2836) );
  DFFQX1 \ROM1/Match_list_reg[94]  ( .D(n1189), .CK(CLK), .Q(n2837) );
  DFFQX1 \ROM1/Match_list_reg[93]  ( .D(n1190), .CK(CLK), .Q(n2838) );
  DFFQX1 \ROM1/Match_list_reg[89]  ( .D(n1194), .CK(CLK), .Q(n2842) );
  DFFQX1 \ROM1/Match_list_reg[88]  ( .D(n1195), .CK(CLK), .Q(n2843) );
  DFFQX1 \ROM1/Match_list_reg[87]  ( .D(n1196), .CK(CLK), .Q(n2844) );
  DFFQX1 \ROM1/Match_list_reg[86]  ( .D(n1197), .CK(CLK), .Q(n2845) );
  DFFQX1 \ROM1/Match_list_reg[74]  ( .D(n1209), .CK(CLK), .Q(n2857) );
  DFFQX1 \ROM1/Match_list_reg[152]  ( .D(n1131), .CK(CLK), .Q(n2779) );
  DFFQX1 \ROM1/Match_list_reg[108]  ( .D(n1175), .CK(CLK), .Q(n2823) );
  DFFQX1 \ROM1/Match_list_reg[67]  ( .D(n1216), .CK(CLK), .Q(n2864) );
  DFFQX1 \ROM1/Match_list_reg[52]  ( .D(n1231), .CK(CLK), .Q(n2879) );
  DFFQX1 \ROM1/Match_list_reg[24]  ( .D(n1259), .CK(CLK), .Q(n2907) );
  DFFQX1 \ROM1/Match_list_reg[44]  ( .D(n1239), .CK(CLK), .Q(n2887) );
  DFFQX1 \ROM1/Match_list_reg[43]  ( .D(n1240), .CK(CLK), .Q(n2888) );
  DFFQX1 \ROM1/Match_list_reg[42]  ( .D(n1241), .CK(CLK), .Q(n2889) );
  DFFQX1 \ROM1/Match_list_reg[40]  ( .D(n1243), .CK(CLK), .Q(n2891) );
  DFFQX1 \ROM1/Match_list_reg[37]  ( .D(n1246), .CK(CLK), .Q(n2894) );
  DFFQX1 \ROM1/Match_list_reg[36]  ( .D(n1247), .CK(CLK), .Q(n2895) );
  DFFQX1 \ROM1/Match_list_reg[35]  ( .D(n1248), .CK(CLK), .Q(n2896) );
  DFFQX1 \ROM1/Match_list_reg[29]  ( .D(n1254), .CK(CLK), .Q(n2902) );
  DFFQX1 \ROM1/Match_list_reg[28]  ( .D(n1255), .CK(CLK), .Q(n2903) );
  DFFQX1 \ROM1/Match_list_reg[27]  ( .D(n1256), .CK(CLK), .Q(n2904) );
  DFFQX1 \ROM1/Match_list_reg[26]  ( .D(n1257), .CK(CLK), .Q(n2905) );
  DFFQX1 \ROM1/Match_list_reg[25]  ( .D(n1258), .CK(CLK), .Q(n2906) );
  DFFQX1 \ROM1/Match_list_reg[167]  ( .D(n1116), .CK(CLK), .Q(n2764) );
  DFFQX1 \ROM1/Match_list_reg[47]  ( .D(n1236), .CK(CLK), .Q(n2884) );
  DFFQX1 \ROM1/Match_list_reg[46]  ( .D(n1237), .CK(CLK), .Q(n2885) );
  DFFQX1 \ROM1/Match_list_reg[45]  ( .D(n1238), .CK(CLK), .Q(n2886) );
  DFFQX1 \ROM1/Match_list_reg[41]  ( .D(n1242), .CK(CLK), .Q(n2890) );
  DFFQX1 \ROM1/Match_list_reg[39]  ( .D(n1244), .CK(CLK), .Q(n2892) );
  DFFQX1 \ROM1/Match_list_reg[38]  ( .D(n1245), .CK(CLK), .Q(n2893) );
  DFFQX1 \W_reg[2]  ( .D(N820), .CK(CLK), .Q(n2675) );
  DFFQX1 \ROM1/Match_list_reg[10]  ( .D(n1273), .CK(CLK), .Q(n2921) );
  DFFQX1 \ROM1/Match_list_reg[22]  ( .D(n1261), .CK(CLK), .Q(n2909) );
  DFFQX1 \ROM1/Match_list_reg[21]  ( .D(n1262), .CK(CLK), .Q(n2910) );
  DFFQX1 \ROM1/Match_list_reg[20]  ( .D(n1263), .CK(CLK), .Q(n2911) );
  DFFQX1 \ROM1/Match_list_reg[19]  ( .D(n1264), .CK(CLK), .Q(n2912) );
  DFFQX1 \ROM1/Match_list_reg[18]  ( .D(n1265), .CK(CLK), .Q(n2913) );
  DFFQX1 \ROM1/Match_list_reg[9]  ( .D(n1274), .CK(CLK), .Q(n2922) );
  DFFQX1 \ROM1/Match_list_reg[8]  ( .D(n1275), .CK(CLK), .Q(n2923) );
  DFFQX1 \ROM1/Match_list_reg[7]  ( .D(n1276), .CK(CLK), .Q(n2924) );
  DFFQX1 \ROM1/Match_list_reg[6]  ( .D(n1277), .CK(CLK), .Q(n2925) );
  DFFQX1 \ROM1/Match_list_reg[215]  ( .D(n1068), .CK(CLK), .Q(n2716) );
  DFFQX1 \ROM1/Match_list_reg[214]  ( .D(n1069), .CK(CLK), .Q(n2717) );
  DFFQX1 \ROM1/Match_list_reg[212]  ( .D(n1071), .CK(CLK), .Q(n2719) );
  DFFQX1 \ROM1/Match_list_reg[211]  ( .D(n1072), .CK(CLK), .Q(n2720) );
  DFFQX1 \ROM1/Match_list_reg[210]  ( .D(n1073), .CK(CLK), .Q(n2721) );
  DFFQX1 \ROM1/Match_list_reg[209]  ( .D(n1074), .CK(CLK), .Q(n2722) );
  DFFQX1 \ROM1/Match_list_reg[208]  ( .D(n1075), .CK(CLK), .Q(n2723) );
  DFFQX1 \ROM1/Match_list_reg[207]  ( .D(n1076), .CK(CLK), .Q(n2724) );
  DFFQX1 \ROM1/Match_list_reg[206]  ( .D(n1077), .CK(CLK), .Q(n2725) );
  DFFQX1 \ROM1/Match_list_reg[205]  ( .D(n1078), .CK(CLK), .Q(n2726) );
  DFFQX1 \ROM1/Match_list_reg[204]  ( .D(n1079), .CK(CLK), .Q(n2727) );
  DFFQX1 \ROM1/Match_list_reg[203]  ( .D(n1080), .CK(CLK), .Q(n2728) );
  DFFQX1 \ROM1/Match_list_reg[202]  ( .D(n1081), .CK(CLK), .Q(n2729) );
  DFFQX1 \ROM1/Match_list_reg[201]  ( .D(n1082), .CK(CLK), .Q(n2730) );
  DFFQX1 \ROM1/Match_list_reg[200]  ( .D(n1083), .CK(CLK), .Q(n2731) );
  DFFQX1 \ROM1/Match_list_reg[199]  ( .D(n1084), .CK(CLK), .Q(n2732) );
  DFFQX1 \ROM1/Match_list_reg[197]  ( .D(n1086), .CK(CLK), .Q(n2734) );
  DFFQX1 \ROM1/Match_list_reg[196]  ( .D(n1087), .CK(CLK), .Q(n2735) );
  DFFQX1 \ROM1/Match_list_reg[195]  ( .D(n1088), .CK(CLK), .Q(n2736) );
  DFFQX1 \ROM1/Match_list_reg[194]  ( .D(n1089), .CK(CLK), .Q(n2737) );
  DFFQX1 \ROM1/Match_list_reg[193]  ( .D(n1090), .CK(CLK), .Q(n2738) );
  DFFQX1 \ROM1/Match_list_reg[192]  ( .D(n1091), .CK(CLK), .Q(n2739) );
  DFFQX1 \ROM1/Match_list_reg[213]  ( .D(n1070), .CK(CLK), .Q(n2718) );
  DFFQX1 \ROM1/Match_list_reg[198]  ( .D(n1085), .CK(CLK), .Q(n2733) );
  DFFQX1 \ROM1/Match_list_reg[0]  ( .D(n1283), .CK(CLK), .Q(n2931) );
  DFFQX1 \ROM1/Match_list_reg[23]  ( .D(n1260), .CK(CLK), .Q(n2908) );
  DFFQX1 \ROM1/Match_list_reg[17]  ( .D(n1266), .CK(CLK), .Q(n2914) );
  DFFQX1 \ROM1/Match_list_reg[16]  ( .D(n1267), .CK(CLK), .Q(n2915) );
  DFFQX1 \ROM1/Match_list_reg[15]  ( .D(n1268), .CK(CLK), .Q(n2916) );
  DFFQX1 \ROM1/Match_list_reg[14]  ( .D(n1269), .CK(CLK), .Q(n2917) );
  DFFQX1 \ROM1/Match_list_reg[13]  ( .D(n1270), .CK(CLK), .Q(n2918) );
  DFFQX1 \ROM1/Match_list_reg[12]  ( .D(n1271), .CK(CLK), .Q(n2919) );
  DFFQX1 \ROM1/Match_list_reg[11]  ( .D(n1272), .CK(CLK), .Q(n2920) );
  DFFQX1 \ROM1/Match_list_reg[5]  ( .D(n1278), .CK(CLK), .Q(n2926) );
  DFFQX1 \ROM1/Match_list_reg[4]  ( .D(n1279), .CK(CLK), .Q(n2927) );
  DFFQX1 \ROM1/Match_list_reg[3]  ( .D(n1280), .CK(CLK), .Q(n2928) );
  DFFQX1 \ROM1/Match_list_reg[2]  ( .D(n1281), .CK(CLK), .Q(n2929) );
  DFFQX1 \ROM1/Match_list_reg[1]  ( .D(n1282), .CK(CLK), .Q(n2930) );
  DFFQX1 \MinCost_reg[8]  ( .D(N851), .CK(CLK), .Q(n2683) );
  DFFQX2 \replace_value_reg[2]  ( .D(n1313), .CK(CLK), .Q(N310) );
  DFFQX1 \MinCost_reg[1]  ( .D(N844), .CK(CLK), .Q(n2690) );
  DFFQX1 \MinCost_reg[3]  ( .D(N846), .CK(CLK), .Q(n2688) );
  DFFQX1 \MinCost_reg[2]  ( .D(N845), .CK(CLK), .Q(n2689) );
  DFFQX1 \MinCost_reg[9]  ( .D(N852), .CK(CLK), .Q(n2682) );
  DFFQX1 \MinCost_reg[6]  ( .D(N849), .CK(CLK), .Q(n2685) );
  DFFQX1 \MinCost_reg[7]  ( .D(N850), .CK(CLK), .Q(n2684) );
  DFFTRX1 \ROM1/Match_list_reg[234]  ( .D(1'b1), .RN(n1049), .CK(CLK), .Q(
        n2697), .QN(n2674) );
  DFFQX1 \MinCost_reg[4]  ( .D(N847), .CK(CLK), .Q(n2687) );
  DFFQX1 \MinCost_reg[5]  ( .D(N848), .CK(CLK), .Q(n2686) );
  DFFQX2 \min_index_reg[0]  ( .D(N772), .CK(CLK), .Q(min_index[0]) );
  DFFQX2 \list_reg[2][2]  ( .D(n1331), .CK(CLK), .Q(\list[2][2] ) );
  DFFQX2 \list_reg[6][0]  ( .D(n1321), .CK(CLK), .Q(\list[6][0] ) );
  DFFQX2 \list_reg[5][1]  ( .D(n1323), .CK(CLK), .Q(\list[5][1] ) );
  DFFQX2 \list_reg[5][0]  ( .D(n1324), .CK(CLK), .Q(\list[5][0] ) );
  DFFQX1 \ROM1/Match_list_reg[76]  ( .D(n1207), .CK(CLK), .Q(n2855) );
  DFFQX1 \ROM1/Match_list_reg[91]  ( .D(n1192), .CK(CLK), .Q(n2840) );
  DFFQX1 \ROM1/Match_list_reg[176]  ( .D(n1107), .CK(CLK), .Q(n2755) );
  DFFQX1 \ROM1/Match_list_reg[228]  ( .D(n1055), .CK(CLK), .Q(n2703) );
  DFFQX1 \ROM1/Match_list_reg[120]  ( .D(n1163), .CK(CLK), .Q(n2811) );
  DFFQX1 \ROM1/Match_list_reg[121]  ( .D(n1162), .CK(CLK), .Q(n2810) );
  DFFQX1 \ROM1/Match_list_reg[122]  ( .D(n1161), .CK(CLK), .Q(n2809) );
  DFFQX1 \ROM1/Match_list_reg[123]  ( .D(n1160), .CK(CLK), .Q(n2808) );
  DFFQX1 \ROM1/Match_list_reg[124]  ( .D(n1159), .CK(CLK), .Q(n2807) );
  DFFQX1 \ROM1/Match_list_reg[125]  ( .D(n1158), .CK(CLK), .Q(n2806) );
  DFFQX1 \ROM1/Match_list_reg[132]  ( .D(n1151), .CK(CLK), .Q(n2799) );
  DFFQX1 \ROM1/Match_list_reg[133]  ( .D(n1150), .CK(CLK), .Q(n2798) );
  DFFQX1 \ROM1/Match_list_reg[136]  ( .D(n1147), .CK(CLK), .Q(n2795) );
  DFFQX1 \ROM1/Match_list_reg[138]  ( .D(n1145), .CK(CLK), .Q(n2793) );
  DFFQX1 \ROM1/Match_list_reg[139]  ( .D(n1144), .CK(CLK), .Q(n2792) );
  DFFQX1 \ROM1/Match_list_reg[140]  ( .D(n1143), .CK(CLK), .Q(n2791) );
  DFFQX1 \ROM1/Match_list_reg[191]  ( .D(n1092), .CK(CLK), .Q(n2740) );
  DFFQX1 \ROM1/Match_list_reg[131]  ( .D(n1152), .CK(CLK), .Q(n2800) );
  DFFQX1 \ROM1/Match_list_reg[134]  ( .D(n1149), .CK(CLK), .Q(n2797) );
  DFFQX1 \ROM1/Match_list_reg[135]  ( .D(n1148), .CK(CLK), .Q(n2796) );
  DFFQX1 \ROM1/Match_list_reg[137]  ( .D(n1146), .CK(CLK), .Q(n2794) );
  DFFQX1 \ROM1/Match_list_reg[141]  ( .D(n1142), .CK(CLK), .Q(n2790) );
  DFFQX1 \ROM1/Match_list_reg[142]  ( .D(n1141), .CK(CLK), .Q(n2789) );
  DFFQX1 \ROM1/Match_list_reg[143]  ( .D(n1140), .CK(CLK), .Q(n2788) );
  DFFQX2 \list_reg[1][2]  ( .D(n1334), .CK(CLK), .Q(\list[1][2] ) );
  DFFQX2 \list_reg[0][2]  ( .D(n1337), .CK(CLK), .Q(\list[0][2] ) );
  DFFQX2 \list_reg[0][1]  ( .D(n1338), .CK(CLK), .Q(\list[0][1] ) );
  DFFQX2 \list_reg[1][1]  ( .D(n1335), .CK(CLK), .Q(\list[1][1] ) );
  DFFQX2 \list_reg[0][0]  ( .D(n1339), .CK(CLK), .Q(\list[0][0] ) );
  DFFQX2 \list_reg[6][2]  ( .D(n1319), .CK(CLK), .Q(\list[6][2] ) );
  DFFQX2 \list_reg[3][2]  ( .D(n1328), .CK(CLK), .Q(\list[3][2] ) );
  DFFQX2 \list_reg[3][1]  ( .D(n1329), .CK(CLK), .Q(\list[3][1] ) );
  DFFQX2 \list_reg[4][2]  ( .D(n1325), .CK(CLK), .Q(\list[4][2] ) );
  ADDFXL \intadd_0/U3  ( .A(Cost[5]), .B(cost_temp[5]), .CI(\intadd_0/n3 ), 
        .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[3] ) );
  DFFQX1 \MinCost_reg[0]  ( .D(N843), .CK(CLK), .Q(n2691) );
  ADDFXL \intadd_0/U6  ( .A(Cost[2]), .B(cost_temp[2]), .CI(\intadd_0/CI ), 
        .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[0] ) );
  OR2X2 U1382 ( .A(n2295), .B(RST), .Y(n2311) );
  NAND2X1 U1383 ( .A(n2676), .B(n2675), .Y(n2202) );
  CLKINVX1 U1384 ( .A(n1741), .Y(n2546) );
  NAND4BBXL U1385 ( .AN(n1793), .BN(n1792), .C(n1791), .D(n1790), .Y(n1794) );
  NOR2X1 U1386 ( .A(MatchCount[2]), .B(MatchCount[3]), .Y(n1954) );
  CLKBUFX3 U1387 ( .A(n1664), .Y(n2610) );
  INVX1 U1388 ( .A(Cost[1]), .Y(n1953) );
  NAND2XL U1389 ( .A(\gt_replace_value_num[2][0] ), .B(n2266), .Y(n2239) );
  AOI211XL U1390 ( .A0(n2609), .A1(n1669), .B0(n1741), .C0(n2608), .Y(n1668)
         );
  NOR2X1 U1391 ( .A(RST), .B(n1647), .Y(n1666) );
  AOI222XL U1392 ( .A0(\list[6][2] ), .A1(n1852), .B0(\list[6][2] ), .B1(n2654), .C0(n1852), .C1(n2654), .Y(n2027) );
  INVXL U1393 ( .A(n1840), .Y(n1459) );
  AOI222XL U1394 ( .A0(\list[1][2] ), .A1(n1836), .B0(\list[1][2] ), .B1(n2637), .C0(n1836), .C1(n2637), .Y(n1859) );
  NOR2X1 U1395 ( .A(n2093), .B(n2092), .Y(n2322) );
  AOI222X2 U1396 ( .A0(n2273), .A1(n2272), .B0(n2273), .B1(n2271), .C0(n2272), 
        .C1(n2271), .Y(n2282) );
  AND2X1 U1397 ( .A(n2541), .B(Match_list[10]), .Y(n2494) );
  BUFX4 U1398 ( .A(n1670), .Y(n2541) );
  INVX1 U1399 ( .A(n2416), .Y(n2417) );
  NOR2X1 U1400 ( .A(n1937), .B(n2546), .Y(n2415) );
  AOI222X1 U1401 ( .A0(n2259), .A1(\gt_replace_value_num[0][2] ), .B0(
        \gt_replace_value_num[1][2] ), .B1(n2263), .C0(
        \gt_replace_value_num[2][2] ), .C1(n2308), .Y(n2283) );
  INVX2 U1402 ( .A(n1977), .Y(n2609) );
  NOR2X2 U1403 ( .A(n2251), .B(n2259), .Y(n2263) );
  INVX1 U1404 ( .A(n1909), .Y(n2093) );
  INVX1 U1405 ( .A(n1789), .Y(n1866) );
  INVX2 U1406 ( .A(n2405), .Y(n2129) );
  BUFX2 U1407 ( .A(n1815), .Y(n2405) );
  INVX1 U1408 ( .A(n2090), .Y(n2060) );
  OAI211X2 U1409 ( .A0(n1861), .A1(n1784), .B0(n2339), .C0(n2389), .Y(n2176)
         );
  INVX1 U1410 ( .A(n2414), .Y(n2120) );
  NAND2X1 U1411 ( .A(n2020), .B(n2339), .Y(n1902) );
  NOR2X1 U1412 ( .A(n2204), .B(n2332), .Y(n1647) );
  NOR3X1 U1413 ( .A(n2204), .B(n2332), .C(RST), .Y(n1664) );
  NOR3X1 U1414 ( .A(MatchCount[3]), .B(n1663), .C(n1939), .Y(n1671) );
  OR2X1 U1415 ( .A(n1810), .B(n2390), .Y(n1776) );
  INVX2 U1416 ( .A(n2351), .Y(n2301) );
  INVX1 U1417 ( .A(MatchCount[3]), .Y(n1937) );
  AOI221X4 U1418 ( .A0(n1861), .A1(n1784), .B0(cs[0]), .B1(cs[1]), .C0(n1804), 
        .Y(n2020) );
  OR2X1 U1419 ( .A(n2689), .B(n2329), .Y(n1790) );
  INVX2 U1420 ( .A(n2165), .Y(n2298) );
  OAI31X2 U1421 ( .A0(n1861), .A1(n1784), .A2(n1804), .B0(n2339), .Y(n2406) );
  INVX1 U1422 ( .A(n2770), .Y(n2000) );
  INVX1 U1423 ( .A(n2870), .Y(n2563) );
  INVX1 U1424 ( .A(n2741), .Y(n2010) );
  INVX1 U1425 ( .A(n2838), .Y(n1930) );
  INVX1 U1426 ( .A(n2871), .Y(n2562) );
  INVX1 U1427 ( .A(n2802), .Y(n2615) );
  INVX1 U1428 ( .A(n2774), .Y(n1971) );
  INVX1 U1429 ( .A(n2769), .Y(n1970) );
  INVX1 U1430 ( .A(n2869), .Y(n2564) );
  INVX1 U1431 ( .A(n2872), .Y(n2561) );
  INVX1 U1432 ( .A(n2839), .Y(n1925) );
  INVX1 U1433 ( .A(n2874), .Y(n2559) );
  INVX1 U1434 ( .A(n2775), .Y(n1968) );
  INVX1 U1435 ( .A(n2834), .Y(n2579) );
  INVX1 U1436 ( .A(n2767), .Y(n1957) );
  INVX1 U1437 ( .A(n2837), .Y(n1933) );
  INVX1 U1438 ( .A(n2868), .Y(n2565) );
  INVX1 U1439 ( .A(n2742), .Y(n2009) );
  INVX1 U1440 ( .A(n2840), .Y(n1391) );
  INVX1 U1441 ( .A(n2809), .Y(n1381) );
  INVX1 U1442 ( .A(n2740), .Y(n1361) );
  INVX1 U1443 ( .A(n2771), .Y(n1967) );
  INVX1 U1444 ( .A(n2796), .Y(n1355) );
  INVX1 U1445 ( .A(n2808), .Y(n1379) );
  INVX1 U1446 ( .A(n2806), .Y(n1375) );
  INVX1 U1447 ( .A(n2773), .Y(n2003) );
  INVX1 U1448 ( .A(n2875), .Y(n2558) );
  INVX1 U1449 ( .A(n2798), .Y(n1371) );
  INVX1 U1450 ( .A(n2832), .Y(n2581) );
  INVX1 U1451 ( .A(n2766), .Y(n2002) );
  INVX1 U1452 ( .A(n2800), .Y(n1359) );
  INVX1 U1453 ( .A(n2768), .Y(n1962) );
  INVX1 U1454 ( .A(n2867), .Y(n2566) );
  INVX1 U1455 ( .A(n2743), .Y(n1983) );
  INVX1 U1456 ( .A(n2841), .Y(n1921) );
  INVX1 U1457 ( .A(n2797), .Y(n1357) );
  INVX1 U1458 ( .A(n2807), .Y(n1377) );
  INVX1 U1459 ( .A(n2835), .Y(n2578) );
  INVX1 U1460 ( .A(n2873), .Y(n2560) );
  INVX1 U1461 ( .A(n2805), .Y(n2612) );
  INVX1 U1462 ( .A(n2833), .Y(n2580) );
  INVX1 U1463 ( .A(n2810), .Y(n1383) );
  INVX1 U1464 ( .A(n2836), .Y(n1935) );
  INVX1 U1465 ( .A(n2776), .Y(n1963) );
  INVX1 U1466 ( .A(n2866), .Y(n2567) );
  INVX1 U1467 ( .A(n2744), .Y(n1984) );
  INVX2 U1468 ( .A(N310), .Y(n2070) );
  INVX1 U1469 ( .A(n2772), .Y(n2001) );
  INVX1 U1470 ( .A(n2801), .Y(n2616) );
  INVX1 U1471 ( .A(n2803), .Y(n2614) );
  INVX1 U1472 ( .A(n2811), .Y(n1385) );
  INVX1 U1473 ( .A(n2757), .Y(n1994) );
  INVX1 U1474 ( .A(n2799), .Y(n1373) );
  INVX1 U1475 ( .A(n2865), .Y(n2568) );
  INVX1 U1476 ( .A(n2812), .Y(n2603) );
  INVX1 U1477 ( .A(n2842), .Y(n1931) );
  INVX1 U1478 ( .A(n2831), .Y(n2582) );
  INVX1 U1479 ( .A(n2777), .Y(n1966) );
  INVX1 U1480 ( .A(n2795), .Y(n1369) );
  INVX1 U1481 ( .A(n2765), .Y(n2006) );
  INVX1 U1482 ( .A(n2813), .Y(n2601) );
  INVX1 U1483 ( .A(n2864), .Y(n2569) );
  INVX1 U1484 ( .A(n2745), .Y(n1987) );
  INVX1 U1485 ( .A(n2843), .Y(n1920) );
  INVX1 U1486 ( .A(n2830), .Y(n2583) );
  INVX1 U1487 ( .A(n2794), .Y(n1353) );
  INVX1 U1488 ( .A(n2778), .Y(n1973) );
  INVX1 U1489 ( .A(n2814), .Y(n2600) );
  INVX1 U1490 ( .A(n2764), .Y(n2004) );
  INVX1 U1491 ( .A(n2844), .Y(n1929) );
  INVX1 U1492 ( .A(n2863), .Y(n2571) );
  INVX1 U1493 ( .A(n2746), .Y(n2011) );
  INVX1 U1494 ( .A(n2793), .Y(n1367) );
  INVX1 U1495 ( .A(n2829), .Y(n2584) );
  INVX1 U1496 ( .A(n2815), .Y(n2599) );
  INVX1 U1497 ( .A(n2779), .Y(n1972) );
  INVX1 U1498 ( .A(n2763), .Y(n1982) );
  INVX1 U1499 ( .A(n2845), .Y(n1932) );
  INVX1 U1500 ( .A(n2862), .Y(n2572) );
  INVX1 U1501 ( .A(n2747), .Y(n1989) );
  INVX1 U1502 ( .A(n2828), .Y(n2585) );
  INVX1 U1503 ( .A(n2792), .Y(n1365) );
  INVX1 U1504 ( .A(n2780), .Y(n1958) );
  INVX1 U1505 ( .A(n2816), .Y(n2597) );
  INVX1 U1506 ( .A(n2846), .Y(n1912) );
  INVX1 U1507 ( .A(n2861), .Y(n2573) );
  INVX1 U1508 ( .A(n2748), .Y(n2013) );
  INVX1 U1509 ( .A(n2827), .Y(n2586) );
  INVX1 U1510 ( .A(n2781), .Y(n1969) );
  INVX1 U1511 ( .A(n2791), .Y(n1363) );
  INVX1 U1512 ( .A(n2762), .Y(n1996) );
  INVX1 U1513 ( .A(n2860), .Y(n2575) );
  INVX1 U1514 ( .A(n2782), .Y(n1960) );
  INVX1 U1515 ( .A(n2749), .Y(n2008) );
  INVX1 U1516 ( .A(n2847), .Y(n1916) );
  INVX1 U1517 ( .A(n2817), .Y(n2596) );
  INVX1 U1518 ( .A(n2790), .Y(n1351) );
  INVX1 U1519 ( .A(n2818), .Y(n2595) );
  INVX1 U1520 ( .A(n2826), .Y(n2587) );
  INVX1 U1521 ( .A(n2859), .Y(n1926) );
  INVX1 U1522 ( .A(n2750), .Y(n1990) );
  INVX1 U1523 ( .A(n2789), .Y(n1349) );
  INVX1 U1524 ( .A(n2819), .Y(n2594) );
  INVX1 U1525 ( .A(n2858), .Y(n1919) );
  INVX1 U1526 ( .A(n2761), .Y(n1992) );
  INVX1 U1527 ( .A(n2848), .Y(n1917) );
  INVX1 U1528 ( .A(n2751), .Y(n1985) );
  INVX1 U1529 ( .A(n2760), .Y(n1999) );
  INVX1 U1530 ( .A(n2849), .Y(n1918) );
  INVX1 U1531 ( .A(n2788), .Y(n1347) );
  INVX1 U1532 ( .A(n2820), .Y(n2593) );
  INVX1 U1533 ( .A(n2825), .Y(n2588) );
  INVX1 U1534 ( .A(n2857), .Y(n1922) );
  INVX1 U1535 ( .A(n2752), .Y(n1986) );
  INVX1 U1536 ( .A(n2787), .Y(n1959) );
  INVX1 U1537 ( .A(n2783), .Y(n1964) );
  INVX1 U1538 ( .A(n2821), .Y(n2592) );
  INVX1 U1539 ( .A(n2856), .Y(n1915) );
  INVX1 U1540 ( .A(n2753), .Y(n1991) );
  INVX1 U1541 ( .A(n2850), .Y(n1914) );
  INVX1 U1542 ( .A(n2759), .Y(n1997) );
  INVX1 U1543 ( .A(n2851), .Y(n1928) );
  INVX1 U1544 ( .A(n2754), .Y(n1988) );
  INVX1 U1545 ( .A(n2824), .Y(n2589) );
  INVX1 U1546 ( .A(n2758), .Y(n1995) );
  INVX1 U1547 ( .A(n2855), .Y(n1393) );
  INVX1 U1548 ( .A(n2786), .Y(n1965) );
  INVX1 U1549 ( .A(n2854), .Y(n1924) );
  INVX1 U1550 ( .A(n2822), .Y(n2591) );
  INVX1 U1551 ( .A(n2784), .Y(n1975) );
  INVX1 U1552 ( .A(n2755), .Y(n1389) );
  INVX1 U1553 ( .A(n2852), .Y(n1913) );
  INVX1 U1554 ( .A(n2785), .Y(n1961) );
  INVX1 U1555 ( .A(n2823), .Y(n2590) );
  INVX1 U1556 ( .A(n2756), .Y(n1993) );
  INVX1 U1557 ( .A(n2853), .Y(n1923) );
  INVX1 U1558 ( .A(n2804), .Y(n2613) );
  INVX1 U1559 ( .A(n2894), .Y(n1763) );
  INVX1 U1560 ( .A(n2895), .Y(n1762) );
  INVX1 U1561 ( .A(n2896), .Y(n1761) );
  INVX1 U1562 ( .A(n2897), .Y(n1760) );
  INVX1 U1563 ( .A(n2898), .Y(n1759) );
  INVX1 U1564 ( .A(n2715), .Y(n2622) );
  INVX1 U1565 ( .A(n2899), .Y(n1768) );
  INVX1 U1566 ( .A(n2714), .Y(n2624) );
  INVX1 U1567 ( .A(n2900), .Y(n1757) );
  INVX1 U1568 ( .A(n2713), .Y(n2626) );
  INVX1 U1569 ( .A(n2901), .Y(n1756) );
  INVX1 U1570 ( .A(n2902), .Y(n1754) );
  INVX1 U1571 ( .A(n2712), .Y(n2628) );
  INVX1 U1572 ( .A(n2903), .Y(n1753) );
  INVX1 U1573 ( .A(n2711), .Y(n2630) );
  INVX1 U1574 ( .A(n2904), .Y(n1758) );
  INVX1 U1575 ( .A(n2710), .Y(n2632) );
  INVX1 U1576 ( .A(n2905), .Y(n1752) );
  INVX1 U1577 ( .A(n2709), .Y(n2634) );
  INVX1 U1578 ( .A(n2906), .Y(n1755) );
  INVX1 U1579 ( .A(n2708), .Y(n2636) );
  INVX1 U1580 ( .A(n2907), .Y(n1767) );
  INVX1 U1581 ( .A(n2707), .Y(n2638) );
  INVX1 U1582 ( .A(n2706), .Y(n2640) );
  INVX1 U1583 ( .A(n2705), .Y(n2642) );
  INVX1 U1584 ( .A(n2704), .Y(n2644) );
  INVX1 U1585 ( .A(n2703), .Y(n1387) );
  INVX1 U1586 ( .A(n2702), .Y(n2647) );
  INVX1 U1587 ( .A(n2701), .Y(n2649) );
  INVX1 U1588 ( .A(n2700), .Y(n2651) );
  INVX1 U1589 ( .A(n2699), .Y(n2653) );
  INVX1 U1590 ( .A(n2698), .Y(n2655) );
  INVX1 U1591 ( .A(n2696), .Y(n2658) );
  INVX1 U1592 ( .A(n2695), .Y(n2661) );
  INVX1 U1593 ( .A(n2694), .Y(n2663) );
  INVX1 U1594 ( .A(n2693), .Y(n2665) );
  INVX1 U1595 ( .A(n2692), .Y(n2419) );
  INVX1 U1596 ( .A(n2893), .Y(n1749) );
  INVX2 U1597 ( .A(n2681), .Y(n1939) );
  INVX2 U1598 ( .A(\list[7][0] ), .Y(n2662) );
  INVX2 U1599 ( .A(cs[0]), .Y(n1861) );
  INVX2 U1600 ( .A(\list[7][2] ), .Y(n2619) );
  INVX2 U1601 ( .A(\list[0][2] ), .Y(n2625) );
  INVX1 U1602 ( .A(cost_temp[9]), .Y(n2213) );
  INVX2 U1603 ( .A(n2676), .Y(n2331) );
  INVX1 U1604 ( .A(n2884), .Y(n1747) );
  INVX1 U1605 ( .A(n2886), .Y(n1746) );
  INVX1 U1606 ( .A(n2888), .Y(n1765) );
  INVX1 U1607 ( .A(n2892), .Y(n1750) );
  INVX1 U1608 ( .A(n2877), .Y(n2556) );
  INVX1 U1609 ( .A(n2882), .Y(n2551) );
  INVX1 U1610 ( .A(n2876), .Y(n2557) );
  INVX1 U1611 ( .A(n2881), .Y(n2552) );
  INVX1 U1612 ( .A(n2891), .Y(n1802) );
  INVX1 U1613 ( .A(n2879), .Y(n2554) );
  INVX1 U1614 ( .A(n2885), .Y(n1745) );
  INVX1 U1615 ( .A(n2890), .Y(n1748) );
  INVX1 U1616 ( .A(n2883), .Y(n2550) );
  INVX1 U1617 ( .A(n2880), .Y(n2553) );
  INVX1 U1618 ( .A(n2887), .Y(n1766) );
  INVX1 U1619 ( .A(n2878), .Y(n2555) );
  INVX1 U1620 ( .A(n2889), .Y(n1764) );
  NOR2X1 U1621 ( .A(Valid), .B(n1665), .Y(n1741) );
  NAND2X1 U1622 ( .A(n1789), .B(n1666), .Y(n1665) );
  INVX3 U1623 ( .A(n2275), .Y(n2288) );
  NOR2X2 U1624 ( .A(n2341), .B(n2192), .Y(n2214) );
  AOI222X2 U1625 ( .A0(n2326), .A1(n2019), .B0(n2326), .B1(n1953), .C0(n2019), 
        .C1(n1953), .Y(\intadd_0/CI ) );
  NAND2X2 U1626 ( .A(cost_temp[0]), .B(Cost[0]), .Y(n2019) );
  AOI222X4 U1627 ( .A0(\gt_replace_value_num[0][3] ), .A1(n2291), .B0(
        \gt_replace_value_num[0][3] ), .B1(n2250), .C0(n2291), .C1(n2250), .Y(
        n2259) );
  INVX3 U1628 ( .A(RST), .Y(n2339) );
  NOR2XL U1629 ( .A(n2387), .B(n2059), .Y(n2069) );
  NOR2XL U1630 ( .A(n2175), .B(n2090), .Y(n2053) );
  NAND3X2 U1631 ( .A(n1666), .B(n1799), .C(n1866), .Y(n1672) );
  CLKBUFX3 U1632 ( .A(n2535), .Y(n2491) );
  AND2X1 U1633 ( .A(n2151), .B(n2060), .Y(n2065) );
  BUFX2 U1634 ( .A(n1772), .Y(n2153) );
  BUFX2 U1635 ( .A(n1769), .Y(n2404) );
  NAND2XL U1636 ( .A(n2399), .B(n2298), .Y(n1769) );
  AOI211XL U1637 ( .A0(n2646), .A1(n2129), .B0(n2645), .C0(n2130), .Y(n1828)
         );
  OAI22XL U1638 ( .A0(n1830), .A1(n2656), .B0(n2129), .B1(n2657), .Y(n1831) );
  AOI211XL U1639 ( .A0(n2652), .A1(n2129), .B0(n2650), .C0(n2130), .Y(n1825)
         );
  BUFX2 U1640 ( .A(n1872), .Y(n2086) );
  NAND2XL U1641 ( .A(n2364), .B(n2339), .Y(n1872) );
  BUFX2 U1642 ( .A(n1740), .Y(n2387) );
  BUFX2 U1643 ( .A(n1873), .Y(n2090) );
  INVXL U1644 ( .A(n2253), .Y(n2257) );
  NOR2XL U1645 ( .A(cost_temp[7]), .B(n2099), .Y(n1659) );
  NOR4XL U1646 ( .A(n2648), .B(n2654), .C(n2650), .D(n2641), .Y(n1642) );
  AOI2BB1X1 U1647 ( .A0N(n1456), .A1N(n1665), .B0(n2610), .Y(n1977) );
  AND2X1 U1648 ( .A(n1954), .B(n2335), .Y(n2547) );
  NOR2X1 U1649 ( .A(n2546), .B(n1954), .Y(n2606) );
  BUFX2 U1650 ( .A(n1667), .Y(n2608) );
  NOR2BX1 U1651 ( .AN(cost_temp[6]), .B(n2685), .Y(n1795) );
  NOR2XL U1652 ( .A(n2627), .B(n2202), .Y(n2185) );
  NOR2XL U1653 ( .A(n2623), .B(n2202), .Y(n2196) );
  NOR2XL U1654 ( .A(n2629), .B(n2202), .Y(n2194) );
  NOR2XL U1655 ( .A(n2625), .B(n2202), .Y(n2206) );
  NOR2XL U1656 ( .A(n2631), .B(n2202), .Y(n2201) );
  NOR4XL U1657 ( .A(n1808), .B(n1807), .C(n1806), .D(n1805), .Y(n1809) );
  NOR2XL U1658 ( .A(n2654), .B(n2153), .Y(n1808) );
  NOR2XL U1659 ( .A(n2387), .B(n2361), .Y(n2383) );
  INVXL U1660 ( .A(cost_temp[2]), .Y(n2329) );
  CLKINVX1 U1661 ( .A(cost_temp[1]), .Y(n2326) );
  NOR2X1 U1662 ( .A(n2418), .B(n1672), .Y(n2481) );
  OAI22XL U1663 ( .A0(n2656), .A1(n2536), .B0(n2535), .B1(n2504), .Y(n2506) );
  OAI22XL U1664 ( .A0(n2657), .A1(n2536), .B0(n2535), .B1(n2511), .Y(n2513) );
  OAI22XL U1665 ( .A0(n2659), .A1(n2536), .B0(n2535), .B1(n2518), .Y(n2520) );
  OAI22XL U1666 ( .A0(n2662), .A1(n2536), .B0(n2535), .B1(n2526), .Y(n2528) );
  NOR2X4 U1667 ( .A(n1672), .B(n1911), .Y(n2525) );
  NOR2X4 U1668 ( .A(n1672), .B(n2549), .Y(n1716) );
  NOR2X4 U1669 ( .A(n1672), .B(n1976), .Y(n2482) );
  NOR2X4 U1670 ( .A(n1672), .B(n1955), .Y(n1715) );
  CLKBUFX3 U1671 ( .A(n2481), .Y(n2533) );
  NOR2X4 U1672 ( .A(n1672), .B(n2577), .Y(n2503) );
  INVXL U1673 ( .A(n2498), .Y(n2499) );
  NAND2BX1 U1674 ( .AN(n2497), .B(n2496), .Y(n2498) );
  NOR2XL U1675 ( .A(n2495), .B(n2494), .Y(n2496) );
  INVXL U1676 ( .A(\gt_replace_value_num[6][1] ), .Y(n2316) );
  INVXL U1677 ( .A(\gt_replace_value_num[4][0] ), .Y(n2262) );
  NOR2XL U1678 ( .A(n2123), .B(n2090), .Y(n2043) );
  NOR2XL U1679 ( .A(n2351), .B(n2086), .Y(n2044) );
  NOR2XL U1680 ( .A(n2387), .B(n2040), .Y(n2047) );
  NOR2XL U1681 ( .A(n2387), .B(n2386), .Y(n2411) );
  INVXL U1682 ( .A(\gt_replace_value_num[3][2] ), .Y(n2220) );
  BUFX2 U1683 ( .A(n2120), .Y(n2147) );
  INVXL U1684 ( .A(n2024), .Y(n2034) );
  NAND2XL U1685 ( .A(n2034), .B(n2025), .Y(n2037) );
  INVXL U1686 ( .A(n1860), .Y(n1864) );
  INVXL U1687 ( .A(\gt_replace_value_num[0][0] ), .Y(n2265) );
  NOR4XL U1688 ( .A(n1814), .B(n1813), .C(n1812), .D(n1811), .Y(n1815) );
  BUFX2 U1689 ( .A(n1773), .Y(n2373) );
  NAND2XL U1690 ( .A(n2083), .B(n2070), .Y(n1773) );
  NAND2XL U1691 ( .A(n2339), .B(n2384), .Y(n2330) );
  OAI211XL U1692 ( .A0(n2069), .A1(n2641), .B0(n2064), .C0(n2063), .Y(n1329)
         );
  OAI211XL U1693 ( .A0(n2056), .A1(n2659), .B0(n2052), .C0(n2051), .Y(n1319)
         );
  NAND2XL U1694 ( .A(n2253), .B(n2261), .Y(n2227) );
  AOI211XL U1695 ( .A0(\gt_replace_value_num[2][0] ), .A1(n2308), .B0(n2268), 
        .C0(n2267), .Y(n2269) );
  INVXL U1696 ( .A(n2259), .Y(n2264) );
  INVXL U1697 ( .A(n2312), .Y(n2277) );
  NAND2XL U1698 ( .A(n2547), .B(n1939), .Y(n1669) );
  OAI211XL U1699 ( .A0(\gt_replace_value_num[2][0] ), .A1(n2252), .B0(n2265), 
        .C0(n2244), .Y(n2245) );
  NAND2XL U1700 ( .A(n2252), .B(n2266), .Y(n2244) );
  NAND2XL U1701 ( .A(n2257), .B(n2256), .Y(n2275) );
  NAND2XL U1702 ( .A(\gt_replace_value_num[1][3] ), .B(
        \gt_replace_value_num[2][3] ), .Y(n2291) );
  INVXL U1703 ( .A(n2252), .Y(n2251) );
  NOR3XL U1704 ( .A(n2335), .B(n1663), .C(n1979), .Y(n1956) );
  NAND2XL U1705 ( .A(n1937), .B(n1939), .Y(n1979) );
  INVXL U1706 ( .A(n1976), .Y(n1981) );
  INVXL U1707 ( .A(n1956), .Y(n1955) );
  NAND2XL U1708 ( .A(n1671), .B(n2335), .Y(n2611) );
  INVXL U1709 ( .A(n1669), .Y(n1742) );
  NAND2XL U1710 ( .A(cost_temp[9]), .B(n2111), .Y(n1797) );
  OAI31XL U1711 ( .A0(n1661), .A1(n1795), .A2(n1792), .B0(n1660), .Y(n1662) );
  AOI211XL U1712 ( .A0(n1791), .A1(n1658), .B0(n1657), .C0(n1656), .Y(n1661)
         );
  NOR2XL U1713 ( .A(n2057), .B(n2070), .Y(n2152) );
  INVXL U1714 ( .A(n2385), .Y(n2388) );
  BUFX2 U1715 ( .A(\replace_value[1] ), .Y(n2165) );
  NOR2XL U1716 ( .A(n2657), .B(n2172), .Y(n1814) );
  NAND2XL U1717 ( .A(n2070), .B(n2399), .Y(n1810) );
  INVXL U1718 ( .A(n1891), .Y(n2079) );
  NOR2XL U1719 ( .A(n1939), .B(n1908), .Y(n1800) );
  NAND4XL U1720 ( .A(n2392), .B(n1893), .C(n2081), .D(n1891), .Y(n2356) );
  NAND2XL U1721 ( .A(n2392), .B(n2079), .Y(n2355) );
  NAND2XL U1722 ( .A(n2364), .B(n1891), .Y(n2354) );
  AND2X1 U1723 ( .A(n2362), .B(n2392), .Y(n2381) );
  NAND2XL U1724 ( .A(n2385), .B(n2039), .Y(n2123) );
  INVXL U1725 ( .A(n2123), .Y(n2124) );
  BUFX2 U1726 ( .A(n1770), .Y(n2392) );
  BUFX2 U1727 ( .A(n1738), .Y(n2364) );
  INVXL U1728 ( .A(n2175), .Y(n2178) );
  INVXL U1729 ( .A(n2263), .Y(n2296) );
  INVXL U1730 ( .A(n2286), .Y(n2297) );
  INVXL U1731 ( .A(cost_temp[3]), .Y(n2324) );
  NOR2XL U1732 ( .A(n2027), .B(n2026), .Y(n2035) );
  INVXL U1733 ( .A(n2430), .Y(n2431) );
  NAND2BX1 U1734 ( .AN(n2429), .B(n1635), .Y(n2430) );
  INVXL U1735 ( .A(n2438), .Y(n2439) );
  NAND2BX1 U1736 ( .AN(n2437), .B(n1637), .Y(n2438) );
  INVXL U1737 ( .A(n2446), .Y(n2447) );
  NAND2BX1 U1738 ( .AN(n2445), .B(n1633), .Y(n2446) );
  INVXL U1739 ( .A(n2454), .Y(n2455) );
  NAND2BX1 U1740 ( .AN(n2453), .B(n1634), .Y(n2454) );
  INVXL U1741 ( .A(n1675), .Y(n1676) );
  NAND2BX1 U1742 ( .AN(n1674), .B(n1636), .Y(n1675) );
  INVXL U1743 ( .A(n1682), .Y(n1683) );
  NAND2BX1 U1744 ( .AN(n1681), .B(n1640), .Y(n1682) );
  INVXL U1745 ( .A(n1689), .Y(n1690) );
  NAND2BX1 U1746 ( .AN(n1688), .B(n1641), .Y(n1689) );
  INVXL U1747 ( .A(n1696), .Y(n1697) );
  INVXL U1748 ( .A(n1703), .Y(n1704) );
  NAND2BX1 U1749 ( .AN(n1702), .B(n1632), .Y(n1703) );
  NAND2BX1 U1750 ( .AN(n1709), .B(n1629), .Y(n1710) );
  INVXL U1751 ( .A(n1719), .Y(n1720) );
  NAND2BX1 U1752 ( .AN(n1718), .B(n1639), .Y(n1719) );
  INVXL U1753 ( .A(n1726), .Y(n1727) );
  NAND2BX1 U1754 ( .AN(n1725), .B(n1631), .Y(n1726) );
  INVXL U1755 ( .A(n1733), .Y(n1734) );
  NAND2BX1 U1756 ( .AN(n1732), .B(n1630), .Y(n1733) );
  AOI211XL U1757 ( .A0(n1954), .A1(n1939), .B0(n2547), .C0(n2546), .Y(n1910)
         );
  NOR2XL U1758 ( .A(n1977), .B(n1981), .Y(n1978) );
  NOR2XL U1759 ( .A(n2547), .B(n2546), .Y(n2548) );
  NOR2XL U1760 ( .A(n1742), .B(n2546), .Y(n1743) );
  NAND3XL U1761 ( .A(n1862), .B(n2339), .C(n1861), .Y(n2024) );
  AOI211XL U1762 ( .A0(n2659), .A1(n1857), .B0(n1856), .C0(n1860), .Y(n2025)
         );
  AOI211XL U1763 ( .A0(cost_temp[1]), .A1(n1796), .B0(n1795), .C0(n1794), .Y(
        n1798) );
  NAND2XL U1764 ( .A(n2177), .B(n2060), .Y(n1903) );
  INVXL U1765 ( .A(n2153), .Y(n2121) );
  BUFX2 U1766 ( .A(n1739), .Y(n2389) );
  INVXL U1767 ( .A(n2364), .Y(n1739) );
  NAND2XL U1768 ( .A(n2392), .B(n1883), .Y(n2170) );
  INVXL U1769 ( .A(\gt_replace_value_num[4][3] ), .Y(n2287) );
  INVXL U1770 ( .A(\gt_replace_value_num[3][3] ), .Y(n2218) );
  INVXL U1771 ( .A(\gt_replace_value_num[6][3] ), .Y(n2223) );
  INVXL U1772 ( .A(\gt_replace_value_num[2][3] ), .Y(n2241) );
  NAND2XL U1773 ( .A(n2314), .B(n1819), .Y(n2345) );
  AND2X1 U1774 ( .A(n1344), .B(n1457), .Y(n1345) );
  AND2X1 U1775 ( .A(n1458), .B(n1459), .Y(n1343) );
  INVXL U1776 ( .A(\gt_replace_value_num[5][3] ), .Y(n2285) );
  BUFX2 U1777 ( .A(n1818), .Y(n2314) );
  BUFX2 U1778 ( .A(n2105), .Y(n2317) );
  INVXL U1779 ( .A(n2373), .Y(n2375) );
  NAND2XL U1780 ( .A(n2093), .B(n1800), .Y(n2336) );
  INVX16 U1781 ( .A(n1395), .Y(MinCost[0]) );
  CLKINVX1 U1782 ( .A(n2691), .Y(n1395) );
  AOI211XL U1783 ( .A0(n2207), .A1(\list[4][0] ), .B0(n2187), .C0(n2186), .Y(
        n2188) );
  AOI211XL U1784 ( .A0(n2207), .A1(\list[5][0] ), .B0(n2185), .C0(n2184), .Y(
        n2189) );
  AOI211XL U1785 ( .A0(n2207), .A1(\list[5][1] ), .B0(n2194), .C0(n2193), .Y(
        n2198) );
  AOI211XL U1786 ( .A0(n2207), .A1(\list[4][1] ), .B0(n2196), .C0(n2195), .Y(
        n2197) );
  AOI211XL U1787 ( .A0(n2207), .A1(\list[5][2] ), .B0(n2201), .C0(n2200), .Y(
        n2209) );
  OAI211XL U1788 ( .A0(n2078), .A1(n2090), .B0(n2077), .C0(n2076), .Y(n1325)
         );
  AOI211XL U1789 ( .A0(n2381), .A1(n2370), .B0(n2369), .C0(n2406), .Y(n2371)
         );
  OAI2BB1XL U1790 ( .A0N(n2360), .A1N(\list[0][1] ), .B0(n2359), .Y(n1338) );
  NOR3XL U1791 ( .A(n2358), .B(n2406), .C(n2357), .Y(n2359) );
  AOI211XL U1792 ( .A0(n2381), .A1(n2380), .B0(n2379), .C0(n2406), .Y(n2382)
         );
  OAI211XL U1793 ( .A0(n2183), .A1(n2182), .B0(n2344), .C0(n2181), .Y(n1321)
         );
  OAI211XL U1794 ( .A0(n2171), .A1(n2170), .B0(n2344), .C0(n2169), .Y(n1331)
         );
  OAI211XL U1795 ( .A0(n2322), .A1(n2101), .B0(n2339), .C0(n2100), .Y(N847) );
  NAND2XL U1796 ( .A(cost_temp[4]), .B(n2109), .Y(n2100) );
  OAI211XL U1797 ( .A0(n2322), .A1(n2099), .B0(n2339), .C0(n2098), .Y(N850) );
  NAND2XL U1798 ( .A(cost_temp[7]), .B(n2109), .Y(n2098) );
  OAI211XL U1799 ( .A0(n2322), .A1(n2097), .B0(n2339), .C0(n2096), .Y(N849) );
  OAI211XL U1800 ( .A0(n2322), .A1(n2111), .B0(n2339), .C0(n2110), .Y(N852) );
  NAND2XL U1801 ( .A(MinCost[2]), .B(n2337), .Y(n2328) );
  NAND2XL U1802 ( .A(MinCost[8]), .B(n2337), .Y(n2338) );
  NAND4XL U1803 ( .A(n2466), .B(n2465), .C(n2464), .D(n2463), .Y(n1277) );
  NAND4XL U1804 ( .A(n2473), .B(n2472), .C(n2471), .D(n2470), .Y(n1276) );
  NAND4XL U1805 ( .A(n2480), .B(n2479), .C(n2478), .D(n2477), .Y(n1275) );
  NAND4XL U1806 ( .A(n2489), .B(n2488), .C(n2487), .D(n2486), .Y(n1274) );
  NAND4XL U1807 ( .A(n2510), .B(n2509), .C(n2508), .D(n2507), .Y(n1265) );
  NAND4XL U1808 ( .A(n2517), .B(n2516), .C(n2515), .D(n2514), .Y(n1264) );
  NAND4XL U1809 ( .A(n2524), .B(n2523), .C(n2522), .D(n2521), .Y(n1263) );
  NAND4XL U1810 ( .A(n2532), .B(n2531), .C(n2530), .D(n2529), .Y(n1262) );
  NAND4XL U1811 ( .A(n2545), .B(n2544), .C(n2543), .D(n2542), .Y(n1261) );
  NAND4XL U1812 ( .A(n2502), .B(n2501), .C(n2500), .D(n2499), .Y(n1273) );
  AOI211XL U1813 ( .A0(W[0]), .A1(n2018), .B0(n2330), .C0(n2017), .Y(N820) );
  AOI21XL U1814 ( .A0(n1867), .A1(n1908), .B0(n2092), .Y(n1869) );
  OAI211XL U1815 ( .A0(n2120), .A1(n2225), .B0(n2119), .C0(n2118), .Y(n1299)
         );
  OAI211XL U1816 ( .A0(n2314), .A1(n2629), .B0(n2413), .C0(n2138), .Y(n1307)
         );
  NAND2XL U1817 ( .A(\gt_replace_value_num[1][1] ), .B(n2414), .Y(n2138) );
  OAI211XL U1818 ( .A0(n2314), .A1(n2633), .B0(n2115), .C0(n2113), .Y(n1304)
         );
  NAND2XL U1819 ( .A(\gt_replace_value_num[2][0] ), .B(n2414), .Y(n2113) );
  OAI211XL U1820 ( .A0(n2314), .A1(n2639), .B0(n2119), .C0(n2117), .Y(n1300)
         );
  NAND2XL U1821 ( .A(\gt_replace_value_num[3][0] ), .B(n2414), .Y(n2117) );
  OAI211XL U1822 ( .A0(n2321), .A1(n2254), .B0(n2142), .C0(n2139), .Y(n1291)
         );
  OAI211XL U1823 ( .A0(n2321), .A1(n2316), .B0(n2319), .C0(n2315), .Y(n1287)
         );
  OAI211XL U1824 ( .A0(n2147), .A1(n2255), .B0(n2146), .C0(n2145), .Y(n1295)
         );
  OAI211XL U1825 ( .A0(n2321), .A1(n2262), .B0(n2146), .C0(n2143), .Y(n1296)
         );
  OAI211XL U1826 ( .A0(n2321), .A1(n2246), .B0(n2413), .C0(n2136), .Y(n1306)
         );
  OAI211XL U1827 ( .A0(n2147), .A1(n2261), .B0(n2142), .C0(n2141), .Y(n1292)
         );
  OAI211XL U1828 ( .A0(n2147), .A1(n2243), .B0(n2115), .C0(n2112), .Y(n1303)
         );
  OAI211XL U1829 ( .A0(n2069), .A1(n2639), .B0(n2068), .C0(n2067), .Y(n1330)
         );
  OAI211XL U1830 ( .A0(n2056), .A1(n2657), .B0(n2055), .C0(n2054), .Y(n1320)
         );
  OAI211XL U1831 ( .A0(n2047), .A1(n2654), .B0(n2046), .C0(n2045), .Y(n1322)
         );
  AOI211XL U1832 ( .A0(n2409), .A1(n2408), .B0(n2407), .C0(n2406), .Y(n2410)
         );
  AOI211XL U1833 ( .A0(n2409), .A1(n2396), .B0(n2395), .C0(n2406), .Y(n2397)
         );
  OAI211XL U1834 ( .A0(n2314), .A1(n2637), .B0(n2115), .C0(n2114), .Y(n1302)
         );
  NAND2XL U1835 ( .A(\gt_replace_value_num[2][2] ), .B(n2414), .Y(n2114) );
  OAI211XL U1836 ( .A0(n2314), .A1(n2648), .B0(n2146), .C0(n2144), .Y(n1294)
         );
  NAND2XL U1837 ( .A(\gt_replace_value_num[4][2] ), .B(n2414), .Y(n2144) );
  NAND2XL U1838 ( .A(\gt_replace_value_num[6][0] ), .B(n2414), .Y(n2313) );
  OAI211XL U1839 ( .A0(n2321), .A1(n2320), .B0(n2319), .C0(n2318), .Y(n1286)
         );
  OAI2BB1XL U1840 ( .A0N(n2414), .A1N(\gt_replace_value_num[1][3] ), .B0(n2413), .Y(n1305) );
  OAI211XL U1841 ( .A0(n2147), .A1(n2220), .B0(n2119), .C0(n2116), .Y(n1298)
         );
  OAI211XL U1842 ( .A0(n2147), .A1(n2276), .B0(n2142), .C0(n2140), .Y(n1290)
         );
  NOR2XL U1843 ( .A(Cost[1]), .B(n2023), .Y(n2022) );
  NOR2XL U1844 ( .A(n2021), .B(n2020), .Y(n2023) );
  OAI211XL U1845 ( .A0(n2031), .A1(n2030), .B0(n2034), .C0(n2029), .Y(n2032)
         );
  OAI211XL U1846 ( .A0(n2321), .A1(n2265), .B0(n2412), .C0(n2106), .Y(n1312)
         );
  INVXL U1847 ( .A(n2308), .Y(n2309) );
  OAI211XL U1848 ( .A0(n2314), .A1(n2623), .B0(n2412), .C0(n2107), .Y(n1311)
         );
  NAND2XL U1849 ( .A(\gt_replace_value_num[0][1] ), .B(n2414), .Y(n2107) );
  NOR2XL U1850 ( .A(n2294), .B(n2311), .Y(N774) );
  OAI211XL U1851 ( .A0(n2321), .A1(n2249), .B0(n2412), .C0(n2108), .Y(n1310)
         );
  OAI2BB1XL U1852 ( .A0N(n2414), .A1N(\gt_replace_value_num[0][3] ), .B0(n2412), .Y(n1309) );
  OAI211XL U1853 ( .A0(n2091), .A1(n2090), .B0(n2089), .C0(n2088), .Y(n1336)
         );
  INVXL U1854 ( .A(n2191), .Y(N807) );
  AOI211XL U1855 ( .A0(n2341), .A1(n2192), .B0(n2214), .C0(n2211), .Y(N808) );
  AOI221XL U1856 ( .A0(cost_temp[9]), .A1(n2214), .B0(n2213), .B1(n2212), .C0(
        n2211), .Y(N809) );
  INVXL U1857 ( .A(n2214), .Y(n2212) );
  NOR2XL U1858 ( .A(sort_round[0]), .B(n2321), .Y(N783) );
  AND4X1 U1859 ( .A(n1645), .B(n1644), .C(n1643), .D(n1642), .Y(n1344) );
  NAND2X1 U1860 ( .A(n1345), .B(n1343), .Y(n1456) );
  NAND2XL U1861 ( .A(\list[3][0] ), .B(n2645), .Y(n1840) );
  INVX12 U1862 ( .A(n1361), .Y(Match_list[191]) );
  INVX12 U1863 ( .A(n1359), .Y(Match_list[131]) );
  INVX12 U1864 ( .A(n1357), .Y(Match_list[134]) );
  INVX12 U1865 ( .A(n1355), .Y(Match_list[135]) );
  INVX12 U1866 ( .A(n1353), .Y(Match_list[137]) );
  INVX12 U1867 ( .A(n1351), .Y(Match_list[141]) );
  INVX12 U1868 ( .A(n1349), .Y(Match_list[142]) );
  INVX12 U1869 ( .A(n1347), .Y(Match_list[143]) );
  INVX12 U1870 ( .A(n1391), .Y(Match_list[91]) );
  INVX12 U1871 ( .A(n1393), .Y(Match_list[76]) );
  INVX12 U1872 ( .A(n1389), .Y(Match_list[176]) );
  INVX12 U1873 ( .A(n1387), .Y(Match_list[228]) );
  INVX12 U1874 ( .A(n1385), .Y(Match_list[120]) );
  INVX12 U1875 ( .A(n1383), .Y(Match_list[121]) );
  INVX12 U1876 ( .A(n1381), .Y(Match_list[122]) );
  INVX12 U1877 ( .A(n1379), .Y(Match_list[123]) );
  INVX12 U1878 ( .A(n1377), .Y(Match_list[124]) );
  INVX12 U1879 ( .A(n1375), .Y(Match_list[125]) );
  INVX12 U1880 ( .A(n1373), .Y(Match_list[132]) );
  INVX12 U1881 ( .A(n1371), .Y(Match_list[133]) );
  INVX12 U1882 ( .A(n1369), .Y(Match_list[136]) );
  INVX12 U1883 ( .A(n1367), .Y(Match_list[138]) );
  INVX12 U1884 ( .A(n1365), .Y(Match_list[139]) );
  INVX12 U1885 ( .A(n1363), .Y(Match_list[140]) );
  NAND2XL U1886 ( .A(n2164), .B(n2075), .Y(n1874) );
  OAI31X1 U1887 ( .A0(n1820), .A1(n2164), .A2(n2133), .B0(n2321), .Y(n2115) );
  NOR2X2 U1888 ( .A(N310), .B(n2057), .Y(n2164) );
  INVXL U1889 ( .A(n2393), .Y(n2082) );
  OAI21X2 U1890 ( .A0(n1783), .A1(n1782), .B0(n1781), .Y(n2393) );
  OAI211XL U1891 ( .A0(n2038), .A1(n2070), .B0(n2037), .C0(n2036), .Y(n1313)
         );
  OAI211XL U1892 ( .A0(n2038), .A1(n2298), .B0(n2037), .C0(n2032), .Y(n1314)
         );
  OAI21X1 U1893 ( .A0(n1864), .A1(n1863), .B0(n2339), .Y(n2038) );
  OAI22X1 U1894 ( .A0(n2165), .A1(\list[0][1] ), .B0(n2298), .B1(\list[2][1] ), 
        .Y(n2400) );
  AOI222XL U1895 ( .A0(n2298), .A1(n2635), .B0(n2646), .B1(n2301), .C0(n2623), 
        .C1(n2349), .Y(n2366) );
  AOI222XL U1896 ( .A0(n2298), .A1(\list[3][2] ), .B0(\list[5][2] ), .B1(n2301), .C0(\list[1][2] ), .C1(n2349), .Y(n2378) );
  AOI222XL U1897 ( .A0(n2298), .A1(n2633), .B0(n2621), .B1(n2349), .C0(n2645), 
        .C1(n2301), .Y(n2085) );
  NOR2X2 U1898 ( .A(N310), .B(n2298), .Y(n2349) );
  OAI21X2 U1899 ( .A0(n1881), .A1(n1880), .B0(n1879), .Y(n2403) );
  OAI211XL U1900 ( .A0(n2673), .A1(n2340), .B0(n2339), .C0(n2327), .Y(N843) );
  OAI211XL U1901 ( .A0(n2326), .A1(n2340), .B0(n2339), .C0(n2325), .Y(N844) );
  OAI211XL U1902 ( .A0(n2324), .A1(n2340), .B0(n2339), .C0(n2323), .Y(N846) );
  NAND2XL U1903 ( .A(cost_temp[5]), .B(n2109), .Y(n2094) );
  AOI211XL U1904 ( .A0(cost_temp[5]), .A1(n2095), .B0(cost_temp[4]), .C0(n2101), .Y(n1657) );
  AOI22XL U1905 ( .A0(cost_temp[4]), .A1(n2101), .B0(cost_temp[5]), .B1(n2095), 
        .Y(n1791) );
  INVX3 U1906 ( .A(\list[4][2] ), .Y(n2648) );
  AOI211XL U1907 ( .A0(\list[4][2] ), .A1(n2207), .B0(n2206), .C0(n2205), .Y(
        n2208) );
  INVX3 U1908 ( .A(\list[3][1] ), .Y(n2641) );
  NOR3XL U1909 ( .A(\list[3][0] ), .B(\list[3][1] ), .C(n2633), .Y(n1843) );
  NAND2X2 U1910 ( .A(n2339), .B(n2345), .Y(n2133) );
  NAND2XL U1911 ( .A(n2049), .B(n2301), .Y(n2175) );
  NAND2X2 U1912 ( .A(n2057), .B(n2070), .Y(n2148) );
  OAI31X4 U1913 ( .A0(n2070), .A1(n2081), .A2(n2058), .B0(n2148), .Y(n2151) );
  INVXL U1914 ( .A(n2148), .Y(n2149) );
  NAND2BX2 U1915 ( .AN(min_index[1]), .B(min_index[2]), .Y(n2071) );
  OAI211XL U1916 ( .A0(n2159), .A1(n2384), .B0(n2344), .C0(n2158), .Y(n1328)
         );
  NOR4XL U1917 ( .A(\list[7][2] ), .B(\list[6][2] ), .C(n1849), .D(n1648), .Y(
        n1649) );
  INVX3 U1918 ( .A(\list[0][0] ), .Y(n2621) );
  INVX3 U1919 ( .A(\list[7][1] ), .Y(n1346) );
  INVX3 U1920 ( .A(\list[0][1] ), .Y(n2623) );
  INVX3 U1921 ( .A(\list[3][0] ), .Y(n2639) );
  AOI211XL U1922 ( .A0(n2083), .A1(n2639), .B0(n2134), .C0(n2086), .Y(n2084)
         );
  OAI22XL U1923 ( .A0(W[0]), .A1(n2189), .B0(n2332), .B1(n2188), .Y(n2190) );
  OA22X1 U1924 ( .A0(W[0]), .A1(n2198), .B0(n2332), .B1(n2197), .Y(n2199) );
  OA22X1 U1925 ( .A0(W[0]), .A1(n2209), .B0(n2332), .B1(n2208), .Y(n2210) );
  BUFX16 U1926 ( .A(n2677), .Y(W[0]) );
  NOR4XL U1927 ( .A(\list[0][1] ), .B(\list[0][2] ), .C(n2635), .D(n2627), .Y(
        n1643) );
  OAI22X1 U1928 ( .A0(n2165), .A1(\list[0][2] ), .B0(n2298), .B1(\list[2][2] ), 
        .Y(n2155) );
  INVX3 U1929 ( .A(\list[1][2] ), .Y(n2631) );
  NOR2XL U1930 ( .A(MatchCount[1]), .B(n1979), .Y(n2605) );
  NAND2X1 U1931 ( .A(MatchCount[1]), .B(n1671), .Y(n1976) );
  BUFX16 U1932 ( .A(n2680), .Y(MatchCount[1]) );
  OAI211XL U1933 ( .A0(n2047), .A1(n2650), .B0(n2042), .C0(n2041), .Y(n1324)
         );
  OAI211XL U1934 ( .A0(n2128), .A1(n2351), .B0(n2344), .C0(n2127), .Y(n1323)
         );
  NOR4XL U1935 ( .A(\list[1][1] ), .B(\list[2][0] ), .C(\list[1][2] ), .D(
        \list[6][0] ), .Y(n1644) );
  NAND4XL U1936 ( .A(\list[1][2] ), .B(\list[6][0] ), .C(n1838), .D(n1649), 
        .Y(n1650) );
  AOI211XL U1937 ( .A0(\list[6][0] ), .A1(n2173), .B0(n1775), .C0(n1774), .Y(
        n1777) );
  NOR2X2 U1938 ( .A(n2675), .B(n2331), .Y(n2207) );
  NOR3X1 U1939 ( .A(MatchCount[1]), .B(MatchCount[2]), .C(n1937), .Y(n1940) );
  INVXL U1940 ( .A(MatchCount[2]), .Y(n1663) );
  NAND2X1 U1941 ( .A(MatchCount[2]), .B(n2605), .Y(n2577) );
  NOR2XL U1942 ( .A(MatchCount[2]), .B(n1909), .Y(n1906) );
  BUFX16 U1943 ( .A(n2679), .Y(MatchCount[2]) );
  AOI211XL U1944 ( .A0(n1859), .A1(n1858), .B0(n2028), .C0(n2025), .Y(n1865)
         );
  NAND2XL U1945 ( .A(n1859), .B(n1855), .Y(n2030) );
  INVXL U1946 ( .A(n2342), .Y(n2211) );
  OAI211XL U1947 ( .A0(cost_temp[7]), .A1(\intadd_0/n1 ), .B0(n2192), .C0(
        n2342), .Y(n2191) );
  NOR2X2 U1948 ( .A(RST), .B(n2020), .Y(n2342) );
  INVX3 U1949 ( .A(\list[2][2] ), .Y(n2637) );
  INVXL U1950 ( .A(n2176), .Y(n1740) );
  OAI211XL U1951 ( .A0(n1883), .A1(n2384), .B0(n2176), .C0(n1771), .Y(n2168)
         );
  OAI211XL U1952 ( .A0(n1883), .A1(n2090), .B0(n2176), .C0(n1874), .Y(n1884)
         );
  OAI22XL U1953 ( .A0(n2297), .A1(n2311), .B0(n2296), .B1(n2310), .Y(N772) );
  INVX12 U1954 ( .A(n2095), .Y(MinCost[5]) );
  OAI211XL U1955 ( .A0(n2322), .A1(n2095), .B0(n2339), .C0(n2094), .Y(N848) );
  INVX12 U1956 ( .A(n2101), .Y(MinCost[4]) );
  INVX12 U1957 ( .A(n2674), .Y(Match_list[234]) );
  INVX12 U1958 ( .A(n2099), .Y(MinCost[7]) );
  CLKINVX1 U1959 ( .A(n2684), .Y(n2099) );
  INVX12 U1960 ( .A(n2097), .Y(MinCost[6]) );
  CLKINVX1 U1961 ( .A(n2685), .Y(n2097) );
  INVX12 U1962 ( .A(n2111), .Y(MinCost[9]) );
  CLKINVX1 U1963 ( .A(n2682), .Y(n2111) );
  BUFX12 U1964 ( .A(n2689), .Y(MinCost[2]) );
  OAI211XL U1965 ( .A0(n2329), .A1(n2340), .B0(n2339), .C0(n2328), .Y(N845) );
  BUFX12 U1966 ( .A(n2688), .Y(MinCost[3]) );
  NAND2XL U1967 ( .A(MinCost[3]), .B(n2337), .Y(n2323) );
  NOR2XL U1968 ( .A(n2688), .B(n2324), .Y(n1793) );
  INVX12 U1969 ( .A(n1796), .Y(MinCost[1]) );
  NAND2XL U1970 ( .A(MinCost[1]), .B(n2337), .Y(n2325) );
  NAND2X2 U1971 ( .A(N310), .B(n2057), .Y(n2183) );
  NAND2XL U1972 ( .A(N310), .B(n2083), .Y(n1772) );
  NAND2X2 U1973 ( .A(N310), .B(n2165), .Y(n2351) );
  NOR2X2 U1974 ( .A(N310), .B(n2165), .Y(n2134) );
  BUFX12 U1975 ( .A(n2683), .Y(MinCost[8]) );
  OAI211XL U1976 ( .A0(n2341), .A1(n2340), .B0(n2339), .C0(n2338), .Y(N851) );
  BUFX12 U1977 ( .A(n2930), .Y(Match_list[1]) );
  NAND4XL U1978 ( .A(n2434), .B(n2433), .C(n2432), .D(n2431), .Y(n1282) );
  BUFX12 U1979 ( .A(n2929), .Y(Match_list[2]) );
  NAND4XL U1980 ( .A(n2442), .B(n2441), .C(n2440), .D(n2439), .Y(n1281) );
  BUFX12 U1981 ( .A(n2928), .Y(Match_list[3]) );
  NAND4XL U1982 ( .A(n2450), .B(n2449), .C(n2448), .D(n2447), .Y(n1280) );
  BUFX12 U1983 ( .A(n2927), .Y(Match_list[4]) );
  NAND4XL U1984 ( .A(n2458), .B(n2457), .C(n2456), .D(n2455), .Y(n1279) );
  BUFX12 U1985 ( .A(n2926), .Y(Match_list[5]) );
  NAND4XL U1986 ( .A(n1679), .B(n1678), .C(n1677), .D(n1676), .Y(n1278) );
  BUFX12 U1987 ( .A(n2920), .Y(Match_list[11]) );
  NAND4XL U1988 ( .A(n1686), .B(n1685), .C(n1684), .D(n1683), .Y(n1272) );
  BUFX12 U1989 ( .A(n2919), .Y(Match_list[12]) );
  BUFX12 U1990 ( .A(n2918), .Y(Match_list[13]) );
  NAND4XL U1991 ( .A(n1700), .B(n1699), .C(n1698), .D(n1697), .Y(n1270) );
  BUFX12 U1992 ( .A(n2917), .Y(Match_list[14]) );
  NAND4XL U1993 ( .A(n1707), .B(n1706), .C(n1705), .D(n1704), .Y(n1269) );
  BUFX12 U1994 ( .A(n2916), .Y(Match_list[15]) );
  NAND4XL U1995 ( .A(n1714), .B(n1713), .C(n1712), .D(n1711), .Y(n1268) );
  BUFX12 U1996 ( .A(n2915), .Y(Match_list[16]) );
  NAND4XL U1997 ( .A(n1723), .B(n1722), .C(n1721), .D(n1720), .Y(n1267) );
  BUFX12 U1998 ( .A(n2914), .Y(Match_list[17]) );
  NAND4XL U1999 ( .A(n1730), .B(n1729), .C(n1728), .D(n1727), .Y(n1266) );
  BUFX12 U2000 ( .A(n2908), .Y(Match_list[23]) );
  BUFX12 U2001 ( .A(n2931), .Y(Match_list[0]) );
  NAND4XL U2002 ( .A(n2426), .B(n2425), .C(n2424), .D(n2423), .Y(n1283) );
  INVX12 U2003 ( .A(n2459), .Y(Match_list[198]) );
  CLKINVX1 U2004 ( .A(n2733), .Y(n2459) );
  INVX12 U2005 ( .A(n2526), .Y(Match_list[213]) );
  CLKINVX1 U2006 ( .A(n2718), .Y(n2526) );
  INVX12 U2007 ( .A(n2420), .Y(Match_list[192]) );
  INVX12 U2008 ( .A(n2427), .Y(Match_list[193]) );
  INVX12 U2009 ( .A(n2435), .Y(Match_list[194]) );
  INVX12 U2010 ( .A(n2443), .Y(Match_list[195]) );
  INVX12 U2011 ( .A(n2451), .Y(Match_list[196]) );
  INVX12 U2012 ( .A(n1941), .Y(Match_list[197]) );
  INVX12 U2013 ( .A(n2467), .Y(Match_list[199]) );
  INVX12 U2014 ( .A(n2474), .Y(Match_list[200]) );
  INVX12 U2015 ( .A(n2483), .Y(Match_list[201]) );
  INVX12 U2016 ( .A(n2490), .Y(Match_list[202]) );
  INVX12 U2017 ( .A(n1948), .Y(Match_list[203]) );
  INVX12 U2018 ( .A(n1949), .Y(Match_list[204]) );
  INVX12 U2019 ( .A(n1950), .Y(Match_list[205]) );
  INVX12 U2020 ( .A(n1942), .Y(Match_list[206]) );
  INVX12 U2021 ( .A(n1943), .Y(Match_list[207]) );
  INVX12 U2022 ( .A(n1944), .Y(Match_list[208]) );
  INVX12 U2023 ( .A(n1945), .Y(Match_list[209]) );
  INVX12 U2024 ( .A(n2504), .Y(Match_list[210]) );
  INVX12 U2025 ( .A(n2511), .Y(Match_list[211]) );
  INVX12 U2026 ( .A(n2518), .Y(Match_list[212]) );
  INVX12 U2027 ( .A(n2534), .Y(Match_list[214]) );
  INVX12 U2028 ( .A(n1947), .Y(Match_list[215]) );
  BUFX12 U2029 ( .A(n2925), .Y(Match_list[6]) );
  AOI211XL U2030 ( .A0(Match_list[6]), .A1(n2541), .B0(n2462), .C0(n2461), .Y(
        n2463) );
  BUFX12 U2031 ( .A(n2924), .Y(Match_list[7]) );
  AOI211XL U2032 ( .A0(Match_list[7]), .A1(n2541), .B0(n2469), .C0(n2468), .Y(
        n2470) );
  BUFX12 U2033 ( .A(n2923), .Y(Match_list[8]) );
  AOI211XL U2034 ( .A0(Match_list[8]), .A1(n2541), .B0(n2476), .C0(n2475), .Y(
        n2477) );
  BUFX12 U2035 ( .A(n2922), .Y(Match_list[9]) );
  AOI211XL U2036 ( .A0(Match_list[9]), .A1(n2541), .B0(n2485), .C0(n2484), .Y(
        n2486) );
  BUFX12 U2037 ( .A(n2913), .Y(Match_list[18]) );
  AOI211XL U2038 ( .A0(Match_list[18]), .A1(n2541), .B0(n2506), .C0(n2505), 
        .Y(n2507) );
  BUFX12 U2039 ( .A(n2912), .Y(Match_list[19]) );
  AOI211XL U2040 ( .A0(Match_list[19]), .A1(n2541), .B0(n2513), .C0(n2512), 
        .Y(n2514) );
  BUFX12 U2041 ( .A(n2911), .Y(Match_list[20]) );
  AOI211XL U2042 ( .A0(Match_list[20]), .A1(n2541), .B0(n2520), .C0(n2519), 
        .Y(n2521) );
  BUFX12 U2043 ( .A(n2910), .Y(Match_list[21]) );
  AOI211XL U2044 ( .A0(Match_list[21]), .A1(n2541), .B0(n2528), .C0(n2527), 
        .Y(n2529) );
  BUFX12 U2045 ( .A(n2909), .Y(Match_list[22]) );
  AOI211XL U2046 ( .A0(Match_list[22]), .A1(n2541), .B0(n2540), .C0(n2539), 
        .Y(n2542) );
  BUFX12 U2047 ( .A(n2921), .Y(Match_list[10]) );
  BUFX12 U2048 ( .A(n2675), .Y(W[2]) );
  NAND2BX1 U2049 ( .AN(n2675), .B(n2331), .Y(n2203) );
  NAND2X2 U2050 ( .A(n2675), .B(n2331), .Y(n2204) );
  INVX16 U2051 ( .A(n1456), .Y(Valid) );
  INVXL U2052 ( .A(n1646), .Y(n1457) );
  INVXL U2053 ( .A(n1851), .Y(n1458) );
  NAND2XL U2054 ( .A(\list[6][1] ), .B(n2652), .Y(n1851) );
  NAND4XL U2055 ( .A(\list[7][2] ), .B(\list[7][1] ), .C(\list[7][0] ), .D(
        \list[6][2] ), .Y(n1646) );
  INVX12 U2056 ( .A(n1749), .Y(Match_list[38]) );
  INVX12 U2057 ( .A(n1750), .Y(Match_list[39]) );
  INVX12 U2058 ( .A(n1748), .Y(Match_list[41]) );
  INVX12 U2059 ( .A(n1746), .Y(Match_list[45]) );
  INVX12 U2060 ( .A(n1745), .Y(Match_list[46]) );
  INVX12 U2061 ( .A(n1747), .Y(Match_list[47]) );
  INVX12 U2062 ( .A(n2004), .Y(Match_list[167]) );
  INVX12 U2063 ( .A(n1755), .Y(Match_list[25]) );
  INVX12 U2064 ( .A(n1752), .Y(Match_list[26]) );
  INVX12 U2065 ( .A(n1758), .Y(Match_list[27]) );
  INVX12 U2066 ( .A(n1753), .Y(Match_list[28]) );
  INVX12 U2067 ( .A(n1754), .Y(Match_list[29]) );
  INVX12 U2068 ( .A(n1761), .Y(Match_list[35]) );
  INVX12 U2069 ( .A(n1762), .Y(Match_list[36]) );
  INVX12 U2070 ( .A(n1763), .Y(Match_list[37]) );
  INVX12 U2071 ( .A(n1802), .Y(Match_list[40]) );
  INVX12 U2072 ( .A(n1764), .Y(Match_list[42]) );
  INVX12 U2073 ( .A(n1765), .Y(Match_list[43]) );
  INVX12 U2074 ( .A(n1766), .Y(Match_list[44]) );
  INVX12 U2075 ( .A(n1767), .Y(Match_list[24]) );
  INVX12 U2076 ( .A(n2554), .Y(Match_list[52]) );
  INVX12 U2077 ( .A(n2569), .Y(Match_list[67]) );
  INVX12 U2078 ( .A(n2590), .Y(Match_list[108]) );
  INVX12 U2079 ( .A(n1972), .Y(Match_list[152]) );
  INVX12 U2080 ( .A(n1922), .Y(Match_list[74]) );
  INVX12 U2081 ( .A(n1932), .Y(Match_list[86]) );
  INVX12 U2082 ( .A(n1929), .Y(Match_list[87]) );
  INVX12 U2083 ( .A(n1920), .Y(Match_list[88]) );
  INVX12 U2084 ( .A(n1931), .Y(Match_list[89]) );
  INVX12 U2085 ( .A(n1930), .Y(Match_list[93]) );
  INVX12 U2086 ( .A(n1933), .Y(Match_list[94]) );
  INVX12 U2087 ( .A(n1935), .Y(Match_list[95]) );
  INVX12 U2088 ( .A(n2603), .Y(Match_list[119]) );
  INVX12 U2089 ( .A(n1999), .Y(Match_list[171]) );
  INVX12 U2090 ( .A(n2008), .Y(Match_list[182]) );
  INVX12 U2091 ( .A(n2013), .Y(Match_list[183]) );
  INVX12 U2092 ( .A(n2011), .Y(Match_list[185]) );
  INVX12 U2093 ( .A(n2009), .Y(Match_list[189]) );
  INVX12 U2094 ( .A(n2010), .Y(Match_list[190]) );
  INVX12 U2095 ( .A(n2636), .Y(Match_list[223]) );
  INVX12 U2096 ( .A(n2665), .Y(Match_list[238]) );
  INVX12 U2097 ( .A(n2553), .Y(Match_list[51]) );
  INVX12 U2098 ( .A(n2564), .Y(Match_list[62]) );
  AOI22XL U2099 ( .A0(n1716), .A1(n2869), .B0(n2525), .B1(n2845), .Y(n1705) );
  INVX12 U2100 ( .A(n2565), .Y(Match_list[63]) );
  AOI22XL U2101 ( .A0(n1716), .A1(n2868), .B0(n2525), .B1(n2844), .Y(n1712) );
  INVX12 U2102 ( .A(n2567), .Y(Match_list[65]) );
  AOI22XL U2103 ( .A0(n1716), .A1(n2866), .B0(n2525), .B1(n2842), .Y(n1728) );
  INVX12 U2104 ( .A(n2572), .Y(Match_list[69]) );
  AOI22XL U2105 ( .A0(n1716), .A1(n2862), .B0(n2525), .B1(n2838), .Y(n2530) );
  INVX12 U2106 ( .A(n2573), .Y(Match_list[70]) );
  AOI22XL U2107 ( .A0(n1716), .A1(n2861), .B0(n2525), .B1(n2837), .Y(n2543) );
  INVX12 U2108 ( .A(n2575), .Y(Match_list[71]) );
  AOI22XL U2109 ( .A0(n1716), .A1(n2860), .B0(n2525), .B1(n2836), .Y(n1735) );
  INVX12 U2110 ( .A(n2587), .Y(Match_list[105]) );
  INVX12 U2111 ( .A(n2592), .Y(Match_list[110]) );
  INVX12 U2112 ( .A(n2593), .Y(Match_list[111]) );
  INVX12 U2113 ( .A(n2595), .Y(Match_list[113]) );
  INVX12 U2114 ( .A(n2600), .Y(Match_list[117]) );
  INVX12 U2115 ( .A(n2601), .Y(Match_list[118]) );
  AOI22XL U2116 ( .A0(n2503), .A1(n2813), .B0(n2533), .B1(n2693), .Y(n2545) );
  INVX12 U2117 ( .A(n1961), .Y(Match_list[146]) );
  INVX12 U2118 ( .A(n2003), .Y(Match_list[158]) );
  AOI22XL U2119 ( .A0(n1715), .A1(n2773), .B0(n2482), .B1(n2749), .Y(n1706) );
  INVX12 U2120 ( .A(n2001), .Y(Match_list[159]) );
  AOI22XL U2121 ( .A0(n1715), .A1(n2772), .B0(n2482), .B1(n2748), .Y(n1713) );
  INVX12 U2122 ( .A(n1967), .Y(Match_list[160]) );
  INVX12 U2123 ( .A(n2000), .Y(Match_list[161]) );
  AOI22XL U2124 ( .A0(n1715), .A1(n2770), .B0(n2482), .B1(n2746), .Y(n1729) );
  INVX12 U2125 ( .A(n2002), .Y(Match_list[165]) );
  AOI22XL U2126 ( .A0(n1715), .A1(n2766), .B0(n2482), .B1(n2742), .Y(n2531) );
  INVX12 U2127 ( .A(n2006), .Y(Match_list[166]) );
  AOI22XL U2128 ( .A0(n1715), .A1(n2765), .B0(n2482), .B1(n2741), .Y(n2544) );
  INVX12 U2129 ( .A(n1919), .Y(Match_list[73]) );
  INVX12 U2130 ( .A(n1915), .Y(Match_list[75]) );
  AOI22XL U2131 ( .A0(n1716), .A1(n2880), .B0(n2525), .B1(n2856), .Y(n2448) );
  INVX12 U2132 ( .A(n1924), .Y(Match_list[77]) );
  INVX12 U2133 ( .A(n1923), .Y(Match_list[78]) );
  INVX12 U2134 ( .A(n1913), .Y(Match_list[79]) );
  INVX12 U2135 ( .A(n1928), .Y(Match_list[80]) );
  INVX12 U2136 ( .A(n1914), .Y(Match_list[81]) );
  INVX12 U2137 ( .A(n1918), .Y(Match_list[82]) );
  INVX12 U2138 ( .A(n1917), .Y(Match_list[83]) );
  INVX12 U2139 ( .A(n1916), .Y(Match_list[84]) );
  INVX12 U2140 ( .A(n1912), .Y(Match_list[85]) );
  INVX12 U2141 ( .A(n1921), .Y(Match_list[90]) );
  INVX12 U2142 ( .A(n1925), .Y(Match_list[92]) );
  INVX12 U2143 ( .A(n1996), .Y(Match_list[169]) );
  INVX12 U2144 ( .A(n1992), .Y(Match_list[170]) );
  AOI22XL U2145 ( .A0(n1715), .A1(n2785), .B0(n2482), .B1(n2761), .Y(n2441) );
  INVX12 U2146 ( .A(n1997), .Y(Match_list[172]) );
  INVX12 U2147 ( .A(n1995), .Y(Match_list[173]) );
  INVX12 U2148 ( .A(n1994), .Y(Match_list[174]) );
  INVX12 U2149 ( .A(n1993), .Y(Match_list[175]) );
  INVX12 U2150 ( .A(n1988), .Y(Match_list[177]) );
  INVX12 U2151 ( .A(n1991), .Y(Match_list[178]) );
  INVX12 U2152 ( .A(n1986), .Y(Match_list[179]) );
  INVX12 U2153 ( .A(n1985), .Y(Match_list[180]) );
  INVX12 U2154 ( .A(n1990), .Y(Match_list[181]) );
  INVX12 U2155 ( .A(n1989), .Y(Match_list[184]) );
  AOI22XL U2156 ( .A0(n1715), .A1(n2771), .B0(n2482), .B1(n2747), .Y(n1722) );
  INVX12 U2157 ( .A(n1987), .Y(Match_list[186]) );
  INVX12 U2158 ( .A(n1984), .Y(Match_list[187]) );
  INVX12 U2159 ( .A(n1983), .Y(Match_list[188]) );
  INVX12 U2160 ( .A(n2624), .Y(Match_list[217]) );
  INVX12 U2161 ( .A(n2626), .Y(Match_list[218]) );
  INVX12 U2162 ( .A(n2628), .Y(Match_list[219]) );
  INVX12 U2163 ( .A(n2630), .Y(Match_list[220]) );
  INVX12 U2164 ( .A(n2632), .Y(Match_list[221]) );
  INVX12 U2165 ( .A(n2634), .Y(Match_list[222]) );
  INVX12 U2166 ( .A(n2638), .Y(Match_list[224]) );
  INVX12 U2167 ( .A(n2640), .Y(Match_list[225]) );
  AOI22XL U2168 ( .A0(n2503), .A1(n2826), .B0(n2481), .B1(n2706), .Y(n2489) );
  INVX12 U2169 ( .A(n2642), .Y(Match_list[226]) );
  INVX12 U2170 ( .A(n2644), .Y(Match_list[227]) );
  INVX12 U2171 ( .A(n2647), .Y(Match_list[229]) );
  INVX12 U2172 ( .A(n2649), .Y(Match_list[230]) );
  AOI22XL U2173 ( .A0(n2503), .A1(n2821), .B0(n2533), .B1(n2701), .Y(n1707) );
  INVX12 U2174 ( .A(n2651), .Y(Match_list[231]) );
  AOI22XL U2175 ( .A0(n2503), .A1(n2820), .B0(n2533), .B1(n2700), .Y(n1714) );
  INVX12 U2176 ( .A(n2653), .Y(Match_list[232]) );
  INVX12 U2177 ( .A(n2655), .Y(Match_list[233]) );
  AOI22XL U2178 ( .A0(n2503), .A1(n2818), .B0(n2533), .B1(n2698), .Y(n1730) );
  INVX12 U2179 ( .A(n2658), .Y(Match_list[235]) );
  INVX12 U2180 ( .A(n2661), .Y(Match_list[236]) );
  INVX12 U2181 ( .A(n2663), .Y(Match_list[237]) );
  AOI22XL U2182 ( .A0(n2503), .A1(n2814), .B0(n2533), .B1(n2694), .Y(n2532) );
  INVX12 U2183 ( .A(n1926), .Y(Match_list[72]) );
  INVX12 U2184 ( .A(n1982), .Y(Match_list[168]) );
  INVX12 U2185 ( .A(n2622), .Y(Match_list[216]) );
  INVX12 U2186 ( .A(n2550), .Y(Match_list[48]) );
  AOI22XL U2187 ( .A0(n2883), .A1(n1716), .B0(n2859), .B1(n2525), .Y(n2424) );
  INVX12 U2188 ( .A(n2578), .Y(Match_list[96]) );
  AOI22XL U2189 ( .A0(n2835), .A1(n2503), .B0(n2715), .B1(n2533), .Y(n2426) );
  INVX12 U2190 ( .A(n1959), .Y(Match_list[144]) );
  AOI22XL U2191 ( .A0(n2787), .A1(n1715), .B0(n2763), .B1(n2482), .Y(n2425) );
  INVX12 U2192 ( .A(n2419), .Y(Match_list[239]) );
  AOI22XL U2193 ( .A0(n2692), .A1(n2533), .B0(n2503), .B1(n2812), .Y(n1737) );
  INVX12 U2194 ( .A(n2551), .Y(Match_list[49]) );
  AOI22XL U2195 ( .A0(n1716), .A1(n2882), .B0(n2525), .B1(n2858), .Y(n2432) );
  INVX12 U2196 ( .A(n2552), .Y(Match_list[50]) );
  AOI22XL U2197 ( .A0(n1716), .A1(n2881), .B0(n2525), .B1(n2857), .Y(n2440) );
  INVX12 U2198 ( .A(n2555), .Y(Match_list[53]) );
  AOI22XL U2199 ( .A0(n1716), .A1(n2878), .B0(n2525), .B1(n2854), .Y(n1677) );
  INVX12 U2200 ( .A(n2556), .Y(Match_list[54]) );
  AOI22XL U2201 ( .A0(n1716), .A1(n2877), .B0(n2525), .B1(n2853), .Y(n2464) );
  INVX12 U2202 ( .A(n2557), .Y(Match_list[55]) );
  AOI22XL U2203 ( .A0(n1716), .A1(n2876), .B0(n2525), .B1(n2852), .Y(n2471) );
  INVX12 U2204 ( .A(n2558), .Y(Match_list[56]) );
  AOI22XL U2205 ( .A0(n1716), .A1(n2875), .B0(n2525), .B1(n2851), .Y(n2478) );
  INVX12 U2206 ( .A(n2559), .Y(Match_list[57]) );
  AOI22XL U2207 ( .A0(n1716), .A1(n2874), .B0(n2525), .B1(n2850), .Y(n2487) );
  INVX12 U2208 ( .A(n2560), .Y(Match_list[58]) );
  AOI22XL U2209 ( .A0(n1716), .A1(n2873), .B0(n2525), .B1(n2849), .Y(n2500) );
  INVX12 U2210 ( .A(n2561), .Y(Match_list[59]) );
  AOI22XL U2211 ( .A0(n1716), .A1(n2872), .B0(n2525), .B1(n2848), .Y(n1684) );
  INVX12 U2212 ( .A(n2562), .Y(Match_list[60]) );
  AOI22XL U2213 ( .A0(n1716), .A1(n2871), .B0(n2525), .B1(n2847), .Y(n1691) );
  INVX12 U2214 ( .A(n2563), .Y(Match_list[61]) );
  AOI22XL U2215 ( .A0(n1716), .A1(n2870), .B0(n2525), .B1(n2846), .Y(n1698) );
  INVX12 U2216 ( .A(n2566), .Y(Match_list[64]) );
  AOI22XL U2217 ( .A0(n1716), .A1(n2867), .B0(n2525), .B1(n2843), .Y(n1721) );
  INVX12 U2218 ( .A(n2568), .Y(Match_list[66]) );
  AOI22XL U2219 ( .A0(n1716), .A1(n2865), .B0(n2525), .B1(n2841), .Y(n2508) );
  INVX12 U2220 ( .A(n2571), .Y(Match_list[68]) );
  AOI22XL U2221 ( .A0(n1716), .A1(n2863), .B0(n2525), .B1(n2839), .Y(n2522) );
  INVX12 U2222 ( .A(n2579), .Y(Match_list[97]) );
  AOI22XL U2223 ( .A0(n2503), .A1(n2834), .B0(n2533), .B1(n2714), .Y(n2434) );
  INVX12 U2224 ( .A(n2580), .Y(Match_list[98]) );
  AOI22XL U2225 ( .A0(n2503), .A1(n2833), .B0(n2533), .B1(n2713), .Y(n2442) );
  INVX12 U2226 ( .A(n2581), .Y(Match_list[99]) );
  AOI22XL U2227 ( .A0(n2503), .A1(n2832), .B0(n2533), .B1(n2712), .Y(n2450) );
  INVX12 U2228 ( .A(n2582), .Y(Match_list[100]) );
  AOI22XL U2229 ( .A0(n2503), .A1(n2831), .B0(n2533), .B1(n2711), .Y(n2458) );
  INVX12 U2230 ( .A(n2583), .Y(Match_list[101]) );
  AOI22XL U2231 ( .A0(n2503), .A1(n2830), .B0(n2533), .B1(n2710), .Y(n1679) );
  INVX12 U2232 ( .A(n2584), .Y(Match_list[102]) );
  AOI22XL U2233 ( .A0(n2503), .A1(n2829), .B0(n2481), .B1(n2709), .Y(n2466) );
  INVX12 U2234 ( .A(n2585), .Y(Match_list[103]) );
  AOI22XL U2235 ( .A0(n2503), .A1(n2828), .B0(n2481), .B1(n2708), .Y(n2473) );
  INVX12 U2236 ( .A(n2586), .Y(Match_list[104]) );
  AOI22XL U2237 ( .A0(n2503), .A1(n2827), .B0(n2481), .B1(n2707), .Y(n2480) );
  INVX12 U2238 ( .A(n2588), .Y(Match_list[106]) );
  AOI22XL U2239 ( .A0(n2503), .A1(n2825), .B0(n2533), .B1(n2705), .Y(n2502) );
  INVX12 U2240 ( .A(n2589), .Y(Match_list[107]) );
  AOI22XL U2241 ( .A0(n2503), .A1(n2824), .B0(n2533), .B1(n2704), .Y(n1686) );
  INVX12 U2242 ( .A(n2591), .Y(Match_list[109]) );
  AOI22XL U2243 ( .A0(n2503), .A1(n2822), .B0(n2533), .B1(n2702), .Y(n1700) );
  INVX12 U2244 ( .A(n2594), .Y(Match_list[112]) );
  AOI22XL U2245 ( .A0(n2503), .A1(n2819), .B0(n2533), .B1(n2699), .Y(n1723) );
  INVX12 U2246 ( .A(n2596), .Y(Match_list[114]) );
  AOI22XL U2247 ( .A0(n2503), .A1(n2817), .B0(n2533), .B1(n2697), .Y(n2510) );
  INVX12 U2248 ( .A(n2597), .Y(Match_list[115]) );
  AOI22XL U2249 ( .A0(n2503), .A1(n2816), .B0(n2533), .B1(n2696), .Y(n2517) );
  INVX12 U2250 ( .A(n2599), .Y(Match_list[116]) );
  AOI22XL U2251 ( .A0(n2503), .A1(n2815), .B0(n2533), .B1(n2695), .Y(n2524) );
  INVX12 U2252 ( .A(n1965), .Y(Match_list[145]) );
  AOI22XL U2253 ( .A0(n1715), .A1(n2786), .B0(n2482), .B1(n2762), .Y(n2433) );
  INVX12 U2254 ( .A(n1975), .Y(Match_list[147]) );
  AOI22XL U2255 ( .A0(n1715), .A1(n2784), .B0(n2482), .B1(n2760), .Y(n2449) );
  INVX12 U2256 ( .A(n1964), .Y(Match_list[148]) );
  AOI22XL U2257 ( .A0(n1715), .A1(n2783), .B0(n2482), .B1(n2759), .Y(n2457) );
  INVX12 U2258 ( .A(n1960), .Y(Match_list[149]) );
  AOI22XL U2259 ( .A0(n1715), .A1(n2782), .B0(n2482), .B1(n2758), .Y(n1678) );
  INVX12 U2260 ( .A(n1969), .Y(Match_list[150]) );
  AOI22XL U2261 ( .A0(n1715), .A1(n2781), .B0(n2482), .B1(n2757), .Y(n2465) );
  INVX12 U2262 ( .A(n1958), .Y(Match_list[151]) );
  AOI22XL U2263 ( .A0(n1715), .A1(n2780), .B0(n2482), .B1(n2756), .Y(n2472) );
  INVX12 U2264 ( .A(n1973), .Y(Match_list[153]) );
  AOI22XL U2265 ( .A0(n1715), .A1(n2778), .B0(n2482), .B1(n2754), .Y(n2488) );
  INVX12 U2266 ( .A(n1966), .Y(Match_list[154]) );
  AOI22XL U2267 ( .A0(n1715), .A1(n2777), .B0(n2482), .B1(n2753), .Y(n2501) );
  INVX12 U2268 ( .A(n1963), .Y(Match_list[155]) );
  AOI22XL U2269 ( .A0(n1715), .A1(n2776), .B0(n2482), .B1(n2752), .Y(n1685) );
  INVX12 U2270 ( .A(n1968), .Y(Match_list[156]) );
  AOI22XL U2271 ( .A0(n1715), .A1(n2775), .B0(n2482), .B1(n2751), .Y(n1692) );
  INVX12 U2272 ( .A(n1971), .Y(Match_list[157]) );
  AOI22XL U2273 ( .A0(n1715), .A1(n2774), .B0(n2482), .B1(n2750), .Y(n1699) );
  INVX12 U2274 ( .A(n1970), .Y(Match_list[162]) );
  AOI22XL U2275 ( .A0(n1715), .A1(n2769), .B0(n2482), .B1(n2745), .Y(n2509) );
  INVX12 U2276 ( .A(n1962), .Y(Match_list[163]) );
  AOI22XL U2277 ( .A0(n1715), .A1(n2768), .B0(n2482), .B1(n2744), .Y(n2516) );
  INVX12 U2278 ( .A(n1957), .Y(Match_list[164]) );
  AOI22XL U2279 ( .A0(n1715), .A1(n2767), .B0(n2482), .B1(n2743), .Y(n2523) );
  INVX12 U2280 ( .A(n2612), .Y(Match_list[126]) );
  INVX12 U2281 ( .A(n2613), .Y(Match_list[127]) );
  INVX12 U2282 ( .A(n2614), .Y(Match_list[128]) );
  INVX12 U2283 ( .A(n2615), .Y(Match_list[129]) );
  INVX12 U2284 ( .A(n2616), .Y(Match_list[130]) );
  INVX12 U2285 ( .A(n1756), .Y(Match_list[30]) );
  AO22X1 U2286 ( .A0(n2493), .A1(n2901), .B0(n2492), .B1(n2805), .Y(n2461) );
  INVX12 U2287 ( .A(n1757), .Y(Match_list[31]) );
  AO22X1 U2288 ( .A0(n2493), .A1(n2900), .B0(n2492), .B1(n2804), .Y(n2468) );
  INVX12 U2289 ( .A(n1768), .Y(Match_list[32]) );
  AO22X1 U2290 ( .A0(n2493), .A1(n2899), .B0(n2492), .B1(n2803), .Y(n2475) );
  INVX12 U2291 ( .A(n1759), .Y(Match_list[33]) );
  AO22X1 U2292 ( .A0(n2493), .A1(n2898), .B0(n2492), .B1(n2802), .Y(n2484) );
  INVX12 U2293 ( .A(n1760), .Y(Match_list[34]) );
  AO22X1 U2294 ( .A0(n2493), .A1(n2897), .B0(n2492), .B1(n2801), .Y(n2495) );
  INVX3 U2295 ( .A(N438), .Y(n2399) );
  INVX12 U2296 ( .A(n1939), .Y(MatchCount[0]) );
  NAND2XL U2297 ( .A(n1940), .B(n2681), .Y(n2418) );
  NAND2XL U2298 ( .A(n2681), .B(n2547), .Y(n1744) );
  OAI31XL U2299 ( .A0(MatchCount[1]), .A1(MatchCount[2]), .A2(n2681), .B0(
        n2415), .Y(n2416) );
  BUFX16 U2300 ( .A(n2678), .Y(MatchCount[3]) );
  OA21XL U2301 ( .A0(MatchCount[1]), .A1(MatchCount[3]), .B0(n2606), .Y(n1980)
         );
  AOI21XL U2302 ( .A0(n2541), .A1(Match_list[15]), .B0(n1708), .Y(n1629) );
  AOI21XL U2303 ( .A0(n2541), .A1(Match_list[23]), .B0(n1731), .Y(n1630) );
  AOI21XL U2304 ( .A0(n2541), .A1(Match_list[17]), .B0(n1724), .Y(n1631) );
  AOI21XL U2305 ( .A0(n2541), .A1(Match_list[14]), .B0(n1701), .Y(n1632) );
  AOI21XL U2306 ( .A0(n2541), .A1(Match_list[3]), .B0(n2444), .Y(n1633) );
  AOI21XL U2307 ( .A0(n2541), .A1(Match_list[4]), .B0(n2452), .Y(n1634) );
  AOI21XL U2308 ( .A0(n2541), .A1(Match_list[1]), .B0(n2428), .Y(n1635) );
  AOI21XL U2309 ( .A0(n2541), .A1(Match_list[5]), .B0(n1673), .Y(n1636) );
  AOI21XL U2310 ( .A0(n2541), .A1(Match_list[2]), .B0(n2436), .Y(n1637) );
  AOI21XL U2311 ( .A0(n2541), .A1(Match_list[13]), .B0(n1694), .Y(n1638) );
  AOI21XL U2312 ( .A0(n2541), .A1(Match_list[16]), .B0(n1717), .Y(n1639) );
  AOI21XL U2313 ( .A0(n2541), .A1(Match_list[11]), .B0(n1680), .Y(n1640) );
  AOI21XL U2314 ( .A0(n2541), .A1(Match_list[12]), .B0(n1687), .Y(n1641) );
  OAI22XL U2315 ( .A0(cost_temp[1]), .A1(n1796), .B0(cost_temp[0]), .B1(n1653), 
        .Y(n1654) );
  AOI22XL U2316 ( .A0(n2689), .A1(n2329), .B0(n1790), .B1(n1654), .Y(n1655) );
  INVXL U2317 ( .A(n1849), .Y(n1850) );
  INVXL U2318 ( .A(n2349), .Y(n2346) );
  NAND4XL U2319 ( .A(\list[1][1] ), .B(n1843), .C(n2635), .D(n1346), .Y(n1651)
         );
  INVXL U2320 ( .A(n2083), .Y(n2365) );
  AOI211XL U2321 ( .A0(n2641), .A1(n2129), .B0(n2639), .C0(n2130), .Y(n1822)
         );
  NAND2XL U2322 ( .A(n2035), .B(n2033), .Y(n1860) );
  CLKBUFX3 U2323 ( .A(n2492), .Y(n2537) );
  OAI2BB2XL U2324 ( .B0(\gt_replace_value_num[3][2] ), .B1(n2217), .A0N(n2216), 
        .A1N(\gt_replace_value_num[4][2] ), .Y(n2219) );
  NOR2XL U2325 ( .A(n2621), .B(n2202), .Y(n2187) );
  INVXL U2326 ( .A(n2161), .Y(n2163) );
  OAI211XL U2327 ( .A0(n2071), .A1(n2648), .B0(n2081), .C0(n1894), .Y(n1896)
         );
  OAI211XL U2328 ( .A0(n2071), .A1(n2652), .B0(min_index[0]), .C0(n1875), .Y(
        n1881) );
  NOR2XL U2329 ( .A(n2389), .B(n2388), .Y(n2409) );
  NOR2XL U2330 ( .A(n2028), .B(n2030), .Y(n2033) );
  OAI22XL U2331 ( .A0(n1346), .A1(n2536), .B0(n2535), .B1(n2534), .Y(n2540) );
  NAND2BX1 U2332 ( .AN(n1695), .B(n1638), .Y(n1696) );
  NAND2XL U2333 ( .A(n2392), .B(n2339), .Y(n1873) );
  NAND2XL U2334 ( .A(cost_temp[9]), .B(n2109), .Y(n2110) );
  INVXL U2335 ( .A(\gt_replace_value_num[5][1] ), .Y(n2254) );
  NAND2XL U2336 ( .A(MinCost[0]), .B(n2337), .Y(n2327) );
  NOR2XL U2337 ( .A(n2387), .B(n2050), .Y(n2056) );
  NAND3XL U2338 ( .A(n2075), .B(n2385), .C(n2074), .Y(n2076) );
  INVXL U2339 ( .A(\gt_replace_value_num[6][2] ), .Y(n2320) );
  AOI22XL U2340 ( .A0(n1715), .A1(n2764), .B0(n2482), .B1(Match_list[191]), 
        .Y(n1736) );
  AOI22XL U2341 ( .A0(n1716), .A1(n2864), .B0(n2525), .B1(Match_list[91]), .Y(
        n2515) );
  INVXL U2342 ( .A(n1710), .Y(n1711) );
  AOI22XL U2343 ( .A0(n2503), .A1(n2823), .B0(n2533), .B1(Match_list[228]), 
        .Y(n1693) );
  AOI22XL U2344 ( .A0(n1715), .A1(n2779), .B0(n2482), .B1(Match_list[176]), 
        .Y(n2479) );
  AOI22XL U2345 ( .A0(n1716), .A1(n2879), .B0(n2525), .B1(Match_list[76]), .Y(
        n2456) );
  AOI211XL U2346 ( .A0(Match_list[0]), .A1(n2541), .B0(n2422), .C0(n2421), .Y(
        n2423) );
  INVXL U2347 ( .A(\gt_replace_value_num[0][2] ), .Y(n2249) );
  NAND2XL U2348 ( .A(n2333), .B(MatchCount[2]), .Y(n2334) );
  AOI211XL U2349 ( .A0(Cost[0]), .A1(n2016), .B0(RST), .C0(n2015), .Y(N800) );
  OAI211XL U2350 ( .A0(n2147), .A1(n2266), .B0(n2413), .C0(n2137), .Y(n1308)
         );
  INVXL U2351 ( .A(n2307), .Y(n1339) );
  OAI211XL U2352 ( .A0(n2314), .A1(n2656), .B0(n2319), .C0(n2313), .Y(n1288)
         );
  AOI211XL U2353 ( .A0(Cost[1]), .A1(n2023), .B0(RST), .C0(n2022), .Y(N801) );
  NAND4XL U2354 ( .A(n1737), .B(n1736), .C(n1735), .D(n1734), .Y(n1260) );
  NAND4XL U2355 ( .A(n1693), .B(n1692), .C(n1691), .D(n1690), .Y(n1271) );
  OAI22XL U2356 ( .A0(n2312), .A1(n2311), .B0(n2310), .B1(n2309), .Y(N773) );
  NOR2XL U2357 ( .A(W[0]), .B(n2330), .Y(N818) );
  INVX3 U2359 ( .A(\list[4][0] ), .Y(n2645) );
  INVX3 U2360 ( .A(\list[5][1] ), .Y(n2652) );
  NOR4XL U2361 ( .A(\list[0][0] ), .B(\list[2][2] ), .C(\list[4][1] ), .D(
        \list[3][2] ), .Y(n1645) );
  INVX3 U2362 ( .A(\list[2][1] ), .Y(n2635) );
  INVX3 U2363 ( .A(\list[1][0] ), .Y(n2627) );
  INVX3 U2364 ( .A(\list[5][2] ), .Y(n2654) );
  INVX3 U2365 ( .A(\list[5][0] ), .Y(n2650) );
  CLKINVX1 U2366 ( .A(W[0]), .Y(n2332) );
  CLKINVX1 U2367 ( .A(cs[1]), .Y(n1784) );
  CLKINVX1 U2368 ( .A(cs[2]), .Y(n1804) );
  NAND4XL U2369 ( .A(\list[0][0] ), .B(\list[2][2] ), .C(\list[3][2] ), .D(
        \list[0][2] ), .Y(n1652) );
  INVX3 U2370 ( .A(\list[2][0] ), .Y(n2633) );
  INVX3 U2371 ( .A(\list[4][1] ), .Y(n2646) );
  NOR3XL U2372 ( .A(\list[5][0] ), .B(n2645), .C(n2646), .Y(n1838) );
  INVX3 U2373 ( .A(\list[6][1] ), .Y(n2657) );
  NAND2XL U2374 ( .A(\list[5][1] ), .B(n2657), .Y(n1849) );
  NAND4XL U2375 ( .A(\list[0][1] ), .B(n2648), .C(n2654), .D(n2627), .Y(n1648)
         );
  NOR4X1 U2376 ( .A(\list[7][0] ), .B(n1652), .C(n1651), .D(n1650), .Y(n1788)
         );
  NOR2BX1 U2377 ( .AN(n2020), .B(n1788), .Y(n1799) );
  CLKINVX1 U2378 ( .A(n2687), .Y(n2101) );
  CLKINVX1 U2379 ( .A(n2686), .Y(n2095) );
  CLKINVX1 U2380 ( .A(n2690), .Y(n1796) );
  OAI21XL U2381 ( .A0(n2690), .A1(n2326), .B0(MinCost[0]), .Y(n1653) );
  OAI2BB2XL U2382 ( .B0(n1793), .B1(n1655), .A0N(n2324), .A1N(n2688), .Y(n1658) );
  OAI22XL U2383 ( .A0(cost_temp[5]), .A1(n2095), .B0(cost_temp[6]), .B1(n2097), 
        .Y(n1656) );
  CLKINVX1 U2384 ( .A(cost_temp[8]), .Y(n2341) );
  OAI2BB2XL U2385 ( .B0(n2683), .B1(n2341), .A0N(n2099), .A1N(cost_temp[7]), 
        .Y(n1792) );
  AOI222XL U2386 ( .A0(n2683), .A1(n1659), .B0(n2683), .B1(n2341), .C0(n1659), 
        .C1(n2341), .Y(n1660) );
  AOI22X1 U2387 ( .A0(n2682), .A1(n2213), .B0(n1662), .B1(n1797), .Y(n1789) );
  CLKINVX1 U2388 ( .A(MatchCount[1]), .Y(n2335) );
  NAND3X1 U2389 ( .A(MatchCount[1]), .B(n1954), .C(n1939), .Y(n2549) );
  NAND3X1 U2390 ( .A(MatchCount[1]), .B(n2681), .C(n1954), .Y(n1911) );
  NAND2X1 U2391 ( .A(n2610), .B(n1742), .Y(n2460) );
  NAND3BX1 U2392 ( .AN(n1672), .B(n1940), .C(n1939), .Y(n2535) );
  CLKINVX1 U2393 ( .A(n2734), .Y(n1941) );
  OAI22XL U2394 ( .A0(n2631), .A1(n2460), .B0(n2491), .B1(n1941), .Y(n1674) );
  NOR2BX1 U2395 ( .AN(n1666), .B(n1799), .Y(n1667) );
  OAI21XL U2396 ( .A0(n1669), .A1(n1672), .B0(n1668), .Y(n1670) );
  NOR2X1 U2397 ( .A(n1672), .B(n1744), .Y(n2493) );
  CLKBUFX3 U2398 ( .A(n2493), .Y(n2538) );
  NOR2X1 U2399 ( .A(n1672), .B(n2611), .Y(n2492) );
  AO22X1 U2400 ( .A0(n2538), .A1(n2902), .B0(n2537), .B1(Match_list[125]), .Y(
        n1673) );
  INVX3 U2401 ( .A(\list[3][2] ), .Y(n2643) );
  CLKBUFX3 U2402 ( .A(n2460), .Y(n2536) );
  CLKINVX1 U2403 ( .A(n2728), .Y(n1948) );
  OAI22XL U2404 ( .A0(n2643), .A1(n2536), .B0(n2491), .B1(n1948), .Y(n1681) );
  AO22X1 U2405 ( .A0(n2538), .A1(n2896), .B0(n2537), .B1(Match_list[131]), .Y(
        n1680) );
  CLKINVX1 U2406 ( .A(n2727), .Y(n1949) );
  OAI22XL U2407 ( .A0(n2645), .A1(n2536), .B0(n2491), .B1(n1949), .Y(n1688) );
  AO22X1 U2408 ( .A0(n2538), .A1(n2895), .B0(n2537), .B1(Match_list[132]), .Y(
        n1687) );
  CLKINVX1 U2409 ( .A(n2726), .Y(n1950) );
  OAI22XL U2410 ( .A0(n2646), .A1(n2536), .B0(n2491), .B1(n1950), .Y(n1695) );
  AO22X1 U2411 ( .A0(n2538), .A1(n2894), .B0(n2537), .B1(Match_list[133]), .Y(
        n1694) );
  CLKINVX1 U2412 ( .A(n2725), .Y(n1942) );
  OAI22XL U2413 ( .A0(n2648), .A1(n2536), .B0(n2491), .B1(n1942), .Y(n1702) );
  AO22X1 U2414 ( .A0(n2538), .A1(n2893), .B0(n2537), .B1(Match_list[134]), .Y(
        n1701) );
  CLKINVX1 U2415 ( .A(n2724), .Y(n1943) );
  OAI22XL U2416 ( .A0(n2650), .A1(n2536), .B0(n2491), .B1(n1943), .Y(n1709) );
  AO22X1 U2417 ( .A0(n2538), .A1(n2892), .B0(n2537), .B1(Match_list[135]), .Y(
        n1708) );
  CLKINVX1 U2418 ( .A(n2723), .Y(n1944) );
  OAI22XL U2419 ( .A0(n2652), .A1(n2536), .B0(n2491), .B1(n1944), .Y(n1718) );
  AO22X1 U2420 ( .A0(n2538), .A1(n2891), .B0(n2537), .B1(Match_list[136]), .Y(
        n1717) );
  CLKINVX1 U2421 ( .A(n2722), .Y(n1945) );
  OAI22XL U2422 ( .A0(n2654), .A1(n2536), .B0(n2491), .B1(n1945), .Y(n1725) );
  AO22X1 U2423 ( .A0(n2538), .A1(n2890), .B0(n2537), .B1(Match_list[137]), .Y(
        n1724) );
  CLKINVX1 U2424 ( .A(n2716), .Y(n1947) );
  OAI22XL U2425 ( .A0(n2619), .A1(n2536), .B0(n2491), .B1(n1947), .Y(n1732) );
  AO22X1 U2426 ( .A0(n2538), .A1(n2884), .B0(n2537), .B1(Match_list[143]), .Y(
        n1731) );
  NOR3XL U2427 ( .A(cs[0]), .B(cs[1]), .C(n1804), .Y(n1738) );
  NAND2XL U2428 ( .A(n2387), .B(n1456), .Y(n1340) );
  AOI211X4 U2429 ( .A0(n2609), .A1(n1744), .B0(n2608), .C0(n1743), .Y(n1803)
         );
  NAND2BX1 U2430 ( .AN(n1744), .B(n2610), .Y(n1751) );
  OAI22XL U2431 ( .A0(n1803), .A1(n1745), .B0(n1346), .B1(n1751), .Y(n1237) );
  OAI22XL U2432 ( .A0(n1803), .A1(n1746), .B0(n2662), .B1(n1751), .Y(n1238) );
  OAI22XL U2433 ( .A0(n1803), .A1(n1747), .B0(n2619), .B1(n1751), .Y(n1236) );
  OAI22XL U2434 ( .A0(n1803), .A1(n1748), .B0(n2654), .B1(n1751), .Y(n1242) );
  OAI22XL U2435 ( .A0(n1803), .A1(n1749), .B0(n2648), .B1(n1751), .Y(n1245) );
  OAI22XL U2436 ( .A0(n1803), .A1(n1750), .B0(n2650), .B1(n1751), .Y(n1244) );
  CLKBUFX3 U2437 ( .A(n1751), .Y(n1801) );
  OAI22XL U2438 ( .A0(n1803), .A1(n1752), .B0(n2625), .B1(n1801), .Y(n1257) );
  INVX3 U2439 ( .A(\list[1][1] ), .Y(n2629) );
  OAI22XL U2440 ( .A0(n1803), .A1(n1753), .B0(n2629), .B1(n1801), .Y(n1255) );
  OAI22XL U2441 ( .A0(n1803), .A1(n1754), .B0(n2631), .B1(n1801), .Y(n1254) );
  OAI22XL U2442 ( .A0(n1803), .A1(n1755), .B0(n2623), .B1(n1801), .Y(n1258) );
  OAI22XL U2443 ( .A0(n1803), .A1(n1756), .B0(n2633), .B1(n1801), .Y(n1253) );
  OAI22XL U2444 ( .A0(n1803), .A1(n1757), .B0(n2635), .B1(n1801), .Y(n1252) );
  OAI22XL U2445 ( .A0(n1803), .A1(n1758), .B0(n2627), .B1(n1801), .Y(n1256) );
  OAI22XL U2446 ( .A0(n1803), .A1(n1759), .B0(n2639), .B1(n1801), .Y(n1250) );
  OAI22XL U2447 ( .A0(n1803), .A1(n1760), .B0(n2641), .B1(n1801), .Y(n1249) );
  OAI22XL U2448 ( .A0(n1803), .A1(n1761), .B0(n2643), .B1(n1801), .Y(n1248) );
  OAI22XL U2449 ( .A0(n1803), .A1(n1762), .B0(n2645), .B1(n1801), .Y(n1247) );
  OAI22XL U2450 ( .A0(n1803), .A1(n1763), .B0(n2646), .B1(n1801), .Y(n1246) );
  INVX3 U2451 ( .A(\list[6][0] ), .Y(n2656) );
  OAI22XL U2452 ( .A0(n1803), .A1(n1764), .B0(n2656), .B1(n1801), .Y(n1241) );
  OAI22XL U2453 ( .A0(n1803), .A1(n1765), .B0(n2657), .B1(n1801), .Y(n1240) );
  INVX3 U2454 ( .A(\list[6][2] ), .Y(n2659) );
  OAI22XL U2455 ( .A0(n1803), .A1(n1766), .B0(n2659), .B1(n1801), .Y(n1239) );
  OAI22XL U2456 ( .A0(n1803), .A1(n1767), .B0(n2621), .B1(n1801), .Y(n1259) );
  OAI22XL U2457 ( .A0(n1803), .A1(n1768), .B0(n2637), .B1(n1801), .Y(n1251) );
  NOR2X1 U2458 ( .A(n2399), .B(n2298), .Y(n2057) );
  NOR2X1 U2459 ( .A(N438), .B(n2298), .Y(n2073) );
  CLKINVX1 U2460 ( .A(n2404), .Y(n2402) );
  AOI222XL U2461 ( .A0(\list[3][0] ), .A1(n2073), .B0(\list[1][0] ), .B1(n2402), .C0(N438), .C1(n2085), .Y(n1787) );
  NAND2X1 U2462 ( .A(n2073), .B(n2070), .Y(n2161) );
  NAND2BX1 U2463 ( .AN(min_index[2]), .B(min_index[1]), .Y(n2058) );
  AOI221X1 U2464 ( .A0(min_index[0]), .A1(n2161), .B0(n2058), .B1(n2161), .C0(
        n2134), .Y(n1883) );
  NOR3XL U2465 ( .A(cs[2]), .B(n1784), .C(n1861), .Y(n1770) );
  CLKINVX1 U2466 ( .A(n2392), .Y(n2384) );
  NAND2XL U2467 ( .A(n2364), .B(n2164), .Y(n1771) );
  NAND2X1 U2468 ( .A(N310), .B(n2073), .Y(n2172) );
  CLKINVX1 U2469 ( .A(n2172), .Y(n2173) );
  NOR2X1 U2470 ( .A(n2165), .B(n2399), .Y(n2083) );
  OAI22XL U2471 ( .A0(n2645), .A1(n2404), .B0(n2650), .B1(n2153), .Y(n1775) );
  OAI22XL U2472 ( .A0(n2662), .A1(n2183), .B0(n2627), .B1(n2373), .Y(n1774) );
  AOI2BB2X1 U2473 ( .B0(n2165), .B1(\list[2][0] ), .A0N(n2165), .A1N(n2621), 
        .Y(n2390) );
  OAI211X4 U2474 ( .A0(n2148), .A1(n2639), .B0(n1777), .C0(n1776), .Y(n2130)
         );
  CLKINVX1 U2475 ( .A(n2130), .Y(n2394) );
  NAND2X1 U2476 ( .A(min_index[1]), .B(min_index[2]), .Y(n2048) );
  OAI22XL U2477 ( .A0(n2639), .A1(n2058), .B0(n2662), .B1(n2048), .Y(n1783) );
  NOR2X1 U2478 ( .A(min_index[1]), .B(min_index[2]), .Y(n1893) );
  NAND2XL U2479 ( .A(\list[1][0] ), .B(n1893), .Y(n1778) );
  OAI211XL U2480 ( .A0(n2071), .A1(n2650), .B0(min_index[0]), .C0(n1778), .Y(
        n1782) );
  INVXL U2481 ( .A(n2058), .Y(n1877) );
  INVX1 U2482 ( .A(n1893), .Y(n2080) );
  OAI22XL U2483 ( .A0(n2621), .A1(n2080), .B0(n2645), .B1(n2071), .Y(n1779) );
  AOI211XL U2484 ( .A0(\list[2][0] ), .A1(n1877), .B0(min_index[0]), .C0(n1779), .Y(n1780) );
  OAI21XL U2485 ( .A0(n2656), .A1(n2048), .B0(n1780), .Y(n1781) );
  AOI221XL U2486 ( .A0(n2394), .A1(n2161), .B0(n2393), .B1(n2163), .C0(n2170), 
        .Y(n1785) );
  AOI211XL U2487 ( .A0(\list[2][0] ), .A1(n2168), .B0(n1785), .C0(n2406), .Y(
        n1786) );
  OAI31XL U2488 ( .A0(n2164), .A1(n1787), .A2(n2389), .B0(n1786), .Y(n1333) );
  NOR2X1 U2489 ( .A(n1788), .B(n1902), .Y(n1867) );
  NAND2X1 U2490 ( .A(n1789), .B(n1867), .Y(n1909) );
  OAI211X1 U2491 ( .A0(MinCost[0]), .A1(n2673), .B0(n1798), .C0(n1797), .Y(
        n1908) );
  NOR2X1 U2492 ( .A(RST), .B(n1799), .Y(n2092) );
  AOI2BB1X1 U2493 ( .A0N(n1800), .A1N(n1909), .B0(n2092), .Y(n1905) );
  OAI22XL U2494 ( .A0(MatchCount[1]), .A1(n2336), .B0(n2335), .B1(n1905), .Y(
        N874) );
  OAI22XL U2495 ( .A0(n1803), .A1(n1802), .B0(n2652), .B1(n1801), .Y(n1243) );
  NAND3XL U2496 ( .A(n1861), .B(n1804), .C(cs[1]), .Y(n1819) );
  NOR2X2 U2497 ( .A(n1819), .B(RST), .Y(n2414) );
  CLKBUFX3 U2498 ( .A(n2120), .Y(n2321) );
  OAI22XL U2499 ( .A0(n2155), .A1(n1810), .B0(n2648), .B1(n2404), .Y(n1807) );
  OAI22XL U2500 ( .A0(n2643), .A1(n2148), .B0(n2631), .B1(n2373), .Y(n1806) );
  OAI22XL U2501 ( .A0(n2619), .A1(n2183), .B0(n2659), .B1(n2172), .Y(n1805) );
  CLKBUFX3 U2502 ( .A(n1809), .Y(n2374) );
  OAI22XL U2503 ( .A0(n2646), .A1(n2404), .B0(n2652), .B1(n2153), .Y(n1813) );
  OAI22XL U2504 ( .A0(n2400), .A1(n1810), .B0(n2641), .B1(n2148), .Y(n1812) );
  OAI22XL U2505 ( .A0(n2629), .A1(n2373), .B0(n1346), .B1(n2183), .Y(n1811) );
  OAI21XL U2506 ( .A0(n2405), .A1(\list[2][1] ), .B0(\list[2][0] ), .Y(n1816)
         );
  OAI22XL U2507 ( .A0(n1816), .A1(n2130), .B0(n2129), .B1(n2635), .Y(n1817) );
  AOI222XL U2508 ( .A0(\list[2][2] ), .A1(n2374), .B0(\list[2][2] ), .B1(n1817), .C0(n2374), .C1(n1817), .Y(n1820) );
  NOR2X1 U2509 ( .A(cs[1]), .B(cs[2]), .Y(n1862) );
  NAND2XL U2510 ( .A(cs[0]), .B(n1862), .Y(n1818) );
  OAI21XL U2511 ( .A0(n2321), .A1(n2241), .B0(n2115), .Y(n1301) );
  CLKINVX1 U2512 ( .A(n2374), .Y(n2162) );
  OAI22XL U2513 ( .A0(n2643), .A1(n2162), .B0(n2641), .B1(n2129), .Y(n1821) );
  OAI22XL U2514 ( .A0(n1822), .A1(n1821), .B0(\list[3][2] ), .B1(n2374), .Y(
        n1823) );
  OAI31X1 U2515 ( .A0(n2133), .A1(n2070), .A2(n1823), .B0(n2321), .Y(n2119) );
  OAI21XL U2516 ( .A0(n2321), .A1(n2218), .B0(n2119), .Y(n1297) );
  OAI22XL U2517 ( .A0(n2652), .A1(n2129), .B0(n2654), .B1(n2162), .Y(n1824) );
  OAI22XL U2518 ( .A0(n1825), .A1(n1824), .B0(\list[5][2] ), .B1(n2374), .Y(
        n1826) );
  OAI31X1 U2519 ( .A0(n2133), .A1(n2351), .A2(n1826), .B0(n2147), .Y(n2142) );
  OAI21XL U2520 ( .A0(n2321), .A1(n2285), .B0(n2142), .Y(n1289) );
  NOR2X1 U2521 ( .A(n2402), .B(n2070), .Y(n2385) );
  OAI22XL U2522 ( .A0(n2646), .A1(n2129), .B0(n2648), .B1(n2162), .Y(n1827) );
  OAI22XL U2523 ( .A0(n1828), .A1(n1827), .B0(\list[4][2] ), .B1(n2374), .Y(
        n1829) );
  OAI31X1 U2524 ( .A0(n2133), .A1(n2388), .A2(n1829), .B0(n2321), .Y(n2146) );
  OAI21XL U2525 ( .A0(n2321), .A1(n2287), .B0(n2146), .Y(n1293) );
  OAI21XL U2526 ( .A0(n2405), .A1(\list[6][1] ), .B0(n2394), .Y(n1830) );
  AOI222XL U2527 ( .A0(\list[6][2] ), .A1(n2374), .B0(\list[6][2] ), .B1(n1831), .C0(n2374), .C1(n1831), .Y(n1832) );
  OAI31X1 U2528 ( .A0(n2133), .A1(n2183), .A2(n1832), .B0(n2147), .Y(n2319) );
  OAI21XL U2529 ( .A0(n2321), .A1(n2223), .B0(n2319), .Y(n1285) );
  INVXL U2530 ( .A(sort_round[1]), .Y(n1870) );
  OAI31XL U2531 ( .A0(cs[2]), .A1(sort_round[0]), .A2(n1870), .B0(cs[1]), .Y(
        n1833) );
  NAND2XL U2532 ( .A(n1861), .B(n1833), .Y(n1834) );
  NOR3XL U2533 ( .A(RST), .B(Valid), .C(n1834), .Y(N209) );
  INVX12 U2534 ( .A(n2331), .Y(W[1]) );
  OAI211XL U2535 ( .A0(\list[1][1] ), .A1(n2635), .B0(\list[1][0] ), .C0(n2633), .Y(n1835) );
  OAI21XL U2536 ( .A0(\list[2][1] ), .A1(n2629), .B0(n1835), .Y(n1836) );
  NOR2XL U2537 ( .A(\list[5][0] ), .B(n2645), .Y(n1837) );
  OAI222XL U2538 ( .A0(n2654), .A1(\list[4][2] ), .B0(n2652), .B1(n1838), .C0(
        n1837), .C1(\list[4][1] ), .Y(n1839) );
  OA21XL U2539 ( .A0(\list[5][2] ), .A1(n2648), .B0(n1839), .Y(n1853) );
  NOR2XL U2540 ( .A(n1840), .B(n2641), .Y(n1841) );
  OAI222XL U2541 ( .A0(n2648), .A1(\list[3][2] ), .B0(n2646), .B1(n1841), .C0(
        n1459), .C1(\list[3][1] ), .Y(n1842) );
  OAI21XL U2542 ( .A0(\list[4][2] ), .A1(n2643), .B0(n1842), .Y(n1854) );
  NOR2XL U2543 ( .A(\list[3][0] ), .B(n2633), .Y(n1844) );
  OAI222XL U2544 ( .A0(n2643), .A1(\list[2][2] ), .B0(n2641), .B1(n1844), .C0(
        n1843), .C1(\list[2][1] ), .Y(n1845) );
  OA21XL U2545 ( .A0(\list[3][2] ), .A1(n2637), .B0(n1845), .Y(n1855) );
  OAI21XL U2546 ( .A0(n1853), .A1(n1854), .B0(n1855), .Y(n1858) );
  OAI22XL U2547 ( .A0(\list[1][1] ), .A1(n2623), .B0(n2621), .B1(\list[1][0] ), 
        .Y(n1846) );
  OAI21XL U2548 ( .A0(\list[0][1] ), .A1(n2629), .B0(n1846), .Y(n1847) );
  AOI222X1 U2549 ( .A0(\list[1][2] ), .A1(n1847), .B0(\list[1][2] ), .B1(n2625), .C0(n1847), .C1(n2625), .Y(n2028) );
  OAI22XL U2550 ( .A0(\list[7][1] ), .A1(n2657), .B0(n2656), .B1(\list[7][0] ), 
        .Y(n1848) );
  OAI21XL U2551 ( .A0(\list[6][1] ), .A1(n1346), .B0(n1848), .Y(n1857) );
  OA21XL U2552 ( .A0(n1857), .A1(n2659), .B0(\list[7][2] ), .Y(n1856) );
  AOI31XL U2553 ( .A0(\list[5][0] ), .A1(n2656), .A2(n1851), .B0(n1850), .Y(
        n1852) );
  NAND2BX1 U2554 ( .AN(n1854), .B(n1853), .Y(n2026) );
  NAND2XL U2555 ( .A(n1862), .B(n1861), .Y(n1863) );
  OAI22XL U2556 ( .A0(n1865), .A1(n2024), .B0(n2399), .B1(n2038), .Y(n1315) );
  NAND2X1 U2557 ( .A(n1866), .B(n1867), .Y(n2340) );
  NAND3BX1 U2558 ( .AN(n1908), .B(n1867), .C(n1939), .Y(n1868) );
  OAI211XL U2559 ( .A0(n1869), .A1(n1939), .B0(n2340), .C0(n1868), .Y(N873) );
  INVXL U2560 ( .A(sort_round[0]), .Y(n1871) );
  AOI221XL U2561 ( .A0(sort_round[0]), .A1(sort_round[1]), .B0(n1871), .B1(
        n1870), .C0(n2321), .Y(N784) );
  AOI222XL U2562 ( .A0(\list[1][1] ), .A1(n2402), .B0(\list[3][1] ), .B1(n2073), .C0(N438), .C1(n2366), .Y(n1886) );
  CLKINVX1 U2563 ( .A(n2086), .Y(n2075) );
  NAND2XL U2564 ( .A(\list[1][1] ), .B(n1893), .Y(n1875) );
  OAI22XL U2565 ( .A0(n1346), .A1(n2048), .B0(n2641), .B1(n2058), .Y(n1880) );
  OAI22XL U2566 ( .A0(n2646), .A1(n2071), .B0(n2623), .B1(n2080), .Y(n1876) );
  AOI211XL U2567 ( .A0(\list[2][1] ), .A1(n1877), .B0(min_index[0]), .C0(n1876), .Y(n1878) );
  OAI21XL U2568 ( .A0(n2657), .A1(n2048), .B0(n1878), .Y(n1879) );
  AOI221XL U2569 ( .A0(n2405), .A1(n2161), .B0(n2403), .B1(n2163), .C0(n2090), 
        .Y(n1882) );
  AOI22XL U2570 ( .A0(\list[2][1] ), .A1(n1884), .B0(n1883), .B1(n1882), .Y(
        n1885) );
  OAI31XL U2571 ( .A0(n2164), .A1(n1886), .A2(n2086), .B0(n1885), .Y(n1332) );
  AOI222XL U2572 ( .A0(\list[2][2] ), .A1(n2349), .B0(\list[6][2] ), .B1(n2301), .C0(\list[0][2] ), .C1(n2134), .Y(n1888) );
  OAI22XL U2573 ( .A0(N438), .A1(n2378), .B0(n2648), .B1(n2153), .Y(n1887) );
  AOI2BB1X1 U2574 ( .A0N(n1888), .A1N(n2399), .B0(n1887), .Y(n1901) );
  NAND2X1 U2575 ( .A(n2134), .B(n2399), .Y(n1891) );
  OAI21XL U2576 ( .A0(min_index[0]), .A1(n2080), .B0(n1891), .Y(n1890) );
  NAND2XL U2577 ( .A(n2364), .B(n2079), .Y(n1889) );
  OAI211X1 U2578 ( .A0(n2384), .A1(n1890), .B0(n2176), .C0(n1889), .Y(n2360)
         );
  INVX1 U2579 ( .A(min_index[0]), .Y(n2081) );
  NAND2XL U2580 ( .A(\list[1][2] ), .B(n1893), .Y(n1892) );
  OAI211XL U2581 ( .A0(n2071), .A1(n2654), .B0(min_index[0]), .C0(n1892), .Y(
        n1898) );
  OAI22XL U2582 ( .A0(n2619), .A1(n2048), .B0(n2643), .B1(n2058), .Y(n1897) );
  NAND2XL U2583 ( .A(\list[0][2] ), .B(n1893), .Y(n1894) );
  OAI22XL U2584 ( .A0(n2637), .A1(n2058), .B0(n2659), .B1(n2048), .Y(n1895) );
  OAI22X1 U2585 ( .A0(n1898), .A1(n1897), .B0(n1896), .B1(n1895), .Y(n2372) );
  OAI22XL U2586 ( .A0(n2374), .A1(n2356), .B0(n2355), .B1(n2372), .Y(n1899) );
  AOI211XL U2587 ( .A0(\list[0][2] ), .A1(n2360), .B0(n2406), .C0(n1899), .Y(
        n1900) );
  OAI21XL U2588 ( .A0(n1901), .A1(n2354), .B0(n1900), .Y(n1337) );
  CLKINVX1 U2589 ( .A(n1902), .Y(n2343) );
  AO22X1 U2590 ( .A0(n2343), .A1(Cost[4]), .B0(n2342), .B1(\intadd_0/SUM[2] ), 
        .Y(N804) );
  AOI211X1 U2591 ( .A0(n2060), .A1(n2183), .B0(n2075), .C0(n2387), .Y(n1904)
         );
  CLKINVX1 U2592 ( .A(n2183), .Y(n2177) );
  OAI22XL U2593 ( .A0(n1904), .A1(n2619), .B0(n2372), .B1(n1903), .Y(n1316) );
  OAI22XL U2594 ( .A0(n1904), .A1(n2662), .B0(n2393), .B1(n1903), .Y(n1318) );
  OAI22XL U2595 ( .A0(n1904), .A1(n1346), .B0(n2403), .B1(n1903), .Y(n1317) );
  AO22X1 U2596 ( .A0(n2343), .A1(Cost[5]), .B0(n2342), .B1(\intadd_0/SUM[3] ), 
        .Y(N805) );
  OAI21XL U2597 ( .A0(MatchCount[1]), .A1(n1909), .B0(n1905), .Y(n2333) );
  OAI21XL U2598 ( .A0(n2333), .A1(n1906), .B0(MatchCount[3]), .Y(n1907) );
  OAI31XL U2599 ( .A0(n1909), .A1(n1976), .A2(n1908), .B0(n1907), .Y(N876) );
  AO22X1 U2600 ( .A0(n2343), .A1(Cost[6]), .B0(n2342), .B1(\intadd_0/SUM[4] ), 
        .Y(N806) );
  AOI211X4 U2601 ( .A0(n2609), .A1(n1911), .B0(n2608), .C0(n1910), .Y(n1936)
         );
  NAND2BX1 U2602 ( .AN(n1911), .B(n2610), .Y(n1934) );
  CLKBUFX3 U2603 ( .A(n1934), .Y(n1927) );
  OAI22XL U2604 ( .A0(n1936), .A1(n1912), .B0(n2646), .B1(n1927), .Y(n1198) );
  OAI22XL U2605 ( .A0(n1936), .A1(n1391), .B0(n2657), .B1(n1927), .Y(n1192) );
  OAI22XL U2606 ( .A0(n1936), .A1(n1913), .B0(n2635), .B1(n1927), .Y(n1204) );
  OAI22XL U2607 ( .A0(n1936), .A1(n1914), .B0(n2639), .B1(n1927), .Y(n1202) );
  OAI22XL U2608 ( .A0(n1936), .A1(n1915), .B0(n2627), .B1(n1927), .Y(n1208) );
  OAI22XL U2609 ( .A0(n1936), .A1(n1916), .B0(n2645), .B1(n1927), .Y(n1199) );
  OAI22XL U2610 ( .A0(n1936), .A1(n1917), .B0(n2643), .B1(n1927), .Y(n1200) );
  OAI22XL U2611 ( .A0(n1936), .A1(n1918), .B0(n2641), .B1(n1927), .Y(n1201) );
  OAI22XL U2612 ( .A0(n1936), .A1(n1919), .B0(n2623), .B1(n1927), .Y(n1210) );
  OAI22XL U2613 ( .A0(n1936), .A1(n1920), .B0(n2652), .B1(n1927), .Y(n1195) );
  OAI22XL U2614 ( .A0(n1936), .A1(n1393), .B0(n2629), .B1(n1927), .Y(n1207) );
  OAI22XL U2615 ( .A0(n1936), .A1(n1921), .B0(n2656), .B1(n1927), .Y(n1193) );
  OAI22XL U2616 ( .A0(n1936), .A1(n1922), .B0(n2625), .B1(n1927), .Y(n1209) );
  OAI22XL U2617 ( .A0(n1936), .A1(n1923), .B0(n2633), .B1(n1927), .Y(n1205) );
  OAI22XL U2618 ( .A0(n1936), .A1(n1924), .B0(n2631), .B1(n1927), .Y(n1206) );
  OAI22XL U2619 ( .A0(n1936), .A1(n1925), .B0(n2659), .B1(n1927), .Y(n1191) );
  OAI22XL U2620 ( .A0(n1936), .A1(n1926), .B0(n2621), .B1(n1927), .Y(n1211) );
  OAI22XL U2621 ( .A0(n1936), .A1(n1928), .B0(n2637), .B1(n1927), .Y(n1203) );
  OAI22XL U2622 ( .A0(n1936), .A1(n1929), .B0(n2650), .B1(n1934), .Y(n1196) );
  OAI22XL U2623 ( .A0(n1936), .A1(n1930), .B0(n2662), .B1(n1934), .Y(n1190) );
  OAI22XL U2624 ( .A0(n1936), .A1(n1931), .B0(n2654), .B1(n1934), .Y(n1194) );
  OAI22XL U2625 ( .A0(n1936), .A1(n1932), .B0(n2648), .B1(n1934), .Y(n1197) );
  OAI22XL U2626 ( .A0(n1936), .A1(n1933), .B0(n1346), .B1(n1934), .Y(n1189) );
  OAI22XL U2627 ( .A0(n1936), .A1(n1935), .B0(n2619), .B1(n1934), .Y(n1188) );
  NAND2XL U2628 ( .A(n1940), .B(n1939), .Y(n1938) );
  AOI211X4 U2629 ( .A0(n2609), .A1(n1938), .B0(n2415), .C0(n2608), .Y(n1952)
         );
  CLKINVX1 U2630 ( .A(n2737), .Y(n2435) );
  NAND3X1 U2631 ( .A(n1940), .B(n2610), .C(n1939), .Y(n1946) );
  CLKBUFX3 U2632 ( .A(n1946), .Y(n1951) );
  OAI22XL U2633 ( .A0(n1952), .A1(n2435), .B0(n2625), .B1(n1951), .Y(n1089) );
  CLKINVX1 U2634 ( .A(n2736), .Y(n2443) );
  OAI22XL U2635 ( .A0(n1952), .A1(n2443), .B0(n2627), .B1(n1951), .Y(n1088) );
  CLKINVX1 U2636 ( .A(n2738), .Y(n2427) );
  OAI22XL U2637 ( .A0(n1952), .A1(n2427), .B0(n2623), .B1(n1951), .Y(n1090) );
  OAI22XL U2638 ( .A0(n1952), .A1(n1941), .B0(n2631), .B1(n1951), .Y(n1086) );
  OAI22XL U2639 ( .A0(n1952), .A1(n1942), .B0(n2648), .B1(n1946), .Y(n1077) );
  OAI22XL U2640 ( .A0(n1952), .A1(n1943), .B0(n2650), .B1(n1946), .Y(n1076) );
  OAI22XL U2641 ( .A0(n1952), .A1(n1944), .B0(n2652), .B1(n1951), .Y(n1075) );
  OAI22XL U2642 ( .A0(n1952), .A1(n1945), .B0(n2654), .B1(n1946), .Y(n1074) );
  CLKINVX1 U2643 ( .A(n2721), .Y(n2504) );
  OAI22XL U2644 ( .A0(n1952), .A1(n2504), .B0(n2656), .B1(n1951), .Y(n1073) );
  CLKINVX1 U2645 ( .A(n2720), .Y(n2511) );
  OAI22XL U2646 ( .A0(n1952), .A1(n2511), .B0(n2657), .B1(n1951), .Y(n1072) );
  CLKINVX1 U2647 ( .A(n2735), .Y(n2451) );
  OAI22XL U2648 ( .A0(n1952), .A1(n2451), .B0(n2629), .B1(n1951), .Y(n1087) );
  OAI22XL U2649 ( .A0(n1952), .A1(n2526), .B0(n2662), .B1(n1946), .Y(n1070) );
  CLKINVX1 U2650 ( .A(n2717), .Y(n2534) );
  OAI22XL U2651 ( .A0(n1952), .A1(n2534), .B0(n1346), .B1(n1951), .Y(n1069) );
  OAI22XL U2652 ( .A0(n1952), .A1(n1947), .B0(n2619), .B1(n1946), .Y(n1068) );
  OAI22XL U2653 ( .A0(n1952), .A1(n2459), .B0(n2633), .B1(n1951), .Y(n1085) );
  CLKINVX1 U2654 ( .A(n2732), .Y(n2467) );
  OAI22XL U2655 ( .A0(n1952), .A1(n2467), .B0(n2635), .B1(n1951), .Y(n1084) );
  CLKINVX1 U2656 ( .A(n2731), .Y(n2474) );
  OAI22XL U2657 ( .A0(n1952), .A1(n2474), .B0(n2637), .B1(n1951), .Y(n1083) );
  CLKINVX1 U2658 ( .A(n2730), .Y(n2483) );
  OAI22XL U2659 ( .A0(n1952), .A1(n2483), .B0(n2639), .B1(n1951), .Y(n1082) );
  CLKINVX1 U2660 ( .A(n2719), .Y(n2518) );
  OAI22XL U2661 ( .A0(n1952), .A1(n2518), .B0(n2659), .B1(n1951), .Y(n1071) );
  OAI22XL U2662 ( .A0(n1952), .A1(n1948), .B0(n2643), .B1(n1951), .Y(n1080) );
  OAI22XL U2663 ( .A0(n1952), .A1(n1949), .B0(n2645), .B1(n1951), .Y(n1079) );
  OAI22XL U2664 ( .A0(n1952), .A1(n1950), .B0(n2646), .B1(n1951), .Y(n1078) );
  CLKINVX1 U2665 ( .A(n2729), .Y(n2490) );
  OAI22XL U2666 ( .A0(n1952), .A1(n2490), .B0(n2641), .B1(n1951), .Y(n1081) );
  CLKINVX1 U2667 ( .A(n2739), .Y(n2420) );
  OAI22XL U2668 ( .A0(n1952), .A1(n2420), .B0(n2621), .B1(n1951), .Y(n1091) );
  AOI211X4 U2669 ( .A0(n2609), .A1(n1955), .B0(n2608), .C0(n1980), .Y(n2007)
         );
  NAND2X1 U2670 ( .A(n2610), .B(n1956), .Y(n2005) );
  CLKBUFX3 U2671 ( .A(n2005), .Y(n1974) );
  OAI22XL U2672 ( .A0(n2007), .A1(n1957), .B0(n2659), .B1(n1974), .Y(n1119) );
  OAI22XL U2673 ( .A0(n2007), .A1(n1958), .B0(n2635), .B1(n1974), .Y(n1132) );
  OAI22XL U2674 ( .A0(n2007), .A1(n1959), .B0(n2621), .B1(n1974), .Y(n1139) );
  OAI22XL U2675 ( .A0(n2007), .A1(n1960), .B0(n2631), .B1(n1974), .Y(n1134) );
  OAI22XL U2676 ( .A0(n2007), .A1(n1961), .B0(n2625), .B1(n1974), .Y(n1137) );
  OAI22XL U2677 ( .A0(n2007), .A1(n1962), .B0(n2657), .B1(n1974), .Y(n1120) );
  OAI22XL U2678 ( .A0(n2007), .A1(n1963), .B0(n2643), .B1(n1974), .Y(n1128) );
  OAI22XL U2679 ( .A0(n2007), .A1(n1964), .B0(n2629), .B1(n1974), .Y(n1135) );
  OAI22XL U2680 ( .A0(n2007), .A1(n1965), .B0(n2623), .B1(n1974), .Y(n1138) );
  OAI22XL U2681 ( .A0(n2007), .A1(n1966), .B0(n2641), .B1(n1974), .Y(n1129) );
  OAI22XL U2682 ( .A0(n2007), .A1(n1967), .B0(n2652), .B1(n1974), .Y(n1123) );
  OAI22XL U2683 ( .A0(n2007), .A1(n1968), .B0(n2645), .B1(n1974), .Y(n1127) );
  OAI22XL U2684 ( .A0(n2007), .A1(n1969), .B0(n2633), .B1(n1974), .Y(n1133) );
  OAI22XL U2685 ( .A0(n2007), .A1(n1970), .B0(n2656), .B1(n1974), .Y(n1121) );
  OAI22XL U2686 ( .A0(n2007), .A1(n1971), .B0(n2646), .B1(n1974), .Y(n1126) );
  OAI22XL U2687 ( .A0(n2007), .A1(n1972), .B0(n2637), .B1(n1974), .Y(n1131) );
  OAI22XL U2688 ( .A0(n2007), .A1(n1973), .B0(n2639), .B1(n1974), .Y(n1130) );
  OAI22XL U2689 ( .A0(n2007), .A1(n1975), .B0(n2627), .B1(n1974), .Y(n1136) );
  AOI211X4 U2690 ( .A0(n1980), .A1(n1979), .B0(n2608), .C0(n1978), .Y(n2014)
         );
  NAND2X1 U2691 ( .A(n2610), .B(n1981), .Y(n2012) );
  CLKBUFX3 U2692 ( .A(n2012), .Y(n1998) );
  OAI22XL U2693 ( .A0(n2014), .A1(n1982), .B0(n2621), .B1(n1998), .Y(n1115) );
  OAI22XL U2694 ( .A0(n2014), .A1(n1983), .B0(n2659), .B1(n1998), .Y(n1095) );
  OAI22XL U2695 ( .A0(n2014), .A1(n1984), .B0(n2657), .B1(n1998), .Y(n1096) );
  OAI22XL U2696 ( .A0(n2014), .A1(n1985), .B0(n2645), .B1(n1998), .Y(n1103) );
  OAI22XL U2697 ( .A0(n2014), .A1(n1986), .B0(n2643), .B1(n1998), .Y(n1104) );
  OAI22XL U2698 ( .A0(n2014), .A1(n1987), .B0(n2656), .B1(n1998), .Y(n1097) );
  OAI22XL U2699 ( .A0(n2014), .A1(n1988), .B0(n2639), .B1(n1998), .Y(n1106) );
  OAI22XL U2700 ( .A0(n2014), .A1(n1989), .B0(n2652), .B1(n1998), .Y(n1099) );
  OAI22XL U2701 ( .A0(n2014), .A1(n1990), .B0(n2646), .B1(n1998), .Y(n1102) );
  OAI22XL U2702 ( .A0(n2014), .A1(n1991), .B0(n2641), .B1(n1998), .Y(n1105) );
  OAI22XL U2703 ( .A0(n2014), .A1(n1992), .B0(n2625), .B1(n1998), .Y(n1113) );
  OAI22XL U2704 ( .A0(n2014), .A1(n1389), .B0(n2637), .B1(n1998), .Y(n1107) );
  OAI22XL U2705 ( .A0(n2014), .A1(n1993), .B0(n2635), .B1(n1998), .Y(n1108) );
  OAI22XL U2706 ( .A0(n2014), .A1(n1994), .B0(n2633), .B1(n1998), .Y(n1109) );
  OAI22XL U2707 ( .A0(n2014), .A1(n1995), .B0(n2631), .B1(n1998), .Y(n1110) );
  OAI22XL U2708 ( .A0(n2014), .A1(n1996), .B0(n2623), .B1(n1998), .Y(n1114) );
  OAI22XL U2709 ( .A0(n2014), .A1(n1997), .B0(n2629), .B1(n1998), .Y(n1111) );
  OAI22XL U2710 ( .A0(n2014), .A1(n1999), .B0(n2627), .B1(n1998), .Y(n1112) );
  OAI22XL U2711 ( .A0(n2007), .A1(n2000), .B0(n2654), .B1(n2005), .Y(n1122) );
  OAI22XL U2712 ( .A0(n2007), .A1(n2001), .B0(n2650), .B1(n2005), .Y(n1124) );
  OAI22XL U2713 ( .A0(n2007), .A1(n2002), .B0(n2662), .B1(n2005), .Y(n1118) );
  OAI22XL U2714 ( .A0(n2007), .A1(n2003), .B0(n2648), .B1(n2005), .Y(n1125) );
  OAI22XL U2715 ( .A0(n2007), .A1(n2004), .B0(n2619), .B1(n2005), .Y(n1116) );
  OAI22XL U2716 ( .A0(n2007), .A1(n2006), .B0(n1346), .B1(n2005), .Y(n1117) );
  OAI22XL U2717 ( .A0(n2014), .A1(n2008), .B0(n2648), .B1(n2012), .Y(n1101) );
  OAI22XL U2718 ( .A0(n2014), .A1(n2009), .B0(n2662), .B1(n2012), .Y(n1094) );
  OAI22XL U2719 ( .A0(n2014), .A1(n2010), .B0(n1346), .B1(n2012), .Y(n1093) );
  OAI22XL U2720 ( .A0(n2014), .A1(n2011), .B0(n2654), .B1(n2012), .Y(n1098) );
  OAI22XL U2721 ( .A0(n2014), .A1(n1361), .B0(n2619), .B1(n2012), .Y(n1092) );
  OAI22XL U2722 ( .A0(n2014), .A1(n2013), .B0(n2650), .B1(n2012), .Y(n1100) );
  NOR2XL U2723 ( .A(n2020), .B(n2673), .Y(n2016) );
  NOR2XL U2724 ( .A(Cost[0]), .B(n2016), .Y(n2015) );
  INVXL U2725 ( .A(n2202), .Y(n2018) );
  OAI21XL U2726 ( .A0(W[2]), .A1(W[0]), .B0(n2203), .Y(n2017) );
  AOI2BB2X1 U2727 ( .B0(cost_temp[1]), .B1(n2019), .A0N(cost_temp[1]), .A1N(
        n2019), .Y(n2021) );
  NOR2BX1 U2728 ( .AN(n2027), .B(n2026), .Y(n2031) );
  INVXL U2729 ( .A(n2028), .Y(n2029) );
  NAND3BX1 U2730 ( .AN(n2035), .B(n2034), .C(n2033), .Y(n2036) );
  OAI21XL U2731 ( .A0(n2071), .A1(n2081), .B0(n2153), .Y(n2039) );
  OAI22XL U2732 ( .A0(n2124), .A1(n2090), .B0(n2301), .B1(n2086), .Y(n2040) );
  OAI221XL U2733 ( .A0(n2121), .A1(n2130), .B0(n2153), .B1(n2082), .C0(n2043), 
        .Y(n2042) );
  OAI221XL U2734 ( .A0(N438), .A1(\list[0][0] ), .B0(n2399), .B1(\list[1][0] ), 
        .C0(n2044), .Y(n2041) );
  INVX1 U2735 ( .A(n2372), .Y(n2160) );
  OAI221XL U2736 ( .A0(n2121), .A1(n2162), .B0(n2153), .B1(n2160), .C0(n2043), 
        .Y(n2046) );
  OAI221XL U2737 ( .A0(N438), .A1(\list[0][2] ), .B0(n2399), .B1(\list[1][2] ), 
        .C0(n2044), .Y(n2045) );
  OAI21XL U2738 ( .A0(n2048), .A1(min_index[0]), .B0(n2172), .Y(n2049) );
  OAI22XL U2739 ( .A0(n2178), .A1(n2090), .B0(n2177), .B1(n2086), .Y(n2050) );
  OAI221XL U2740 ( .A0(n2173), .A1(n2162), .B0(n2172), .B1(n2160), .C0(n2053), 
        .Y(n2052) );
  NAND3XL U2741 ( .A(\list[0][2] ), .B(n2177), .C(n2075), .Y(n2051) );
  INVXL U2742 ( .A(n2403), .Y(n2061) );
  OAI221XL U2743 ( .A0(n2173), .A1(n2129), .B0(n2172), .B1(n2061), .C0(n2053), 
        .Y(n2055) );
  NAND3XL U2744 ( .A(\list[0][1] ), .B(n2177), .C(n2075), .Y(n2054) );
  OAI22XL U2745 ( .A0(n2152), .A1(n2086), .B0(n2090), .B1(n2151), .Y(n2059) );
  OAI221XL U2746 ( .A0(n2149), .A1(n2129), .B0(n2148), .B1(n2061), .C0(n2065), 
        .Y(n2064) );
  OAI22XL U2747 ( .A0(N438), .A1(n2400), .B0(n2629), .B1(n2365), .Y(n2062) );
  NAND3XL U2748 ( .A(n2075), .B(N310), .C(n2062), .Y(n2063) );
  OAI221XL U2749 ( .A0(n2149), .A1(n2130), .B0(n2148), .B1(n2082), .C0(n2065), 
        .Y(n2068) );
  OAI22XL U2750 ( .A0(N438), .A1(n2390), .B0(n2627), .B1(n2365), .Y(n2066) );
  NAND3XL U2751 ( .A(n2075), .B(N310), .C(n2066), .Y(n2067) );
  AOI221X1 U2752 ( .A0(min_index[0]), .A1(n2404), .B0(n2071), .B1(n2404), .C0(
        n2070), .Y(n2391) );
  OAI221XL U2753 ( .A0(n2402), .A1(n2162), .B0(n2404), .B1(n2160), .C0(n2391), 
        .Y(n2078) );
  OAI22XL U2754 ( .A0(n2385), .A1(n2086), .B0(n2391), .B1(n2090), .Y(n2072) );
  OAI21XL U2755 ( .A0(n2387), .A1(n2072), .B0(\list[4][2] ), .Y(n2077) );
  INVX1 U2756 ( .A(n2073), .Y(n2398) );
  OAI22XL U2757 ( .A0(n2155), .A1(n2399), .B0(n2631), .B1(n2398), .Y(n2074) );
  AOI221X1 U2758 ( .A0(n2081), .A1(n2373), .B0(n2080), .B1(n2373), .C0(n2079), 
        .Y(n2362) );
  OAI221XL U2759 ( .A0(n2375), .A1(n2130), .B0(n2373), .B1(n2082), .C0(n2362), 
        .Y(n2091) );
  AOI2BB2X1 U2760 ( .B0(n2349), .B1(n2627), .A0N(n2351), .A1N(\list[5][0] ), 
        .Y(n2302) );
  OAI221XL U2761 ( .A0(N438), .A1(n2085), .B0(n2399), .B1(n2302), .C0(n2084), 
        .Y(n2089) );
  INVX1 U2762 ( .A(n2134), .Y(n2363) );
  OAI22XL U2763 ( .A0(n2362), .A1(n2090), .B0(n2363), .B1(n2086), .Y(n2087) );
  OAI21XL U2764 ( .A0(n2387), .A1(n2087), .B0(\list[1][0] ), .Y(n2088) );
  CLKINVX1 U2765 ( .A(n2340), .Y(n2109) );
  NAND2XL U2766 ( .A(cost_temp[6]), .B(n2109), .Y(n2096) );
  OAI21XL U2767 ( .A0(n2405), .A1(\list[0][1] ), .B0(\list[0][0] ), .Y(n2102)
         );
  OAI22XL U2768 ( .A0(n2130), .A1(n2102), .B0(n2129), .B1(n2623), .Y(n2103) );
  AOI222XL U2769 ( .A0(\list[0][2] ), .A1(n2374), .B0(\list[0][2] ), .B1(n2103), .C0(n2374), .C1(n2103), .Y(n2104) );
  OAI21X1 U2770 ( .A0(n2104), .A1(n2133), .B0(n2147), .Y(n2412) );
  INVXL U2771 ( .A(n2314), .Y(n2105) );
  NAND2XL U2772 ( .A(\list[0][0] ), .B(n2317), .Y(n2106) );
  NAND2XL U2773 ( .A(\list[0][2] ), .B(n2317), .Y(n2108) );
  CLKINVX1 U2774 ( .A(\gt_replace_value_num[2][1] ), .Y(n2243) );
  NAND2XL U2775 ( .A(\list[2][1] ), .B(n2317), .Y(n2112) );
  NAND2XL U2776 ( .A(\list[3][2] ), .B(n2317), .Y(n2116) );
  CLKINVX1 U2777 ( .A(\gt_replace_value_num[3][1] ), .Y(n2225) );
  NAND2XL U2778 ( .A(\list[3][1] ), .B(n2317), .Y(n2118) );
  OAI221XL U2779 ( .A0(N438), .A1(\list[0][1] ), .B0(n2399), .B1(\list[1][1] ), 
        .C0(n2364), .Y(n2128) );
  CLKINVX1 U2780 ( .A(n2406), .Y(n2344) );
  OAI22XL U2781 ( .A0(n2121), .A1(n2405), .B0(n2153), .B1(n2403), .Y(n2122) );
  OA21XL U2782 ( .A0(n2123), .A1(n2122), .B0(n2392), .Y(n2126) );
  OAI21XL U2783 ( .A0(n2301), .A1(n2389), .B0(n2176), .Y(n2125) );
  AOI222XL U2784 ( .A0(\list[5][1] ), .A1(n2126), .B0(\list[5][1] ), .B1(n2125), .C0(n2126), .C1(n2124), .Y(n2127) );
  CLKINVX1 U2785 ( .A(\gt_replace_value_num[1][2] ), .Y(n2246) );
  OAI21XL U2786 ( .A0(n2405), .A1(\list[1][1] ), .B0(\list[1][0] ), .Y(n2131)
         );
  OAI22XL U2787 ( .A0(n2131), .A1(n2130), .B0(n2129), .B1(n2629), .Y(n2132) );
  AOI222XL U2788 ( .A0(\list[1][2] ), .A1(n2374), .B0(\list[1][2] ), .B1(n2132), .C0(n2374), .C1(n2132), .Y(n2135) );
  OAI31X1 U2789 ( .A0(n2135), .A1(n2134), .A2(n2133), .B0(n2321), .Y(n2413) );
  NAND2XL U2790 ( .A(\list[1][2] ), .B(n2317), .Y(n2136) );
  CLKINVX1 U2791 ( .A(\gt_replace_value_num[1][0] ), .Y(n2266) );
  NAND2XL U2792 ( .A(\list[1][0] ), .B(n2317), .Y(n2137) );
  NAND2XL U2793 ( .A(\list[5][1] ), .B(n2317), .Y(n2139) );
  CLKINVX1 U2794 ( .A(\gt_replace_value_num[5][2] ), .Y(n2276) );
  NAND2XL U2795 ( .A(\list[5][2] ), .B(n2317), .Y(n2140) );
  CLKINVX1 U2796 ( .A(\gt_replace_value_num[5][0] ), .Y(n2261) );
  NAND2XL U2797 ( .A(\list[5][0] ), .B(n2317), .Y(n2141) );
  NAND2XL U2798 ( .A(\list[4][0] ), .B(n2317), .Y(n2143) );
  CLKINVX1 U2799 ( .A(\gt_replace_value_num[4][1] ), .Y(n2255) );
  NAND2XL U2800 ( .A(\list[4][1] ), .B(n2317), .Y(n2145) );
  OAI22XL U2801 ( .A0(n2149), .A1(n2374), .B0(n2148), .B1(n2372), .Y(n2150) );
  AOI2BB2X1 U2802 ( .B0(n2151), .B1(n2150), .A0N(n2151), .A1N(n2643), .Y(n2159) );
  OAI21XL U2803 ( .A0(n2152), .A1(n2389), .B0(n2176), .Y(n2157) );
  NAND2XL U2804 ( .A(N310), .B(n2399), .Y(n2154) );
  OAI22XL U2805 ( .A0(n2155), .A1(n2154), .B0(n2631), .B1(n2153), .Y(n2156) );
  AOI22XL U2806 ( .A0(\list[3][2] ), .A1(n2157), .B0(n2364), .B1(n2156), .Y(
        n2158) );
  OAI22XL U2807 ( .A0(n2163), .A1(n2162), .B0(n2161), .B1(n2160), .Y(n2171) );
  NOR2XL U2808 ( .A(n2164), .B(n2389), .Y(n2167) );
  OAI222XL U2809 ( .A0(n2351), .A1(\list[4][2] ), .B0(n2346), .B1(\list[0][2] ), .C0(n2165), .C1(\list[2][2] ), .Y(n2377) );
  OAI222XL U2810 ( .A0(n2377), .A1(n2399), .B0(n2398), .B1(n2643), .C0(n2631), 
        .C1(n2404), .Y(n2166) );
  AOI22XL U2811 ( .A0(\list[2][2] ), .A1(n2168), .B0(n2167), .B1(n2166), .Y(
        n2169) );
  NAND2XL U2812 ( .A(\list[0][0] ), .B(n2364), .Y(n2182) );
  OAI22XL U2813 ( .A0(n2173), .A1(n2394), .B0(n2172), .B1(n2393), .Y(n2174) );
  OA21XL U2814 ( .A0(n2175), .A1(n2174), .B0(n2392), .Y(n2180) );
  OAI21XL U2815 ( .A0(n2177), .A1(n2389), .B0(n2176), .Y(n2179) );
  AOI222XL U2816 ( .A0(\list[6][0] ), .A1(n2180), .B0(\list[6][0] ), .B1(n2179), .C0(n2180), .C1(n2178), .Y(n2181) );
  OAI22XL U2817 ( .A0(n2204), .A1(n2639), .B0(n2662), .B1(n2203), .Y(n2184) );
  OAI22XL U2818 ( .A0(n2204), .A1(n2633), .B0(n2656), .B1(n2203), .Y(n2186) );
  BUFX12 U2819 ( .A(n2190), .Y(J[0]) );
  NAND2X1 U2820 ( .A(cost_temp[7]), .B(\intadd_0/n1 ), .Y(n2192) );
  OAI22XL U2821 ( .A0(n2204), .A1(n2641), .B0(n1346), .B1(n2203), .Y(n2193) );
  OAI22XL U2822 ( .A0(n2204), .A1(n2635), .B0(n2657), .B1(n2203), .Y(n2195) );
  INVX12 U2823 ( .A(n2199), .Y(J[1]) );
  OAI22XL U2824 ( .A0(n2204), .A1(n2643), .B0(n2619), .B1(n2203), .Y(n2200) );
  OAI22XL U2825 ( .A0(n2204), .A1(n2637), .B0(n2659), .B1(n2203), .Y(n2205) );
  INVX12 U2826 ( .A(n2210), .Y(J[2]) );
  OAI21X1 U2827 ( .A0(\gt_replace_value_num[4][1] ), .A1(n2225), .B0(
        \gt_replace_value_num[4][0] ), .Y(n2215) );
  OAI22X1 U2828 ( .A0(\gt_replace_value_num[3][0] ), .A1(n2215), .B0(
        \gt_replace_value_num[3][1] ), .B1(n2255), .Y(n2216) );
  NOR2X1 U2829 ( .A(n2216), .B(\gt_replace_value_num[4][2] ), .Y(n2217) );
  AOI222X4 U2830 ( .A0(\gt_replace_value_num[4][3] ), .A1(n2219), .B0(
        \gt_replace_value_num[4][3] ), .B1(n2218), .C0(n2219), .C1(n2218), .Y(
        n2238) );
  NAND2X1 U2831 ( .A(\gt_replace_value_num[5][3] ), .B(
        \gt_replace_value_num[6][3] ), .Y(n2237) );
  AOI2BB2X1 U2832 ( .B0(n2238), .B1(\gt_replace_value_num[4][2] ), .A0N(n2238), 
        .A1N(n2220), .Y(n2234) );
  OAI211X1 U2833 ( .A0(\gt_replace_value_num[6][1] ), .A1(n2254), .B0(
        \gt_replace_value_num[6][0] ), .C0(n2261), .Y(n2221) );
  OAI21X1 U2834 ( .A0(\gt_replace_value_num[5][1] ), .A1(n2316), .B0(n2221), 
        .Y(n2222) );
  AOI222X1 U2835 ( .A0(\gt_replace_value_num[6][2] ), .A1(n2222), .B0(
        \gt_replace_value_num[6][2] ), .B1(n2276), .C0(n2222), .C1(n2276), .Y(
        n2224) );
  AOI222X4 U2836 ( .A0(\gt_replace_value_num[5][3] ), .A1(n2224), .B0(
        \gt_replace_value_num[5][3] ), .B1(n2223), .C0(n2224), .C1(n2223), .Y(
        n2253) );
  AOI2BB2X1 U2837 ( .B0(n2253), .B1(\gt_replace_value_num[5][1] ), .A0N(n2253), 
        .A1N(n2316), .Y(n2231) );
  INVX3 U2838 ( .A(n2238), .Y(n2226) );
  AOI2BB2X1 U2839 ( .B0(n2226), .B1(n2225), .A0N(n2226), .A1N(
        \gt_replace_value_num[4][1] ), .Y(n2230) );
  AOI2BB2X1 U2840 ( .B0(n2226), .B1(\gt_replace_value_num[3][0] ), .A0N(n2226), 
        .A1N(n2262), .Y(n2228) );
  OAI211X1 U2841 ( .A0(\gt_replace_value_num[6][0] ), .A1(n2253), .B0(n2228), 
        .C0(n2227), .Y(n2229) );
  AOI222X1 U2842 ( .A0(n2231), .A1(n2230), .B0(n2231), .B1(n2229), .C0(n2230), 
        .C1(n2229), .Y(n2233) );
  AOI2BB2X1 U2843 ( .B0(n2257), .B1(n2320), .A0N(n2257), .A1N(
        \gt_replace_value_num[5][2] ), .Y(n2232) );
  AOI222X1 U2844 ( .A0(n2234), .A1(n2233), .B0(n2234), .B1(n2232), .C0(n2233), 
        .C1(n2232), .Y(n2236) );
  OAI211X1 U2845 ( .A0(n2236), .A1(n2237), .B0(\gt_replace_value_num[4][3] ), 
        .C0(\gt_replace_value_num[3][3] ), .Y(n2235) );
  OAI2BB1X2 U2846 ( .A0N(n2237), .A1N(n2236), .B0(n2235), .Y(n2256) );
  NOR2X2 U2847 ( .A(n2238), .B(n2256), .Y(n2294) );
  AOI222X1 U2848 ( .A0(\gt_replace_value_num[1][1] ), .A1(n2243), .B0(
        \gt_replace_value_num[1][1] ), .B1(n2239), .C0(n2243), .C1(n2239), .Y(
        n2240) );
  AOI222X1 U2849 ( .A0(\gt_replace_value_num[2][2] ), .A1(n2240), .B0(
        \gt_replace_value_num[2][2] ), .B1(n2246), .C0(n2240), .C1(n2246), .Y(
        n2242) );
  AOI222X4 U2850 ( .A0(\gt_replace_value_num[1][3] ), .A1(n2242), .B0(
        \gt_replace_value_num[1][3] ), .B1(n2241), .C0(n2242), .C1(n2241), .Y(
        n2252) );
  AOI2BB2X1 U2851 ( .B0(n2252), .B1(\gt_replace_value_num[1][1] ), .A0N(n2252), 
        .A1N(n2243), .Y(n2260) );
  AOI222X1 U2852 ( .A0(\gt_replace_value_num[0][1] ), .A1(n2260), .B0(
        \gt_replace_value_num[0][1] ), .B1(n2245), .C0(n2260), .C1(n2245), .Y(
        n2248) );
  AOI2BB2X1 U2853 ( .B0(n2252), .B1(n2246), .A0N(n2252), .A1N(
        \gt_replace_value_num[2][2] ), .Y(n2247) );
  AOI222X1 U2854 ( .A0(n2249), .A1(n2248), .B0(n2249), .B1(n2247), .C0(n2248), 
        .C1(n2247), .Y(n2250) );
  NOR2X1 U2855 ( .A(n2252), .B(n2259), .Y(n2308) );
  CLKINVX1 U2856 ( .A(n2294), .Y(n2274) );
  NAND2X1 U2857 ( .A(n2256), .B(n2253), .Y(n2284) );
  NAND2X1 U2858 ( .A(n2274), .B(n2284), .Y(n2286) );
  OAI22XL U2859 ( .A0(n2255), .A1(n2286), .B0(n2254), .B1(n2284), .Y(n2258) );
  NOR2X2 U2860 ( .A(n2294), .B(n2288), .Y(n2312) );
  AOI222X1 U2861 ( .A0(n2258), .A1(n2312), .B0(\gt_replace_value_num[6][1] ), 
        .B1(n2288), .C0(\gt_replace_value_num[3][1] ), .C1(n2294), .Y(n2273)
         );
  AOI2BB2X1 U2862 ( .B0(n2264), .B1(n2260), .A0N(n2264), .A1N(
        \gt_replace_value_num[0][1] ), .Y(n2272) );
  OAI22XL U2863 ( .A0(n2262), .A1(n2286), .B0(n2261), .B1(n2284), .Y(n2270) );
  OAI22XL U2864 ( .A0(\gt_replace_value_num[6][0] ), .A1(n2275), .B0(
        \gt_replace_value_num[3][0] ), .B1(n2274), .Y(n2268) );
  OAI22XL U2865 ( .A0(n2266), .A1(n2296), .B0(n2265), .B1(n2264), .Y(n2267) );
  OAI21X1 U2866 ( .A0(n2277), .A1(n2270), .B0(n2269), .Y(n2271) );
  OAI22XL U2867 ( .A0(\gt_replace_value_num[6][2] ), .A1(n2275), .B0(
        \gt_replace_value_num[3][2] ), .B1(n2274), .Y(n2280) );
  NOR2X1 U2868 ( .A(n2276), .B(n2284), .Y(n2278) );
  AOI211X1 U2869 ( .A0(n2297), .A1(\gt_replace_value_num[4][2] ), .B0(n2278), 
        .C0(n2277), .Y(n2279) );
  OAI2BB2X1 U2870 ( .B0(n2280), .B1(n2279), .A0N(n2283), .A1N(n2282), .Y(n2281) );
  OAI21X1 U2871 ( .A0(n2283), .A1(n2282), .B0(n2281), .Y(n2293) );
  OAI22XL U2872 ( .A0(n2287), .A1(n2286), .B0(n2285), .B1(n2284), .Y(n2289) );
  AOI222X1 U2873 ( .A0(n2289), .A1(n2312), .B0(\gt_replace_value_num[6][3] ), 
        .B1(n2288), .C0(\gt_replace_value_num[3][3] ), .C1(n2294), .Y(n2292)
         );
  OAI21X1 U2874 ( .A0(n2293), .A1(n2292), .B0(\gt_replace_value_num[0][3] ), 
        .Y(n2290) );
  AOI2BB2X2 U2875 ( .B0(n2293), .B1(n2292), .A0N(n2291), .A1N(n2290), .Y(n2295) );
  NAND2X1 U2876 ( .A(n2295), .B(n2339), .Y(n2310) );
  OAI21XL U2877 ( .A0(n2633), .A1(n2346), .B0(N438), .Y(n2300) );
  NAND2XL U2878 ( .A(N310), .B(n2298), .Y(n2347) );
  OAI22XL U2879 ( .A0(n2621), .A1(n2363), .B0(n2645), .B1(n2347), .Y(n2299) );
  AOI211XL U2880 ( .A0(\list[6][0] ), .A1(n2301), .B0(n2300), .C0(n2299), .Y(
        n2304) );
  OAI22XL U2881 ( .A0(N438), .A1(n2302), .B0(\list[3][0] ), .B1(n2404), .Y(
        n2303) );
  OAI31XL U2882 ( .A0(n2304), .A1(n2303), .A2(n2354), .B0(n2344), .Y(n2306) );
  OAI22XL U2883 ( .A0(n2394), .A1(n2356), .B0(n2355), .B1(n2393), .Y(n2305) );
  AOI211XL U2884 ( .A0(\list[0][0] ), .A1(n2360), .B0(n2306), .C0(n2305), .Y(
        n2307) );
  NAND2XL U2885 ( .A(\list[6][1] ), .B(n2317), .Y(n2315) );
  NAND2XL U2886 ( .A(\list[6][2] ), .B(n2317), .Y(n2318) );
  CLKINVX1 U2887 ( .A(n2322), .Y(n2337) );
  AOI221XL U2888 ( .A0(W[0]), .A1(W[1]), .B0(n2332), .B1(n2331), .C0(n2330), 
        .Y(N819) );
  OAI31XL U2889 ( .A0(MatchCount[2]), .A1(n2336), .A2(n2335), .B0(n2334), .Y(
        N875) );
  AO22X1 U2890 ( .A0(n2343), .A1(Cost[2]), .B0(n2342), .B1(\intadd_0/SUM[0] ), 
        .Y(N802) );
  AO22X1 U2891 ( .A0(n2343), .A1(Cost[3]), .B0(n2342), .B1(\intadd_0/SUM[1] ), 
        .Y(N803) );
  NAND3BX1 U2892 ( .AN(n2345), .B(n2344), .C(n1456), .Y(n1341) );
  OAI22XL U2893 ( .A0(\list[5][1] ), .A1(n2351), .B0(\list[1][1] ), .B1(n2346), 
        .Y(n2368) );
  OAI22XL U2894 ( .A0(n2646), .A1(n2347), .B0(n2623), .B1(n2363), .Y(n2348) );
  AOI211XL U2895 ( .A0(\list[2][1] ), .A1(n2349), .B0(n2399), .C0(n2348), .Y(
        n2350) );
  OAI21XL U2896 ( .A0(n2657), .A1(n2351), .B0(n2350), .Y(n2352) );
  OAI21XL U2897 ( .A0(\list[3][1] ), .A1(n2404), .B0(n2352), .Y(n2353) );
  AOI211XL U2898 ( .A0(n2399), .A1(n2368), .B0(n2354), .C0(n2353), .Y(n2358)
         );
  OAI22XL U2899 ( .A0(n2405), .A1(n2356), .B0(n2355), .B1(n2403), .Y(n2357) );
  OAI22XL U2900 ( .A0(n2362), .A1(n2384), .B0(n2389), .B1(n2363), .Y(n2361) );
  OAI22XL U2901 ( .A0(n2375), .A1(n2405), .B0(n2373), .B1(n2403), .Y(n2370) );
  NAND2XL U2902 ( .A(n2364), .B(n2363), .Y(n2376) );
  OAI22XL U2903 ( .A0(N438), .A1(n2366), .B0(\list[3][1] ), .B1(n2365), .Y(
        n2367) );
  AOI211XL U2904 ( .A0(N438), .A1(n2368), .B0(n2376), .C0(n2367), .Y(n2369) );
  OAI21XL U2905 ( .A0(n2383), .A1(n2629), .B0(n2371), .Y(n1335) );
  OAI22XL U2906 ( .A0(n2375), .A1(n2374), .B0(n2373), .B1(n2372), .Y(n2380) );
  AOI221XL U2907 ( .A0(n2378), .A1(N438), .B0(n2377), .B1(n2399), .C0(n2376), 
        .Y(n2379) );
  OAI21XL U2908 ( .A0(n2383), .A1(n2631), .B0(n2382), .Y(n1334) );
  OAI22XL U2909 ( .A0(n2385), .A1(n2389), .B0(n2391), .B1(n2384), .Y(n2386) );
  OAI22XL U2910 ( .A0(n2390), .A1(n2399), .B0(n2627), .B1(n2398), .Y(n2396) );
  NAND2XL U2911 ( .A(n2392), .B(n2391), .Y(n2401) );
  AOI221XL U2912 ( .A0(n2394), .A1(n2404), .B0(n2393), .B1(n2402), .C0(n2401), 
        .Y(n2395) );
  OAI21XL U2913 ( .A0(n2411), .A1(n2645), .B0(n2397), .Y(n1327) );
  OAI22XL U2914 ( .A0(n2400), .A1(n2399), .B0(n2629), .B1(n2398), .Y(n2408) );
  AOI221XL U2915 ( .A0(n2405), .A1(n2404), .B0(n2403), .B1(n2402), .C0(n2401), 
        .Y(n2407) );
  OAI21XL U2916 ( .A0(n2411), .A1(n2646), .B0(n2410), .Y(n1326) );
  AOI211X4 U2917 ( .A0(n2418), .A1(n2609), .B0(n2608), .C0(n2417), .Y(n2666)
         );
  NAND2BX1 U2918 ( .AN(n2418), .B(n2610), .Y(n2664) );
  CLKBUFX3 U2919 ( .A(n2664), .Y(n2660) );
  OAI22XL U2920 ( .A0(n2666), .A1(n2419), .B0(n2660), .B1(n2619), .Y(n1284) );
  OAI22XL U2921 ( .A0(n2621), .A1(n2536), .B0(n2420), .B1(n2491), .Y(n2422) );
  AO22X1 U2922 ( .A0(n2907), .A1(n2538), .B0(Match_list[120]), .B1(n2537), .Y(
        n2421) );
  OAI22XL U2923 ( .A0(n2623), .A1(n2536), .B0(n2491), .B1(n2427), .Y(n2429) );
  AO22X1 U2924 ( .A0(n2538), .A1(n2906), .B0(n2537), .B1(Match_list[121]), .Y(
        n2428) );
  OAI22XL U2925 ( .A0(n2625), .A1(n2460), .B0(n2491), .B1(n2435), .Y(n2437) );
  AO22X1 U2926 ( .A0(n2538), .A1(n2905), .B0(n2537), .B1(Match_list[122]), .Y(
        n2436) );
  OAI22XL U2927 ( .A0(n2627), .A1(n2460), .B0(n2491), .B1(n2443), .Y(n2445) );
  AO22X1 U2928 ( .A0(n2538), .A1(n2904), .B0(n2537), .B1(Match_list[123]), .Y(
        n2444) );
  OAI22XL U2929 ( .A0(n2629), .A1(n2460), .B0(n2491), .B1(n2451), .Y(n2453) );
  AO22X1 U2930 ( .A0(n2538), .A1(n2903), .B0(n2537), .B1(Match_list[124]), .Y(
        n2452) );
  OAI22XL U2931 ( .A0(n2633), .A1(n2460), .B0(n2491), .B1(n2459), .Y(n2462) );
  OAI22XL U2932 ( .A0(n2635), .A1(n2536), .B0(n2491), .B1(n2467), .Y(n2469) );
  OAI22XL U2933 ( .A0(n2637), .A1(n2536), .B0(n2491), .B1(n2474), .Y(n2476) );
  OAI22XL U2934 ( .A0(n2639), .A1(n2536), .B0(n2491), .B1(n2483), .Y(n2485) );
  OAI22XL U2935 ( .A0(n2641), .A1(n2536), .B0(n2491), .B1(n2490), .Y(n2497) );
  AO22X1 U2936 ( .A0(n2538), .A1(n2889), .B0(n2537), .B1(Match_list[138]), .Y(
        n2505) );
  AO22X1 U2937 ( .A0(n2538), .A1(n2888), .B0(n2537), .B1(Match_list[139]), .Y(
        n2512) );
  AO22X1 U2938 ( .A0(n2538), .A1(n2887), .B0(n2537), .B1(Match_list[140]), .Y(
        n2519) );
  AO22X1 U2939 ( .A0(n2538), .A1(n2886), .B0(n2537), .B1(Match_list[141]), .Y(
        n2527) );
  AO22X1 U2940 ( .A0(n2538), .A1(n2885), .B0(n2537), .B1(Match_list[142]), .Y(
        n2539) );
  AOI211X4 U2941 ( .A0(n2609), .A1(n2549), .B0(n2608), .C0(n2548), .Y(n2576)
         );
  NAND2BX1 U2942 ( .AN(n2549), .B(n2610), .Y(n2574) );
  CLKBUFX3 U2943 ( .A(n2574), .Y(n2570) );
  OAI22XL U2944 ( .A0(n2576), .A1(n2550), .B0(n2621), .B1(n2570), .Y(n1235) );
  OAI22XL U2945 ( .A0(n2576), .A1(n2551), .B0(n2623), .B1(n2570), .Y(n1234) );
  OAI22XL U2946 ( .A0(n2576), .A1(n2552), .B0(n2625), .B1(n2570), .Y(n1233) );
  OAI22XL U2947 ( .A0(n2576), .A1(n2553), .B0(n2627), .B1(n2570), .Y(n1232) );
  OAI22XL U2948 ( .A0(n2576), .A1(n2554), .B0(n2629), .B1(n2570), .Y(n1231) );
  OAI22XL U2949 ( .A0(n2576), .A1(n2555), .B0(n2631), .B1(n2570), .Y(n1230) );
  OAI22XL U2950 ( .A0(n2576), .A1(n2556), .B0(n2633), .B1(n2570), .Y(n1229) );
  OAI22XL U2951 ( .A0(n2576), .A1(n2557), .B0(n2635), .B1(n2570), .Y(n1228) );
  OAI22XL U2952 ( .A0(n2576), .A1(n2558), .B0(n2637), .B1(n2570), .Y(n1227) );
  OAI22XL U2953 ( .A0(n2576), .A1(n2559), .B0(n2639), .B1(n2570), .Y(n1226) );
  OAI22XL U2954 ( .A0(n2576), .A1(n2560), .B0(n2641), .B1(n2570), .Y(n1225) );
  OAI22XL U2955 ( .A0(n2576), .A1(n2561), .B0(n2643), .B1(n2570), .Y(n1224) );
  OAI22XL U2956 ( .A0(n2576), .A1(n2562), .B0(n2645), .B1(n2570), .Y(n1223) );
  OAI22XL U2957 ( .A0(n2576), .A1(n2563), .B0(n2646), .B1(n2570), .Y(n1222) );
  OAI22XL U2958 ( .A0(n2576), .A1(n2564), .B0(n2648), .B1(n2574), .Y(n1221) );
  OAI22XL U2959 ( .A0(n2576), .A1(n2565), .B0(n2650), .B1(n2574), .Y(n1220) );
  OAI22XL U2960 ( .A0(n2576), .A1(n2566), .B0(n2652), .B1(n2570), .Y(n1219) );
  OAI22XL U2961 ( .A0(n2576), .A1(n2567), .B0(n2654), .B1(n2574), .Y(n1218) );
  OAI22XL U2962 ( .A0(n2576), .A1(n2568), .B0(n2656), .B1(n2570), .Y(n1217) );
  OAI22XL U2963 ( .A0(n2576), .A1(n2569), .B0(n2657), .B1(n2570), .Y(n1216) );
  OAI22XL U2964 ( .A0(n2576), .A1(n2571), .B0(n2659), .B1(n2570), .Y(n1215) );
  OAI22XL U2965 ( .A0(n2576), .A1(n2572), .B0(n2662), .B1(n2574), .Y(n1214) );
  OAI22XL U2966 ( .A0(n2576), .A1(n2573), .B0(n1346), .B1(n2574), .Y(n1213) );
  OAI22XL U2967 ( .A0(n2576), .A1(n2575), .B0(n2619), .B1(n2574), .Y(n1212) );
  AOI211X4 U2968 ( .A0(n2609), .A1(n2577), .B0(n2608), .C0(n2606), .Y(n2604)
         );
  NAND2BX1 U2969 ( .AN(n2577), .B(n2610), .Y(n2602) );
  CLKBUFX3 U2970 ( .A(n2602), .Y(n2598) );
  OAI22XL U2971 ( .A0(n2604), .A1(n2578), .B0(n2621), .B1(n2598), .Y(n1187) );
  OAI22XL U2972 ( .A0(n2604), .A1(n2579), .B0(n2623), .B1(n2598), .Y(n1186) );
  OAI22XL U2973 ( .A0(n2604), .A1(n2580), .B0(n2625), .B1(n2598), .Y(n1185) );
  OAI22XL U2974 ( .A0(n2604), .A1(n2581), .B0(n2627), .B1(n2598), .Y(n1184) );
  OAI22XL U2975 ( .A0(n2604), .A1(n2582), .B0(n2629), .B1(n2598), .Y(n1183) );
  OAI22XL U2976 ( .A0(n2604), .A1(n2583), .B0(n2631), .B1(n2598), .Y(n1182) );
  OAI22XL U2977 ( .A0(n2604), .A1(n2584), .B0(n2633), .B1(n2598), .Y(n1181) );
  OAI22XL U2978 ( .A0(n2604), .A1(n2585), .B0(n2635), .B1(n2598), .Y(n1180) );
  OAI22XL U2979 ( .A0(n2604), .A1(n2586), .B0(n2637), .B1(n2598), .Y(n1179) );
  OAI22XL U2980 ( .A0(n2604), .A1(n2587), .B0(n2639), .B1(n2598), .Y(n1178) );
  OAI22XL U2981 ( .A0(n2604), .A1(n2588), .B0(n2641), .B1(n2598), .Y(n1177) );
  OAI22XL U2982 ( .A0(n2604), .A1(n2589), .B0(n2643), .B1(n2598), .Y(n1176) );
  OAI22XL U2983 ( .A0(n2604), .A1(n2590), .B0(n2645), .B1(n2598), .Y(n1175) );
  OAI22XL U2984 ( .A0(n2604), .A1(n2591), .B0(n2646), .B1(n2598), .Y(n1174) );
  OAI22XL U2985 ( .A0(n2604), .A1(n2592), .B0(n2648), .B1(n2602), .Y(n1173) );
  OAI22XL U2986 ( .A0(n2604), .A1(n2593), .B0(n2650), .B1(n2602), .Y(n1172) );
  OAI22XL U2987 ( .A0(n2604), .A1(n2594), .B0(n2652), .B1(n2598), .Y(n1171) );
  OAI22XL U2988 ( .A0(n2604), .A1(n2595), .B0(n2654), .B1(n2602), .Y(n1170) );
  OAI22XL U2989 ( .A0(n2604), .A1(n2596), .B0(n2656), .B1(n2598), .Y(n1169) );
  OAI22XL U2990 ( .A0(n2604), .A1(n2597), .B0(n2657), .B1(n2598), .Y(n1168) );
  OAI22XL U2991 ( .A0(n2604), .A1(n2599), .B0(n2659), .B1(n2598), .Y(n1167) );
  OAI22XL U2992 ( .A0(n2604), .A1(n2600), .B0(n2662), .B1(n2602), .Y(n1166) );
  OAI22XL U2993 ( .A0(n2604), .A1(n2601), .B0(n1346), .B1(n2602), .Y(n1165) );
  OAI22XL U2994 ( .A0(n2604), .A1(n2603), .B0(n2619), .B1(n2602), .Y(n1164) );
  NOR2BX1 U2995 ( .AN(n2606), .B(n2605), .Y(n2607) );
  AOI211X4 U2996 ( .A0(n2609), .A1(n2611), .B0(n2608), .C0(n2607), .Y(n2620)
         );
  NAND2BX1 U2997 ( .AN(n2611), .B(n2610), .Y(n2618) );
  CLKBUFX3 U2998 ( .A(n2618), .Y(n2617) );
  OAI22XL U2999 ( .A0(n2620), .A1(n1385), .B0(n2621), .B1(n2617), .Y(n1163) );
  OAI22XL U3000 ( .A0(n2620), .A1(n1383), .B0(n2623), .B1(n2617), .Y(n1162) );
  OAI22XL U3001 ( .A0(n2620), .A1(n1381), .B0(n2625), .B1(n2617), .Y(n1161) );
  OAI22XL U3002 ( .A0(n2620), .A1(n1379), .B0(n2627), .B1(n2617), .Y(n1160) );
  OAI22XL U3003 ( .A0(n2620), .A1(n1377), .B0(n2629), .B1(n2617), .Y(n1159) );
  OAI22XL U3004 ( .A0(n2620), .A1(n1375), .B0(n2631), .B1(n2617), .Y(n1158) );
  OAI22XL U3005 ( .A0(n2620), .A1(n2612), .B0(n2633), .B1(n2617), .Y(n1157) );
  OAI22XL U3006 ( .A0(n2620), .A1(n2613), .B0(n2635), .B1(n2617), .Y(n1156) );
  OAI22XL U3007 ( .A0(n2620), .A1(n2614), .B0(n2637), .B1(n2617), .Y(n1155) );
  OAI22XL U3008 ( .A0(n2620), .A1(n2615), .B0(n2639), .B1(n2617), .Y(n1154) );
  OAI22XL U3009 ( .A0(n2620), .A1(n2616), .B0(n2641), .B1(n2617), .Y(n1153) );
  OAI22XL U3010 ( .A0(n2620), .A1(n1359), .B0(n2643), .B1(n2617), .Y(n1152) );
  OAI22XL U3011 ( .A0(n2620), .A1(n1373), .B0(n2645), .B1(n2617), .Y(n1151) );
  OAI22XL U3012 ( .A0(n2620), .A1(n1371), .B0(n2646), .B1(n2617), .Y(n1150) );
  OAI22XL U3013 ( .A0(n2620), .A1(n1357), .B0(n2648), .B1(n2618), .Y(n1149) );
  OAI22XL U3014 ( .A0(n2620), .A1(n1355), .B0(n2650), .B1(n2618), .Y(n1148) );
  OAI22XL U3015 ( .A0(n2620), .A1(n1369), .B0(n2652), .B1(n2617), .Y(n1147) );
  OAI22XL U3016 ( .A0(n2620), .A1(n1353), .B0(n2654), .B1(n2618), .Y(n1146) );
  OAI22XL U3017 ( .A0(n2620), .A1(n1367), .B0(n2656), .B1(n2617), .Y(n1145) );
  OAI22XL U3018 ( .A0(n2620), .A1(n1365), .B0(n2657), .B1(n2617), .Y(n1144) );
  OAI22XL U3019 ( .A0(n2620), .A1(n1363), .B0(n2659), .B1(n2617), .Y(n1143) );
  OAI22XL U3020 ( .A0(n2620), .A1(n1351), .B0(n2662), .B1(n2618), .Y(n1142) );
  OAI22XL U3021 ( .A0(n2620), .A1(n1349), .B0(n1346), .B1(n2618), .Y(n1141) );
  OAI22XL U3022 ( .A0(n2620), .A1(n1347), .B0(n2619), .B1(n2618), .Y(n1140) );
  OAI22XL U3023 ( .A0(n2666), .A1(n2622), .B0(n2660), .B1(n2621), .Y(n1067) );
  OAI22XL U3024 ( .A0(n2666), .A1(n2624), .B0(n2660), .B1(n2623), .Y(n1066) );
  OAI22XL U3025 ( .A0(n2666), .A1(n2626), .B0(n2660), .B1(n2625), .Y(n1065) );
  OAI22XL U3026 ( .A0(n2666), .A1(n2628), .B0(n2660), .B1(n2627), .Y(n1064) );
  OAI22XL U3027 ( .A0(n2666), .A1(n2630), .B0(n2660), .B1(n2629), .Y(n1063) );
  OAI22XL U3028 ( .A0(n2666), .A1(n2632), .B0(n2660), .B1(n2631), .Y(n1062) );
  OAI22XL U3029 ( .A0(n2666), .A1(n2634), .B0(n2660), .B1(n2633), .Y(n1061) );
  OAI22XL U3030 ( .A0(n2666), .A1(n2636), .B0(n2660), .B1(n2635), .Y(n1060) );
  OAI22XL U3031 ( .A0(n2666), .A1(n2638), .B0(n2660), .B1(n2637), .Y(n1059) );
  OAI22XL U3032 ( .A0(n2666), .A1(n2640), .B0(n2660), .B1(n2639), .Y(n1058) );
  OAI22XL U3033 ( .A0(n2666), .A1(n2642), .B0(n2660), .B1(n2641), .Y(n1057) );
  OAI22XL U3034 ( .A0(n2666), .A1(n2644), .B0(n2660), .B1(n2643), .Y(n1056) );
  OAI22XL U3035 ( .A0(n2666), .A1(n1387), .B0(n2660), .B1(n2645), .Y(n1055) );
  OAI22XL U3036 ( .A0(n2666), .A1(n2647), .B0(n2660), .B1(n2646), .Y(n1054) );
  OAI22XL U3037 ( .A0(n2666), .A1(n2649), .B0(n2660), .B1(n2648), .Y(n1053) );
  OAI22XL U3038 ( .A0(n2666), .A1(n2651), .B0(n2664), .B1(n2650), .Y(n1052) );
  OAI22XL U3039 ( .A0(n2666), .A1(n2653), .B0(n2660), .B1(n2652), .Y(n1051) );
  OAI22XL U3040 ( .A0(n2666), .A1(n2655), .B0(n2664), .B1(n2654), .Y(n1050) );
  OAI22XL U3041 ( .A0(n2666), .A1(n2674), .B0(n2664), .B1(n2656), .Y(n1049) );
  OAI22XL U3042 ( .A0(n2666), .A1(n2658), .B0(n2660), .B1(n2657), .Y(n1048) );
  OAI22XL U3043 ( .A0(n2666), .A1(n2661), .B0(n2660), .B1(n2659), .Y(n1047) );
  OAI22XL U3044 ( .A0(n2666), .A1(n2663), .B0(n2664), .B1(n2662), .Y(n1046) );
  OAI22XL U3045 ( .A0(n2666), .A1(n2665), .B0(n2664), .B1(n1346), .Y(n1045) );
  ADDFXL U3046 ( .A(Cost[6]), .B(cost_temp[6]), .CI(\intadd_0/n2 ), .CO(
        \intadd_0/n1 ), .S(\intadd_0/SUM[4] ) );
endmodule

