'''cids=['etmall','etmalla','etmallm','umall','umallm','umallm']'''
cids=['etmall']
tbls=['abandon_list_tbl','abandon_tbl','camp_tbl','camprank_tbl','cartinfo_eitc_tbl','exportdata','itemrank_tbl','kwrank_tbl','ordinfo_tbl','roo_tbl','rvo_tbl','rvv_tbl','searchinfo_tbl','ssidinfo_vw','vwinfo_tbl','wlistinfo_tbl']
dts0=['20160209','20160210','20160211','20160212','20160213','20160214','20160215','20160216','20160217','20160218','20160219']
dts1=['20160220','20160221','20160222','20160223','20160224','20160225','20160226','20160227','20160228','20160229']
for cid in cids:
    folder='F:\\ec_' + cid + '\\Temp\\'
    for tbl in tbls:
        with open(folder + '0209_0219_' + tbl + '.csv', 'wb') as outfile:
            for dt in dts0:
                fl=folder + cid + '_' + tbl + '_' + dt + '.csv'
                print('process ' + fl)
                with open(fl, "rb") as infile:
                    outfile.write(infile.read())
            print('dts0 done')
        with open(folder + '0220_0229_' + tbl + '.csv', 'wb') as outfile:
            for dt in dts1:
                fl=folder + cid + '_' + tbl + '_' + dt + '.csv'
                print('process ' + fl)
                with open(fl, "rb") as infile:
                    outfile.write(infile.read())
            print('dts1 done')