Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F4419D176
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Apr 2020 09:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jmfyYcIbMYCTdFtepJgVyuhRpuEtZky9bRYaoc+BeEY=; b=nufDWnHbHc7F11
	iAuDb/jflKIR6En7aIvvwkE0nDuQHz6mZy7QTAzFsHcTSGmlA33DgFcitZKNEf3m/9cC65uBuNAVJ
	uTz+WN/0ZL9NS0gGlMKFRcazR0dgDRnW+ASVwDJ9dtTzfruqu7JwcBejyxmxED9sUCyozY1+4NL8z
	wwsrqFlajFQo3jWuqHfkEP/MpSvggypmYEyr9nxynXQUxtuA7+n1leG6HTLpRvJ+uslTs736WPCNl
	fvGWM6ovq/yHcqvkq5nFjLX/AFSFmeFfOk0m1xSWnm8SrYmQqfrEa53rkevojpeO94BZq7xsmc++2
	JtNjwC4+aMHcwh6N3wEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKH50-0001Hv-5C; Fri, 03 Apr 2020 07:49:30 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKH4q-0001Go-SL
 for linux-mtd@lists.infradead.org; Fri, 03 Apr 2020 07:49:22 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4467E47B264D046E4404;
 Fri,  3 Apr 2020 15:48:58 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.487.0; Fri, 3 Apr 2020 15:48:52 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <linux-mtd@lists.infradead.org>, <richard@nod.at>
Subject: [PATCH] physmap-gemini: Remove set but not used variable
 'syscon_match'
Date: Fri, 3 Apr 2020 15:48:52 +0800
Message-ID: <1585900132-6806-1-git-send-email-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.175.138.68]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_004921_107821_111DCB2C 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Zheng Yongjun <zhengyongjun3@huawei.com>, network <network@ubuntu.network>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

RnJvbTogbmV0d29yayA8bmV0d29ya0B1YnVudHUubmV0d29yaz4KCkZpeGVzIGdjYyAnLVd1bnVz
ZWQtYnV0LXNldC12YXJpYWJsZScgd2FybmluZzoKCmRyaXZlcnMvbXRkL21hcHMvcGh5c21hcC1n
ZW1pbmkuYzo0OTozNDogd2FybmluZzog4oCYc3lzY29uX21hdGNo4oCZIGRlZmluZWQgYnV0IG5v
dCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCgpzeXNjb25fbWF0Y2ggaXMgbmV2ZXIg
dXNlZCwgc28gcmVtb3ZlIGl0LgoKUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3
ZWkuY29tPgpTaWduZWQtb2ZmLWJ5OiBaaGVuZyBZb25nanVuIDx6aGVuZ3lvbmdqdW4zQGh1YXdl
aS5jb20+Ci0tLQogZHJpdmVycy9tdGQvbWFwcy9waHlzbWFwLWdlbWluaS5jIHwgNSAtLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
bWFwcy9waHlzbWFwLWdlbWluaS5jIGIvZHJpdmVycy9tdGQvbWFwcy9waHlzbWFwLWdlbWluaS5j
CmluZGV4IGEyODljOGIuLmQ0YTQ2ZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL21hcHMvcGh5
c21hcC1nZW1pbmkuYworKysgYi9kcml2ZXJzL210ZC9tYXBzL3BoeXNtYXAtZ2VtaW5pLmMKQEAg
LTQ2LDExICs0Niw2IEBACiAKICNkZWZpbmUgRkxBU0hfUEFSQUxMRUxfSElHSF9QSU5fQ05UCSgx
IDw8IDIwKQkvKiBlbHNlIGxvdyBwaW4gY250ICovCiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIHN5c2Nvbl9tYXRjaFtdID0gewotCXsgLmNvbXBhdGlibGUgPSAiY29ydGluYSxn
ZW1pbmktc3lzY29uIiB9LAotCXsgfSwKLX07Ci0KIHN0cnVjdCBnZW1pbmlfZmxhc2ggewogCXN0
cnVjdCBkZXZpY2UgKmRldjsKIAlzdHJ1Y3QgcGluY3RybCAqcDsKLS0gCjIuNy40CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1U
RCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
