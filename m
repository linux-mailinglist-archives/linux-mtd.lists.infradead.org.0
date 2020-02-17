Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90831611DF
	for <lists+linux-mtd@lfdr.de>; Mon, 17 Feb 2020 13:17:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d2ovzuMy9sIie1aTkgud62F2kkJt+ga9hFs0oQbyd/0=; b=T1M9RNkYdksVLT
	X49hPqOvaDma+mxl/FKcd9B3oIJbe7UBSIIHbDsEOa6JHTabpldXF6zNaCJR2NeBVJDqkQfAzejEj
	wKliUNKTT0Gv4HXqb6LsMr9sl8Uyw5SuJFGiBfrfWg0FxTMx0/jmIm1PQxC+FXulEeQUGHBbdCp9e
	aSi1V2AhNXymYRGXZK+Weaotm5S0h3ZwYUHllZqdmBV8Tt2JWABwLrerJaAsPqmIMPuIBdcG39i0S
	aVin9FKU6nmW8uHZyDPtqFJTuhkPubxBVXV7W74d/0wx0vc7IjcO18IvU810gaN1SR0SJggJS14wh
	YoKugN63q1hNKviCMXaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fLG-00023c-UI; Mon, 17 Feb 2020 12:17:38 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fLA-00022T-1K
 for linux-mtd@lists.infradead.org; Mon, 17 Feb 2020 12:17:33 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id BFA8EB09D511E23A9159;
 Mon, 17 Feb 2020 20:17:21 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Mon, 17 Feb 2020
 20:17:13 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <richard@nod.at>, <gregkh@linuxfoundation.org>, <sashal@kernel.org>,
 <yi.zhang@huawei.com>
Subject: [PATCH 4.4] ubifs: Fix deadlock in concurrent bulk-read and writepage
Date: Mon, 17 Feb 2020 20:23:59 +0800
Message-ID: <1581942239-112920-1-git-send-email-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_041732_249407_C53494C6 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

WyBVcHN0cmVhbSBjb21taXQgZjVkZTViODMzMDNlNjFiMWYzZmIwOWJkNzdjZTNhYzJkN2E0NzVm
MiBdCgpJbiB1YmlmcywgY29uY3VycmVudCBleGVjdXRpb24gb2Ygd3JpdGVwYWdlIGFuZCBidWxr
IHJlYWQgb24gdGhlIHNhbWUgZmlsZQptYXkgY2F1c2UgQUJCQSBkZWFkbG9jaywgZm9yIGV4YW1w
bGUgKFJlcHJvZHVjZSBtZXRob2Qgc2VlIExpbmspOgoKUHJvY2VzcyBBKEJ1bGstcmVhZCBzdGFy
dHMgZnJvbSBwYWdlNCkgICAgICAgICBQcm9jZXNzIEIod3JpdGUgcGFnZTQgYmFjaykKICB2ZnNf
cmVhZCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHdiX3dvcmtmbiBvciBm
c3luYwogIC4uLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLi4u
CiAgZ2VuZXJpY19maWxlX2J1ZmZlcmVkX3JlYWQgICAgICAgICAgICAgICAgICAgICB3cml0ZV9j
YWNoZV9wYWdlcwogICAgdWJpZnNfcmVhZHBhZ2UgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBMT0NLKHBhZ2U0KQoKICAgICAgdWJpZnNfYnVsa19yZWFkICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdWJpZnNfd3JpdGVwYWdlCiAgICAgICAgTE9DSyh1aS0+dWlfbXV0ZXgpICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdWJpZnNfd3JpdGVfaW5vZGUKCgkgIHViaWZzX2RvX2J1
bGtfcmVhZCAgICAgICAgICAgICAgICAgICAgICAgICAgIExPQ0sodWktPnVpX211dGV4KQoJICAg
IGZpbmRfb3JfY3JlYXRlX3BhZ2UoYWxsb2MgcGFnZTQpICAgICAgICAgICAgICAgICAg4oaRCgkg
ICAgICBMT0NLKHBhZ2U0KSAgICAgICAgICAgICAgICAgICA8LS0gICAgIEFCQkEgZGVhZGxvY2sg
b2NjdXJzIQoKSW4gb3JkZXIgdG8gZW5zdXJlIHRoZSBzZXJpYWxpemF0aW9uIGV4ZWN1dGlvbiBv
ZiBidWxrIHJlYWQsIHdlIGNhbid0CnJlbW92ZSB0aGUgYmlnIGxvY2sgJ3VpLT51aV9tdXRleCcg
aW4gdWJpZnNfYnVsa19yZWFkKCkuIEluc3RlYWQsIHdlCmFsbG93IHViaWZzX2RvX2J1bGtfcmVh
ZCgpIHRvIGxvY2sgcGFnZSBmYWlsZWQgYnkgcmVwbGFjaW5nCmZpbmRfb3JfY3JlYXRlX3BhZ2Uo
RkdQX0xPQ0spIHdpdGgKcGFnZWNhY2hlX2dldF9wYWdlKEZHUF9MT0NLIHwgRkdQX05PV0FJVCku
CgpTaWduZWQtb2ZmLWJ5OiBaaGloYW8gQ2hlbmcgPGNoZW5nemhpaGFvMUBodWF3ZWkuY29tPgpT
dWdnZXN0ZWQtYnk6IHpoYW5neWkgKEYpIDx5aS56aGFuZ0BodWF3ZWkuY29tPgpDYzogPFN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmc+CkZpeGVzOiA0NzkzZTdjNWUxYyAoIlVCSUZTOiBhZGQgYnVsay1y
ZWFkIGZhY2lsaXR5IikKTGluazogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVn
LmNnaT9pZD0yMDYxNTMKU2lnbmVkLW9mZi1ieTogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJk
QG5vZC5hdD4KLS0tCiBmcy91Ymlmcy9maWxlLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2ZzL3ViaWZzL2Zp
bGUuYyBiL2ZzL3ViaWZzL2ZpbGUuYwppbmRleCBiODk1YWY3ZDhkODAuLmU2ZDBhN2RmMzQxZCAx
MDA2NDQKLS0tIGEvZnMvdWJpZnMvZmlsZS5jCisrKyBiL2ZzL3ViaWZzL2ZpbGUuYwpAQCAtNzgy
LDggKzc4Miw5IEBAIHN0YXRpYyBpbnQgdWJpZnNfZG9fYnVsa19yZWFkKHN0cnVjdCB1Ymlmc19p
bmZvICpjLCBzdHJ1Y3QgYnVfaW5mbyAqYnUsCiAKIAkJaWYgKHBhZ2Vfb2Zmc2V0ID4gZW5kX2lu
ZGV4KQogCQkJYnJlYWs7Ci0JCXBhZ2UgPSBmaW5kX29yX2NyZWF0ZV9wYWdlKG1hcHBpbmcsIHBh
Z2Vfb2Zmc2V0LAotCQkJCQkgICBHRlBfTk9GUyB8IF9fR0ZQX0NPTEQpOworCQlwYWdlID0gcGFn
ZWNhY2hlX2dldF9wYWdlKG1hcHBpbmcsIHBhZ2Vfb2Zmc2V0LAorCQkJCSBGR1BfTE9DS3xGR1Bf
QUNDRVNTRUR8RkdQX0NSRUFUfEZHUF9OT1dBSVQsCisJCQkJIEdGUF9OT0ZTIHwgX19HRlBfQ09M
RCk7CiAJCWlmICghcGFnZSkKIAkJCWJyZWFrOwogCQlpZiAoIVBhZ2VVcHRvZGF0ZShwYWdlKSkK
LS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
