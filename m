Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB20A17A211
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Mar 2020 10:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+qzgy/jjXTIbAVDvhM9p3/OE4WoOocVBWiYmtWUAfww=; b=u7dz1+GMm4a256
	Knfb1cRObj3u0hBVbuMZNruladoTr6tKJ18bbTBNWscMyz97yzhN6lbxkvN24jcs6StoADE3Ca/oE
	c2mSO0/GgIG99DsDy7RIBAsMtYjn9HM3OTJ6Tado9TzrQOSSrkReT/R/gO88WKBzCMw6V5ZslmfOk
	jLhGQg2MmOcCPHRDtN0itUtarMTptrNsaCAxforDESO8/yzu5IqCJQ5XGS9K/bunLO8zDyUQva4Ib
	ha2qnxBSp80U8XOSxuHD1vHmOTGprp+B4jWw2X6AEEUYtUDAn13qhmC6veKNhLlRIWQ76/xRQaPJm
	uxAScTVOVQFG4mfoy4GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9mbR-0003Dx-3n; Thu, 05 Mar 2020 09:15:37 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9mb9-0002g1-Iv
 for linux-mtd@lists.infradead.org; Thu, 05 Mar 2020 09:15:21 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9E89F3C5D7818ADE1930;
 Thu,  5 Mar 2020 17:15:01 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Thu, 5 Mar 2020
 17:14:51 +0800
From: Hou Tao <houtao1@huawei.com>
To: <linux-mtd@lists.infradead.org>, Richard Weinberger <richard@nod.at>
Subject: [PATCH v3 0/2] fix potential race between ubifs_tnc_locate() and GC
Date: Thu, 5 Mar 2020 17:22:03 +0800
Message-ID: <20200305092205.127758-1-houtao1@huawei.com>
X-Mailer: git-send-email 2.25.0.4.g0ad7144999
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_011519_826253_6EBB00E5 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Carson.Li1@unisoc.com, Adrian Hunter <ext-adrian.hunter@nokia.com>,
 houtao1@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGksCgpUaGUgcGF0Y2hzZXQgdHJpZXMgdG8gZml4IHRoZSBwcm9ibGVtIHJlcG9ydGVkIGJ5IOad
juWCsuWCsiBbMV0uIEl0IGhhcHBlbnMKYmVjYXVzZSB0aGVyZSBhcmUgcmFjZXMgYmV0d2VlbiB1
Ymlmc190bmNfbG9jYXRlKCkgYW5kIEdDIHdoZW4KdWJpZnNfdG5jX2xvY2F0ZSgpIGZpbmRzIHRo
ZSB0YXJnZXQgTEVCIGlzIHVzZWQgYXMgd3JpdGUtYnVmZmVycyBvciBidWRzLgpBbmQgdGhlIHBh
dGNoc2V0IGZpeGVzIGl0IGJ5IG9ubHkgcmVhZGluZyB0aGUgbm9kZSBmcm9tIHdyaXRlLWJ1ZmZl
cgp3aGVuIHRoZSBub2RlIGlzIGZ1bGx5IGNvbnRhaW5lZCBpbiB3cml0ZS1idWZmZXIuCgpDb21t
ZW50cyBhcmUgd2VsY29tZS4KClJlZ2FyZHMsClRhbwoKLS0KdjM6CiAtLSBhZGQgTGluazogdGFn
CiAtLSBhZGQgVUJJRlNfQ0hLX0ZPUkNFX0RVTVBfQkFEX05PREUgZmxhZyBmb3IgZXJyb3IgbWVz
c2FnZSBjb250cm9sCgpbMV06IGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LW10
ZC9tc2cxMDc3MS5odG1sCgpIb3UgVGFvICgyKToKICB1YmlmczogZmFjdG9yIG91dCBoZWxwZXIg
dWJpZnNfY2hlY2tfbm9kZV9idWYoKQogIHViaWZzOiByZWFkIG5vZGUgZnJvbSB3YnVmIHdoZW4g
aXQgZnVsbHkgc2l0cyBpbiB3YnVmCgogZnMvdWJpZnMvaW8uYyAgICB8IDEwOSArKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZnMvdWJpZnMvdG5jLmMgICB8
ICA4MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQogZnMvdWJpZnMvdWJpZnMu
aCB8ICAgNSArKysKIDMgZmlsZXMgY2hhbmdlZCwgMTM2IGluc2VydGlvbnMoKyksIDU5IGRlbGV0
aW9ucygtKQoKCi0tIAoyLjI1LjAuNC5nMGFkNzE0NDk5OQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tdGQvCg==
