
%Grafiek Klokbuffer,

clear all;

t = [0	3.00E-10	6.00E-10	1.20E-09	2.40E-09	4.80E-09	9.60E-09	1.37E-08	2.03E-08	3.35E-08	4.30E-08	5.00E-08	5.07E-08	5.21E-08	5.48E-08	6.03E-08	6.54E-08	6.98E-08	7.44E-08	7.96E-08	8.46E-08	8.95E-08	9.41E-08	9.90E-08	1.04E-07	1.09E-07	1.14E-07	1.19E-07	1.30E-07	1.44E-07	1.68E-07	1.98E-07	2.00E-07	2.00E-07	2.00E-07	2.01E-07	2.01E-07	2.03E-07	2.06E-07	2.09E-07	2.12E-07	2.14E-07	2.17E-07	2.23E-07	2.33E-07	2.42E-07	2.50E-07	2.51E-07	2.52E-07	2.54E-07	2.58E-07	2.66E-07	2.82E-07	3.06E-07	3.36E-07	3.66E-07	3.96E-07	4.00E-07	4.00E-07	4.01E-07	4.02E-07	4.05E-07	4.09E-07	4.13E-07	4.19E-07	4.30E-07	4.36E-07	4.38E-07	4.38E-07	4.38E-07	4.39E-07	4.41E-07	4.44E-07	4.48E-07	4.48E-07	4.49E-07	4.49E-07	4.50E-07	4.50E-07	4.51E-07	4.51E-07	4.53E-07	4.55E-07	4.61E-07	4.66E-07	4.71E-07	4.75E-07	4.80E-07	4.85E-07	4.89E-07	4.92E-07	4.95E-07	5.01E-07	5.06E-07	5.12E-07	5.19E-07	5.27E-07	5.41E-07	5.56E-07	5.86E-07	6.00E-07	6.00E-07	6.01E-07	6.03E-07	6.05E-07	6.08E-07	6.11E-07	6.13E-07	6.16E-07	6.21E-07	6.29E-07	6.42E-07	6.50E-07	6.50E-07	6.51E-07	6.53E-07	6.55E-07	6.61E-07	6.73E-07	6.95E-07	7.25E-07	7.55E-07	7.85E-07	8.00E-07	8.01E-07	8.03E-07	8.07E-07	8.14E-07	8.19E-07	8.25E-07	8.32E-07	8.39E-07	8.44E-07	8.50E-07	8.51E-07	8.52E-07	8.55E-07	8.60E-07	8.65E-07	8.70E-07	8.75E-07	8.80E-07	8.85E-07	8.89E-07	8.94E-07	8.98E-07	9.02E-07	9.05E-07	9.10E-07	9.15E-07	9.24E-07	9.36E-07	9.57E-07	9.87E-07	1.00E-06	1.00E-06	1.00E-06	1.00E-06	1.01E-06	1.01E-06	1.01E-06	1.01E-06	1.02E-06	1.02E-06	1.03E-06	1.04E-06	1.05E-06	1.05E-06	1.05E-06	1.05E-06	1.06E-06	1.06E-06	1.08E-06	1.10E-06	1.13E-06	1.16E-06	1.19E-06	1.20E-06	1.20E-06	1.20E-06	1.20E-06	1.21E-06	1.21E-06	1.22E-06	1.23E-06	1.24E-06	1.24E-06	1.25E-06	1.25E-06	1.25E-06	1.25E-06	1.25E-06	1.25E-06	1.26E-06	1.26E-06	1.27E-06	1.27E-06	1.27E-06	1.28E-06	1.28E-06	1.29E-06	1.29E-06	1.30E-06	1.30E-06	1.31E-06	1.31E-06	1.32E-06	1.32E-06	1.34E-06	1.36E-06	1.39E-06	1.40E-06	1.40E-06	1.40E-06	1.40E-06	1.40E-06	1.41E-06	1.41E-06	1.41E-06	1.42E-06	1.42E-06	1.43E-06	1.44E-06	1.45E-06	1.45E-06	1.45E-06	1.45E-06	1.46E-06	1.46E-06	1.47E-06	1.50E-06 1.50E-06
];             
Vin = [0	0.029999999	0.059999999	0.119995803	0.239987403	0.479970604	0.959936976	1	2	3	4	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	4	4	4	4	3	3	2	0.784614027	0	0	0	0	0	0	0	0	0	0	0	3.00E-10	0.03461726	0.10385178	0.242320821	0.519258916	0.942302883	1	2	3	4	4	4	4	4	4	4	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	4	4	4	4	3	3	2	0.818226576	0	0	0	0	0	0	0	0	0	0	0	3.00E-10	0.093206763	0.27962029	0.652447343	1	2	3	3	4	4	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	4	4	4	4	3	3	2	0.86402905	0	0	0	0	0	0	0	0	0	0	0	3.00E-10	0.054938719	0.164816156	0.384571046	0.824080765	1	2	3	4	4	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	4	4	4	3	3	2	0.863051176	0	0	0	0	0	0	0	0	0
];           
Vout = [5	5.000043869	5.000086784	5.000171661	5.000331879	5.000622272	4.989483356	4.943547726	4.760263443	3.729300737	2.433887959	1.29867816	1.195852637	1.006645322	0.699603558	0.316159189	0.145887256	0.074535586	0.036053181	0.015903777	0.007264448	0.003393239	0.001632334	0.000691953	0.000268438	0.000113708	4.92E-05	1.70E-05	-4.48E-06	-6.20E-06	-2.31E-06	8.24E-07	5.33E-07	-1.20E-05	-3.63E-05	-8.19E-05	-0.000164827	-0.000311855	-0.000536012	-0.000694276	0.000566057	0.006131055	0.020354554	0.080330573	0.36680299	0.881241024	1.583601713	1.636328936	1.741263032	1.947980762	2.34807682	3.075602531	4.134650707	4.830924988	4.993074417	5.020751953	5.000506878	5.000228882	5.000273705	5.00036335	5.000535011	5.000836372	4.991605759	4.954410553	4.82262516	4.135368347	3.416047096	3.228155613	3.200359583	3.144251108	3.029694557	2.791353703	2.282526255	1.612203598	1.575314999	1.501914024	1.360098839	1.258598089	1.23258841	1.182296157	1.085142493	0.910648942	0.632198036	0.286855251	0.124749132	0.062731981	0.030837467	0.012702923	0.00463768	0.002455181	0.001606568	0.000909903	0.000317053	8.52E-05	5.98E-06	-1.92E-05	-6.28E-06	1.40E-06	1.70E-06	-6.48E-07	-3.47E-07	-4.39E-05	-0.000126766	-0.000269581	-0.000487476	-0.000653102	-0.000110409	0.004133393	0.013608397	0.053350966	0.221977234	0.873361051	1.616387248	1.654179931	1.729443669	1.878413916	2.169784546	2.72230196	3.642024755	4.629508972	4.978558064	5.041688919	5.027611256	5.010061264	5.00963974	5.008859158	5.006876469	4.944787502	4.814991951	4.52706337	3.943979979	3.156305552	2.248047113	1.323727965	1.221931458	1.031632066	0.724418342	0.336158454	0.146648139	0.073322423	0.036136825	0.016125085	0.007388611	0.003200766	0.001243947	0.000479961	0.000193286	7.30E-05	1.57E-05	-7.30E-06	-1.13E-05	-6.29E-06	-1.05E-06	3.71E-07	-2.54E-07	-4.15E-05	-0.000119251	-0.000252061	-0.000462238	-0.000682351	0.000523347	0.004897513	0.018007083	0.074612759	0.322408915	0.821739256	1.598808646	1.646853566	1.742424607	1.931045055	2.297506809	2.975069284	4.001775265	4.773996353	4.989655495	5.027080059	5.017432213	5.0107584	5.010479927	5.009945869	5.009013653	5.002259254	4.959715366	4.742246628	4.075960636	3.343597412	2.494547129	1.511825323	1.275205016	1.249880552	1.200050473	1.105227232	0.934122145	0.657326341	0.300967276	0.123549469	0.066607423	0.033092	0.015179045	0.006661579	0.002795661	0.001063659	0.000411787	0.000168753	6.60E-05	1.25E-05	-7.40E-06	-1.06E-05	-5.59E-06	1.44E-06	1.13E-06	-5.42E-08	-3.19E-05	-9.25E-05	-0.000199117	-0.000377313	-0.000631988	-0.000288807	0.004464845	0.01480775	0.058993936	0.237249553	0.834235072	1.609835863	1.649386406	1.728135705	1.883930087	2.188316345	2.763425589	3.706807613	4.655686378	4.721187115
];

Vins = smooth(t,Vin,0.001 ,'rloess');
Vouts = smooth(t, Vout,0.001,'rloess');

figure;
hold on;
plot(t, Vin,'r', 'linewidth', 1);
plot(t, Vout,'b', 'linewidth', 1);
set(gca, 'Xlim',[0 1.50E-06], 'Ylim',[-1 6])
grid minor
%subplot(1,1,1);
%plot(t,Vout)



