# 医療用医薬品の YJ7 コードと成分名の対応表

2020-07-27

## はじめに

本邦の医薬品には目的に応じて様々なコードが付与されている。

これらのコードの中で、薬価基準収載医薬品コードと YJ7 コードの上位 7 桁の数字は互いに一致しており、また薬効分類や投与経路・成分に関する分類番号としての機能も有することが知られており、この上位 7 桁の数字は「YJ7 コード」と呼ばれることもある。

厚生労働省の WEB サイト ([医療保険が適用される医薬品について](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000078916.html))において取得可能な薬価基準収載医薬品コードと成分名の対応表と、過去の同情報のアーカイブを収集・加工することで、YJ7 コードと成分名の対応表が作成可能である。

本リポジトリでは、[YJ7 コードと成分名の対応表を格納・公開](https://github.com/kirino-k/yj7_ingredients/blob/main/src/out/output.csv)し、対応表作成の手順と環境・ソースコードを公開する。

## 情報源

### 最新情報

厚生労働省「[医療保険が適用される医薬品について](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000078916.html)」より以下のページより情報源となるエクセルファイルを取得する。

[薬価基準収載品目リストについて（令和4年7月1日適用）](https://www.mhlw.go.jp/topics/2022/04/tp20220401-01.html)
- https://www.mhlw.go.jp/topics/2022/04/xls/tp20220617-01_01.xlsx
- https://www.mhlw.go.jp/topics/2022/04/xls/tp20220701-01_02.xlsx
- https://www.mhlw.go.jp/topics/2022/04/xls/tp20220617-01_03.xlsx
- https://www.mhlw.go.jp/topics/2022/04/xls/tp20220420-01_04.xlsx

### 過去の情報

厚生労働省「[医療保険分野のトピックス](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/topics_150856_142.html)」より該当する以下のページリンクより、情報源となるエクセルファイルを取得する。

2008年3月7日掲載: [平成20年度診療報酬における後発医薬品について](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000021258.html)
- https://www.mhlw.go.jp/topics/2008/03/xls/tp0307-2a.xls
- https://www.mhlw.go.jp/topics/2008/03/xls/tp0307-2b.xls
- https://www.mhlw.go.jp/topics/2008/03/xls/tp0307-2c.xls
- https://www.mhlw.go.jp/topics/2008/03/xls/tp0307-2d.xls

2009年11月13日更新: [平成20、21年度新たに収載された診療報酬における後発医薬品](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000021184.html)
- https://www.mhlw.go.jp/topics/2008/06/xls/tp0620-1.xls

2010年3月5日更新: [平成22年度診療報酬における後発医薬品について](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000021114.html)
- https://www.mhlw.go.jp/topics/2010/03/xls/tp0305-1a.xls
- https://www.mhlw.go.jp/topics/2010/03/xls/tp0305-1b.xls
- https://www.mhlw.go.jp/topics/2010/03/xls/tp0305-1c.xls
- https://www.mhlw.go.jp/topics/2010/03/xls/tp0305-1d.xls

2010年11月19日更新: [平成22年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000021094.html)
- https://www.mhlw.go.jp/topics/2010/04/xls/tp0423-1.xls

2011年1月28日更新: [平成22年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000021077.html)

2012年1月16日更新: [平成22、23年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020898.html)

2012年4月2日掲載: [平成24年度　診療報酬において加算等の算定対象となる後発医薬品（新規収載分）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020848.html)
- https://www.mhlw.go.jp/topics/2012/04/xls/tp0402-1.xls

2012年6月22日掲載: [平成２４年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020796.html)

2012年7月30日更新: [平成２４年度　診療報酬において加算等の算定対象となる後発医薬品（新規収載分）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020772.html)

2012年9月18日更新: [平成２４年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020729.html)

2012年12月14日更新: [平成２４年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000021048.html)

2013年3月21日更新: [平成２４年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020992.html)

2013年4月1日更新: [平成２４，２５年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020964.html)

2013年5月1日更新: [平成２４，２５年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020917.html)

2013年6月21日更新: [平成２４，２５年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020856.html)

2013年7月1日掲載: [平成２４，２５年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020808.html)

2013年8月1日更新: [平成２４，２５年度　診療報酬において加算等の算定対象となる後発医薬品(新規収載分)](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000020766.html)

2014年9月2日更新: [使用薬剤の薬価（薬価基準）に収載されている医薬品について（平成26年8月8日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000041051.html)
- https://www.mhlw.go.jp/topics/2015/03/xls/tp20151211-01_1.xls
- https://www.mhlw.go.jp/topics/2015/03/xls/tp20151211-01_2.xls
- https://www.mhlw.go.jp/topics/2015/03/xls/tp20151211-01_3.xls
- https://www.mhlw.go.jp/topics/2015/03/xls/tp20150831-01_4.xls

2015年10月1日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成27年10月1日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000056106.html)

2015年11月26日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成27年11月26日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000104410.html)

2015年11月30日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成27年11月28日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000105332.html)

2015年12月11日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成27年12月11日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000106284.html)

2016年3月4日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年4月1日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000113955.html)
- https://www.mhlw.go.jp/topics/2018/03/xls/tp20180314-01_1.xls
- https://www.mhlw.go.jp/topics/2017/12/xls/tp20171208-01_2.xls
- https://www.mhlw.go.jp/topics/2017/12/xls/tp20171208-01_3.xls
- https://www.mhlw.go.jp/topics/2017/02/xls/tp20170215-01_4.xls

2016年3月4日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年3月31日まで）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000113953.html)

2016年4月20日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年4月20日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000121360.html)

2016年5月25日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年5月25日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000124434.html)

2016年6月17日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年6月17日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000126499.html)

2016年6月29日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年6月29日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000128242.html)

2016年8月31日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年8月31日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000134586.html)

2016年9月15日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年8月31日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000136516.html)

2016年11月18日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年11月18日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000142785.html)

2016年12月7日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年12月7日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000143928.html)

2016年12月9日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年12月9日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000144995.html)

2016年12月21日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成28年12月21日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000146052.html)

2017年2月1日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年2月1日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000149277.html)

2017年2月15日更新: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年2月15日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000150973.html)

2017年5月31日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年3月17日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000155042.html)

2017年5月24日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年5月24日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000165105.html)

2017年5月31日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年5月31日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000165774.html)

2017年6月16日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年6月16日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000167437.html)

2017年8月30日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年8月30日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000175471.html)

2017年10月2日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年10月1日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000179194.html)

2017年11月22日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年11月22日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000185518.html)

2017年11月29日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年11月29日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000186123.html)

2017年12月8日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成29年12月8日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000187323.html)

2018年3月5日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年4月1日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000195361.html)
- https://www.mhlw.go.jp/topics/2018/04/xls/tp20190904-01_01.xls
- https://www.mhlw.go.jp/topics/2018/04/xls/tp20190904-01_02.xls
- https://www.mhlw.go.jp/topics/2018/04/xls/tp20190904-01_03.xls
- https://www.mhlw.go.jp/topics/2018/04/xls/tp20180401-01_4.xls

2018年3月5日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年3月31日まで）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000195357.html)

2018年3月14日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年4月1日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000197264.html)

2018年3月14日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年3月31日まで）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000197228.html)

2018年4月18日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年4月18日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000203490.html)

2018年5月22日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年5月22日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000206832.html)

2018年5月30日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年5月30日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000208827.html)

2018年6月15日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年6月15日適用）](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000211941.html)

2018年7月2日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年7月1日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2018年8月29日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年8月29日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2018年11月1日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年11月1日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2018年11月20日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年11月20日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2018年11月28日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年11月28日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2018年12月12日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年12月12日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2018年12月14日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成30年12月14日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2019年2月1日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成31年2月1日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2019年2月26日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成31年2月26日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2019年3月15日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成31年3月15日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2019年4月3日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（平成31年4月3日適用）](https://www.mhlw.go.jp/topics/2018/04/tp20180401-01.html)

2019年8月19日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（令和元年10月1日適用）](https://www.mhlw.go.jp/topics/2019/08/tp20190819-01.html)
- https://www.mhlw.go.jp/topics/2019/08/xls/tp20200122-01_01.xls
- https://www.mhlw.go.jp/topics/2019/08/xls/tp20200201-01_02.xls
- https://www.mhlw.go.jp/topics/2019/08/xls/tp20200122-01_03.xls
- https://www.mhlw.go.jp/topics/2019/08/xls/tp20191001-01_04.xls

2020年3月5日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（令和2年4月1日適用）](https://www.mhlw.go.jp/topics/2020/04/tp20200401-01.html)
- https://www.mhlw.go.jp/topics/2020/04/xls/tp20210218-01_01.xlsx
- https://www.mhlw.go.jp/topics/2020/04/xls/tp20210218-01_02.xlsx
- https://www.mhlw.go.jp/topics/2020/04/xls/tp20210218-01_03.xlsx
- https://www.mhlw.go.jp/topics/2020/04/xls/tp20201211-01_04.xlsx

2021年3月5日掲載: [薬価基準収載品目リスト及び後発医薬品に関する情報について（令和3年4月1日適用）](https://www.mhlw.go.jp/topics/2021/04/tp20210401-01.html)
- https://www.mhlw.go.jp/topics/2021/04/xls/tp20220201-01_01.xlsx
- https://www.mhlw.go.jp/topics/2021/04/xls/tp20211210-01_02.xlsx
- https://www.mhlw.go.jp/topics/2021/04/xls/tp20211210-01_03.xlsx
- https://www.mhlw.go.jp/topics/2021/04/xls/tp20211125-01_04.xlsx

## 対応表の作成方法等

### 環境

ソースコードを実行するためには以下の環境が必須である。

- Linux shell (bash)
    - wget, paste, sed, nkf

- Python3
    - xlrd, xlsx2csv

Docker (特に[Play with Docker](https://labs.play-with-docker.com/)) を用いることで、ローカル環境における環境構築は不要である。

### 手順

以下の手順で情報の取得・加工・整理を行い、最終成果物である対応表を完成させる。

1. ダウンロードファイルの URL をまとめたファイル (src/file_info) を読み込み、機械的に順次ファイルを取得する。この際、取得されたファイルのURLやファイル名からファイル作成日または更新日を得る。

1. ダウンロードファイル (XLS または XLSX) より薬価基準収載医薬品コードと成分名を抽出し、薬価基準収載医薬品コードの上位 7 桁を切り出して YJ7 コードを得る。

1. 重複する内容に関しては、ファイル作成または更新が最新のもののみを採用して重複を整理し、最終成果物である対応表 (src/out/output.csv) を出力する。

1. Windows PC 上の MS Excel で文字化けせずに表示可能な CSV ファイル (src/out/yj7_ingredients_yyyymmdd.csv) を出力する (yyyymmdd には実行日が 8 桁数字として入る)。


## ファイルレイアウト

出力ファイルのレイアウトを以下の表に示す。

| 列名              | 説明                                                        |
|-------------------|-------------------------------------------------------------|
|YJ7コード          | 「薬価基準収載医薬品コード」の上位 7 桁として取得したコード |
|成分名             | 「YJ7 コード」に対応する成分名                              |


## ソースコードの実行方法

### リポジトリの clone

GitHub より リポジトリを clone する

```
git clone https://github.com/kirino-k/yj7_ingredients.git
```

### ローカルに実行環境がある場合

ローカルの shell でスクリプトを実行 (リポジトリの root ディレクトリ)

```
./src/create_table.sh
```

### Docker コンテナ上でスクリプトを実行する場合

Docker コンテナの作成

```
docker build . -t yj7_ingredients:latest
```

Docker コンテナ上でスクリプトを実行 (リポジトリの root ディレクトリ)

```
docker run \
  --rm \
  -v $(pwd)/src:/home/docker/src \
  --user docker \
  --workdir /home/docker/src \
  yj7_ingredients:latest \
  ./create_table.sh    
```

コンテナ削除

```
docker rmi yj7_ingredients:latest
```
