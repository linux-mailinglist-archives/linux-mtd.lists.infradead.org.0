Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E39F5136DF9
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Jan 2020 14:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qpL60jS+WRNo+JeoLYnsN+nj/uFfRT97g8wvG+g/1mU=; b=FJrQCY3pMU9ERA
	kr0u4M2Ce+s9nqzs8eM+fHtJVDfYH4Zcb4LOBkV6ec89kBLxLp5gOsprv5Wiryycjp92r2cxfjyfD
	rJNY9Ez2rXS7sndGRcGoWJIVeMDwqt5uXRddufl7r9GJB+aZWIjCXyY+K6yIqXLFwDkJ8kU1FMYFs
	V0Incq4Yn5hQnT66cXowN0Dvc/RaX2QyG12c+hMBLikjaaovy8ReuSi5D2N7WLfERSSLVAbp/r+mo
	Hti7cBvQUcQ7zWhxyGl6Bkv0KQnW+Ag2pez7k5W0Vmv/h13ihRIKhA9wUmuBwcFWMdAH51XLpG83D
	9Y5VVdA8CuHNSHE61ICw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuJM-0001qS-Rg; Fri, 10 Jan 2020 13:26:48 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuJB-0001oG-Da
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 13:26:39 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id F36DA6668A1498060F1D;
 Fri, 10 Jan 2020 21:26:26 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Fri, 10 Jan 2020
 21:26:19 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <richard@nod.at>, <s.hauer@pengutronix.de>, <ext-adrian.hunter@nokia.com>, 
 <yi.zhang@huawei.com>
Subject: [PATCH] ubifs: Fix deadlock in concurrent bulk-read and writepage
Date: Fri, 10 Jan 2020 21:33:35 +0800
Message-ID: <1578663215-146583-1-git-send-email-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_052638_033510_45DC6D00 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SW4gdWJpZnMsIGNvbmN1cnJlbnQgZXhlY3V0aW9uIG9mIHdyaXRlcGFnZSBhbmQgYnVsayByZWFk
IG9uIHRoZSBzYW1lIGZpbGUKbWF5IGNhdXNlIEFCQkEgZGVhZGxvY2ssIGZvciBleGFtcGxlIChS
ZXByb2R1Y2UgbWV0aG9kIHNlZSBMaW5rKToKClByb2Nlc3MgQShCdWxrLXJlYWQgc3RhcnRzIGZy
b20gcGFnZTQpICAgICAgICAgUHJvY2VzcyBCKHdyaXRlIHBhZ2U0IGJhY2spCiAgdmZzX3JlYWQg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3Yl93b3JrZm4gb3IgZnN5bmMK
ICAuLi4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC4uLgogIGdl
bmVyaWNfZmlsZV9idWZmZXJlZF9yZWFkICAgICAgICAgICAgICAgICAgICAgd3JpdGVfY2FjaGVf
cGFnZXMKICAgIHViaWZzX3JlYWRwYWdlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
TE9DSyhwYWdlNCkKCiAgICAgIHViaWZzX2J1bGtfcmVhZCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHViaWZzX3dyaXRlcGFnZQogICAgICAgIExPQ0sodWktPnVpX211dGV4KSAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHViaWZzX3dyaXRlX2lub2RlCgoJICB1Ymlmc19kb19idWxrX3Jl
YWQgICAgICAgICAgICAgICAgICAgICAgICAgICBMT0NLKHVpLT51aV9tdXRleCkKCSAgICBmaW5k
X29yX2NyZWF0ZV9wYWdlKGFsbG9jIHBhZ2U0KSAgICAgICAgICAgICAgICAgIOKGkQoJICAgICAg
TE9DSyhwYWdlNCkgICAgICAgICAgICAgICAgICAgPC0tICAgICBBQkJBIGRlYWRsb2NrIG9jY3Vy
cyEKCkluIG9yZGVyIHRvIGVuc3VyZSB0aGUgc2VyaWFsaXphdGlvbiBleGVjdXRpb24gb2YgYnVs
ayByZWFkLCB3ZSBjYW4ndApyZW1vdmUgdGhlIGJpZyBsb2NrICd1aS0+dWlfbXV0ZXgnIGluIHVi
aWZzX2J1bGtfcmVhZCgpLiBJbnN0ZWFkLCB3ZSBhZGQKYSBuZXcgbXV0ZXggbG9jayBmb3IgYnVs
ayByZWFkIGluIHViaWZzX2lub2RlLiB1Ymlmc19idWxrX3JlYWQoKSB3aWxsIGJlCnByb3RlY3Rl
ZCBieSB0aGUgbmV3IG11dGV4IGxvY2sgd2hpY2ggcmVwbGFjZXMgdWlfbXV0ZXguCkl0IGlzIGNv
bmZpcm1lZCB0aGF0IGJ1bGstcmVhZCAoYnVsayByZWFkIGRhdGEgbWVtYmVyIGFuZCBwcm9jZXNz
KSBhbmQKb3RoZXIgbWVtYmVycyAod2hpY2ggYXJlIHByb3RlY3RlZCBieSB0aGUgdWlfbXV0ZXgg
aW4gdWJpZnNfaW5vZGUpIGFyZQppbmRlcGVuZGVudCBvZiBlYWNoIG90aGVyLCBpbmNsdWRpbmcg
YXR0ciwgZGlydHkgKCJjbGVhbiA8LT4gZGlydHkiCnRyYW5zaXRpb25zKSwgdWlfc2l6ZSAodHJ1
bmNhdGUgcHJvY2VzcyksIGV0Yy4KClNpZ25lZC1vZmYtYnk6IFpoaWhhbyBDaGVuZyA8Y2hlbmd6
aGloYW8xQGh1YXdlaS5jb20+CkNjOiA8U3RhYmxlQHZnZXIua2VybmVsLm9yZz4KRml4ZXM6IDQ3
OTNlN2M1ZTFjICgiVUJJRlM6IGFkZCBidWxrLXJlYWQgZmFjaWxpdHkiKQpMaW5rOiBodHRwczov
L2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIwNjE1MwotLS0KIGZzL3ViaWZz
L2ZpbGUuYyAgfCAyMSArKysrKysrKysrKysrKysrKy0tLS0KIGZzL3ViaWZzL3N1cGVyLmMgfCAg
MSArCiBmcy91Ymlmcy91Ymlmcy5oIHwgIDcgKysrKystLQogMyBmaWxlcyBjaGFuZ2VkLCAyMyBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2ZzL3ViaWZzL2ZpbGUu
YyBiL2ZzL3ViaWZzL2ZpbGUuYwppbmRleCBjZDUyNTg1Li4zZTE1YzI3IDEwMDY0NAotLS0gYS9m
cy91Ymlmcy9maWxlLmMKKysrIGIvZnMvdWJpZnMvZmlsZS5jCkBAIC04MzYsMTAgKzgzNiwyMyBA
QCBzdGF0aWMgaW50IHViaWZzX2J1bGtfcmVhZChzdHJ1Y3QgcGFnZSAqcGFnZSkKIAkJcmV0dXJu
IDA7CiAKIAkvKgotCSAqIEJ1bGstcmVhZCBpcyBwcm90ZWN0ZWQgYnkgQHVpLT51aV9tdXRleCwg
YnV0IGl0IGlzIGFuIG9wdGltaXphdGlvbiwKLQkgKiBzbyBkb24ndCBib3RoZXIgaWYgd2UgY2Fu
bm90IGxvY2sgdGhlIG11dGV4LgorCSAqIEJ1bGstcmVhZCBpcyBwcm90ZWN0ZWQgYnkgQHVpLT51
aV9idWxrX3JlYWRfbXV0ZXgsIHViaWZzX3JlYWRwYWdlKCkKKwkgKiB3aWxsIGFsbCBjb21lIGhl
cmUuIElmIHRoZXJlIGFyZSBvdGhlciBjb25jdXJyZW50IHJlYWQgdGFza3MgZHVyaW5nCisJICog
YnVsay1yZWFkLCBkZWFkbG9jayBtYXkgb2NjdXIsIHN1Y2ggYXM6CisJICogUHJvY2VzcyBBKEJ1
bGstcmVhZCBzdGFydHMgZnJvbSBwYWdlNCkgICBQcm9jZXNzIEIoUmVhZCBwYWdlNCkKKwkgKiAg
IHZmc19yZWFkICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmZzX3JlYWQKKwkgKiAg
ICAgLi4uICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuLi4KKwkgKiAgICAg
dWJpZnNfcmVhZHBhZ2UgICAgICAgICAgICAgICAgICAgICAgICAgICBmaW5kX2dldF9wYWdlKGFs
bG9jIHBhZ2U0KQorCSAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgYWRkX3RvX3BhZ2VfY2FjaGVfbHJ1CisJICogICAgICAgdWJpZnNfYnVsa19yZWFkICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIExPQ0socGFnZTQpCisJICogICAgICAgICBMT0NLKHVp
LT51aV9idWxrX3JlYWRfbXV0ZXgpICAgICAgICAgdWJpZnNfcmVhZHBhZ2UKKwkgKiAgICAgICAg
ICAgdWJpZnNfZG9fYnVsa19yZWFkICAgICAgICAgICAgICAgICAgIHViaWZzX2J1bGtfcmVhZAor
CSAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBMT0NL
KHVpLT51aV9idWxrX3JlYWRfbXV0ZXgpCisJICogICAgICAgICAgICAgZmluZF9vcl9jcmVhdGVf
cGFnZSAgICAgICAgICAgICAgICAgICAgICAgICDihpEKKwkgKiAgICAgICAgICAgICAgIExPQ0so
cGFnZTQpCQkgICAgICAgPC0tIEFCQkEgZGVhZGxvY2sgb2NjdXJzIQorCSAqIFNvIGRvbid0IGJv
dGhlciBpZiB3ZSBjYW5ub3QgbG9jayB0aGUgbXV0ZXguCiAJICovCi0JaWYgKCFtdXRleF90cnls
b2NrKCZ1aS0+dWlfbXV0ZXgpKQorCWlmICghbXV0ZXhfdHJ5bG9jaygmdWktPnVpX2J1bGtfcmVh
ZF9tdXRleCkpCiAJCXJldHVybiAwOwogCiAJaWYgKGluZGV4ICE9IGxhc3RfcGFnZV9yZWFkICsg
MSkgewpAQCAtODg0LDcgKzg5Nyw3IEBAIHN0YXRpYyBpbnQgdWJpZnNfYnVsa19yZWFkKHN0cnVj
dCBwYWdlICpwYWdlKQogCQlrZnJlZShidSk7CiAKIG91dF91bmxvY2s6Ci0JbXV0ZXhfdW5sb2Nr
KCZ1aS0+dWlfbXV0ZXgpOworCW11dGV4X3VubG9jaygmdWktPnVpX2J1bGtfcmVhZF9tdXRleCk7
CiAJcmV0dXJuIGVycjsKIH0KIApkaWZmIC0tZ2l0IGEvZnMvdWJpZnMvc3VwZXIuYyBiL2ZzL3Vi
aWZzL3N1cGVyLmMKaW5kZXggNWUxZThlYy4uYzQ0MTViMyAxMDA2NDQKLS0tIGEvZnMvdWJpZnMv
c3VwZXIuYworKysgYi9mcy91Ymlmcy9zdXBlci5jCkBAIC0yNTcsNiArMjU3LDcgQEAgc3RhdGlj
IHN0cnVjdCBpbm9kZSAqdWJpZnNfYWxsb2NfaW5vZGUoc3RydWN0IHN1cGVyX2Jsb2NrICpzYikK
IAltZW1zZXQoKHZvaWQgKil1aSArIHNpemVvZihzdHJ1Y3QgaW5vZGUpLCAwLAogCSAgICAgICBz
aXplb2Yoc3RydWN0IHViaWZzX2lub2RlKSAtIHNpemVvZihzdHJ1Y3QgaW5vZGUpKTsKIAltdXRl
eF9pbml0KCZ1aS0+dWlfbXV0ZXgpOworCW11dGV4X2luaXQoJnVpLT51aV9idWxrX3JlYWRfbXV0
ZXgpOwogCXNwaW5fbG9ja19pbml0KCZ1aS0+dWlfbG9jayk7CiAJcmV0dXJuICZ1aS0+dmZzX2lu
b2RlOwogfTsKZGlmZiAtLWdpdCBhL2ZzL3ViaWZzL3ViaWZzLmggYi9mcy91Ymlmcy91Ymlmcy5o
CmluZGV4IGM1NWYyMTIuLjJhZDU5NmUgMTAwNjQ0Ci0tLSBhL2ZzL3ViaWZzL3ViaWZzLmgKKysr
IGIvZnMvdWJpZnMvdWJpZnMuaApAQCAtMzU0LDggKzM1NCwxMCBAQCBzdHJ1Y3QgdWJpZnNfZ2Nl
ZF9pZHhfbGViIHsKICAqIEB4YXR0cjogbm9uLXplcm8gaWYgdGhpcyBpcyBhbiBleHRlbmRlZCBh
dHRyaWJ1dGUgaW5vZGUKICAqIEBidWxrX3JlYWQ6IG5vbi16ZXJvIGlmIGJ1bGstcmVhZCBzaG91
bGQgYmUgdXNlZAogICogQHVpX211dGV4OiBzZXJpYWxpemVzIGlub2RlIHdyaXRlLWJhY2sgd2l0
aCB0aGUgcmVzdCBvZiBWRlMgb3BlcmF0aW9ucywKLSAqICAgICAgICAgICAgc2VyaWFsaXplcyAi
Y2xlYW4gPC0+IGRpcnR5IiBzdGF0ZSBjaGFuZ2VzLCBzZXJpYWxpemVzIGJ1bGstcmVhZCwKLSAq
ICAgICAgICAgICAgcHJvdGVjdHMgQGRpcnR5LCBAYnVsa19yZWFkLCBAdWlfc2l6ZSwgYW5kIEB4
YXR0cl9zaXplCisgKiAgICAgICAgICAgIHNlcmlhbGl6ZXMgImNsZWFuIDwtPiBkaXJ0eSIgc3Rh
dGUgY2hhbmdlcywKKyAqICAgICAgICAgICAgcHJvdGVjdHMgQGRpcnR5LCBAdWlfc2l6ZSwgYW5k
IEB4YXR0cl9zaXplCisgKiBAdWlfYnVsa19yZWFkX211dGV4OiBzZXJpYWxpemVzIGJ1bGstcmVh
ZCwgcHJvdGVjdHMgQGJ1bGtfcmVhZCwKKyAqICAgICAgICAgICAgICAgICAgICAgIEBsYXN0X3Bh
Z2VfcmVhZCBhbmQgQHJlYWRfaW5fYV9yb3cKICAqIEB1aV9sb2NrOiBwcm90ZWN0cyBAc3luY2Vk
X2lfc2l6ZQogICogQHN5bmNlZF9pX3NpemU6IHN5bmNocm9uaXplZCBzaXplIG9mIGlub2RlLCBp
LmUuIHRoZSB2YWx1ZSBvZiBpbm9kZSBzaXplCiAgKiAgICAgICAgICAgICAgICAgY3VycmVudGx5
IHN0b3JlZCBvbiB0aGUgZmxhc2g7IHVzZWQgb25seSBmb3IgcmVndWxhciBmaWxlCkBAIC00MDks
NiArNDExLDcgQEAgc3RydWN0IHViaWZzX2lub2RlIHsKIAl1bnNpZ25lZCBpbnQgYnVsa19yZWFk
OjE7CiAJdW5zaWduZWQgaW50IGNvbXByX3R5cGU6MjsKIAlzdHJ1Y3QgbXV0ZXggdWlfbXV0ZXg7
CisJc3RydWN0IG11dGV4IHVpX2J1bGtfcmVhZF9tdXRleDsKIAlzcGlubG9ja190IHVpX2xvY2s7
CiAJbG9mZl90IHN5bmNlZF9pX3NpemU7CiAJbG9mZl90IHVpX3NpemU7Ci0tIAoyLjcuNAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
