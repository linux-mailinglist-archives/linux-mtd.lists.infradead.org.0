Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79188137CAE
	for <lists+linux-mtd@lfdr.de>; Sat, 11 Jan 2020 10:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=skXi8wSg7lUP9nOpf6sI3Olq0W75OdjSkdoxSD/QR3A=; b=THw5PAC7W3HqIj
	NjcP0r2F1vnTtaTqAdwYnLG5nt7ngnRvEej8zThMY74StivzviQk+UfCzJCkgi7xgdun2iSIShgMr
	y8eRd82NyEm1Nht18dbmjmLAEhW157+uZkqgLyEG7tNpOzXTOqdXIp2JHAPNC89z5NRMckAkW5r0X
	w+p3EV4ljsF9O6KXJiWKB3R9+iD/Gux+Wc20sYlCKFU6j7K9nKW+q7LNYS4twMxPJa8WRJtCkJdD6
	qvVctgrutv8PmAIxrhHM9Azx+TLRk8ekdVbPZfyqmRZqrmCwUbsWqorTIEbTNbRM3yXrUUe4i+dHq
	zpI6pPD81gZGW1w6BkFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqDJ4-0005pj-FS; Sat, 11 Jan 2020 09:43:46 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqDIu-0005oy-44
 for linux-mtd@lists.infradead.org; Sat, 11 Jan 2020 09:43:38 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E12A9E2B3071DDC9B529;
 Sat, 11 Jan 2020 17:43:30 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Sat, 11 Jan 2020
 17:43:20 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <richard@nod.at>, <s.hauer@pengutronix.de>, <yi.zhang@huawei.com>
Subject: [PATCH v2] ubifs: Fix deadlock in concurrent bulk-read and writepage
Date: Sat, 11 Jan 2020 17:50:36 +0800
Message-ID: <1578736236-141308-1-git-send-email-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_014336_332884_CE5D67C2 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
aWZzX2J1bGtfcmVhZCgpLiBJbnN0ZWFkLCB3ZQphbGxvdyB1Ymlmc19kb19idWxrX3JlYWQoKSB0
byBsb2NrIHBhZ2UgZmFpbGVkIGJ5IHJlcGxhY2luZwpmaW5kX29yX2NyZWF0ZV9wYWdlKEZHUF9M
T0NLKSB3aXRoCnBhZ2VjYWNoZV9nZXRfcGFnZShGR1BfTE9DSyB8IEZHUF9OT1dBSVQpLgoKU2ln
bmVkLW9mZi1ieTogWmhpaGFvIENoZW5nIDxjaGVuZ3poaWhhbzFAaHVhd2VpLmNvbT4KU3VnZ2Vz
dGVkLWJ5OiB6aGFuZ3lpIChGKSA8eWkuemhhbmdAaHVhd2VpLmNvbT4KQ2M6IDxTdGFibGVAdmdl
ci5rZXJuZWwub3JnPgpGaXhlczogNDc5M2U3YzVlMWMgKCJVQklGUzogYWRkIGJ1bGstcmVhZCBm
YWNpbGl0eSIpCkxpbms6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MjA2MTUzCi0tLQogZnMvdWJpZnMvZmlsZS5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZnMvdWJpZnMvZmls
ZS5jIGIvZnMvdWJpZnMvZmlsZS5jCmluZGV4IGNkNTI1ODUuLmM2NDkwNDggMTAwNjQ0Ci0tLSBh
L2ZzL3ViaWZzL2ZpbGUuYworKysgYi9mcy91Ymlmcy9maWxlLmMKQEAgLTc4Niw3ICs3ODYsOSBA
QCBzdGF0aWMgaW50IHViaWZzX2RvX2J1bGtfcmVhZChzdHJ1Y3QgdWJpZnNfaW5mbyAqYywgc3Ry
dWN0IGJ1X2luZm8gKmJ1LAogCiAJCWlmIChwYWdlX29mZnNldCA+IGVuZF9pbmRleCkKIAkJCWJy
ZWFrOwotCQlwYWdlID0gZmluZF9vcl9jcmVhdGVfcGFnZShtYXBwaW5nLCBwYWdlX29mZnNldCwg
cmFfZ2ZwX21hc2spOworCQlwYWdlID0gcGFnZWNhY2hlX2dldF9wYWdlKG1hcHBpbmcsIHBhZ2Vf
b2Zmc2V0LAorCQkJCSBGR1BfTE9DS3xGR1BfQUNDRVNTRUR8RkdQX0NSRUFUfEZHUF9OT1dBSVQs
CisJCQkJIHJhX2dmcF9tYXNrKTsKIAkJaWYgKCFwYWdlKQogCQkJYnJlYWs7CiAJCWlmICghUGFn
ZVVwdG9kYXRlKHBhZ2UpKQotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRk
Lwo=
