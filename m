Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862DE10EE2B
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Dec 2019 18:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GgWN+8xWPFrRcWazEZWPQZVSIcHuJo3tcXgavSJdb6Q=; b=cfWoRYIagyMFFISGfihMmWjhTi
	pWGHxAkokokoJtlEocNPn6/S+zFyKO/DS7AE9x68O20CruPjCLrsjMTi/cY6ug37I1oc9qIbGPOEt
	JpCT0ht/YjWHtch7EkNa699tXvYOv/0iwLE4aHyr7E3EL84HMJ5pfKsfuz6TTNyPx8lImQGb/pev/
	yV8DQ9Ir8PjOuy618zxtUCueb1MmwrHlZSdZNSMDpWFeQApjeZm8cq81v6LmYSqmdlGvCSaCLo0+P
	ER8IogENWGmLQOkRE4d1Pg2td/doOSSd6FWXylgJxwGA6LXsTAYj0JYQ5ghNbcsfq2Zl4GWsnGP9T
	1RNHzbow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibpUp-0002Zk-7i; Mon, 02 Dec 2019 17:28:27 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibpUi-0002Yj-97
 for linux-mtd@lists.infradead.org; Mon, 02 Dec 2019 17:28:22 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 504A89AD56A5BC215B9C;
 Mon,  2 Dec 2019 17:28:09 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml709-cah.china.huawei.com (10.201.108.32) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 2 Dec 2019 17:28:08 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Mon, 2 Dec 2019
 17:28:08 +0000
To: "tudor.ambarus@microchip.com" <tudor.ambarus@microchip.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
From: John Garry <john.garry@huawei.com>
Subject: flash_lock issue for n25q 128mb spi nor part
Message-ID: <bbebfe85-73dd-3bc2-01e1-a7493ffad5ef@huawei.com>
Date: Mon, 2 Dec 2019 17:28:08 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml702-chm.china.huawei.com (10.201.108.51) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_092820_470053_E2088705 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
 2.5 BITCOIN_SPAM_02        BitCoin spam pattern 02
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Mark Brown <broonie@kernel.org>, chenxiang <chenxiang66@hisilicon.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgZ3V5cywKCkkgYW0gdGVzdGluZyB0aGUgZm9sbG93aW5nIGRyaXZlciBvbiB0b3Agb2YgTGlu
dXMnIG1hc3RlciBicmFuY2ggd2l0aCBhIApuMjVxMTI4YTExIHBhcnQ6CgpodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1tdGQvMTU3Mjg4NjI5Ny00NTQwMC0zLWdpdC1zZW5kLWVtYWlsLWpv
aG4uZ2FycnlAaHVhd2VpLmNvbS8KCkkgYW0gZmluZGluZyBmbGFzaCBsb2NrIGlzIG5vdCB3b3Jr
aW5nLiBFdmVuIGFmdGVyIGEg4oCcc3VjY2Vzc2Z1bOKAnSBsb2NrLCAKZmxhc2hfbG9jayBpcyBy
ZXBvcnRpbmcgZmxhc2ggaXMgdW5sb2NrZWQuIEFuZCBJIGNhbiBzdGlsbCB3cml0ZSB0byB0aGUg
CmZsYXNoLgoKSSBmaW5kIHRoYXQgc2luY2UgMzlkMWUzMzQwYzczICgibXRkOiBzcGktbm9yOiBG
aXggY2xlYXJpbmcgb2YgUUUgYml0IG9uIApsb2NrKCkvdW5sb2NrKCkiKSwgd2UncmUgdXNpbmcg
YSAxNmIgU1IgZm9yIHRoaXMgcGFydCBpbiB0aGUgZHJpdmVyLCBidXQgCnRoaXMgcGFydCBvbmx5
IGhhcyBhIDhiIFNSLgoKVGhpcyBoYWNrIGZpeGVzIHRoZSBwcm9ibGVtIGZvciBtZToKCkAgLTQ2
OTEsNyArNDY5MSw3IEBAIHN0YXRpYyB2b2lkIHNwaV9ub3JfaW5mb19pbml0X3BhcmFtcyhzdHJ1
Y3Qgc3BpX25vciAKKm5vcikKcGFyYW1zLT5zZXRfNGJ5dGUgPSBzcGFuc2lvbl9zZXRfNGJ5dGU7
CnBhcmFtcy0+c2V0dXAgPSBzcGlfbm9yX2RlZmF1bHRfc2V0dXA7Ci8qIERlZmF1bHQgdG8gMTYt
Yml0IFdyaXRlIFN0YXR1cyAoMDFoKSBDb21tYW5kICovCi0gbm9yLT5mbGFncyB8PSBTTk9SX0Zf
SEFTXzE2QklUX1NSOworLy8gbm9yLT5mbGFncyB8PSBTTk9SX0ZfSEFTXzE2QklUX1NSOwoKQW55
IGlkZWEgd2hhdCdzIGdvaW5nIHdyb25nPwoKVGhhbmtzLApKb2huCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Np
b24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbXRkLwo=
