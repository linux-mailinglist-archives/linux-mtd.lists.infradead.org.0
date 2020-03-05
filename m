Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BD117A212
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Mar 2020 10:15:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6MxuJzMRkbRD8LVHkHZxxBe73F+RkT42URWft5sc/k=; b=P5MMqlcGWmBLzy
	vAVSogAIjnF23/cOqjHJ83mT1Vlp/U/hqJQbSkw5aPF96jOSn1cSGVVN3ML1bOkKHm+MaX/U6g5rB
	BqwijdBrLUlu5VgK7Gyqh/mHF4mDS5kU7wY3tRXATgNcDr2cZneK65nUN5RUFxq+meurq9pdOmhM7
	3q/XEK0ZxB5JMXjqyZenuR1mRUPRKBHnFlCDJApK4HIoSK5Fnzp6YgKeuZRsi1rVHqRoRs0iBdVfS
	pWsokT+mtA1aIt8ZSVH1cLOxjvg++9V9vPu6S5Yl9Ioi3UYxF3q5wfdXoeYUz8/n4T92OAwRFV5Wv
	QOlz35s7pRRavkrIi5sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9mbe-0003Sg-HG; Thu, 05 Mar 2020 09:15:50 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9mb9-0002g3-Iw
 for linux-mtd@lists.infradead.org; Thu, 05 Mar 2020 09:15:21 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D14D3D38D96433526A6C;
 Thu,  5 Mar 2020 17:15:01 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Thu, 5 Mar 2020
 17:14:51 +0800
From: Hou Tao <houtao1@huawei.com>
To: <linux-mtd@lists.infradead.org>, Richard Weinberger <richard@nod.at>
Subject: [PATCH v3 2/2] ubifs: read node from wbuf when it fully sits in wbuf
Date: Thu, 5 Mar 2020 17:22:05 +0800
Message-ID: <20200305092205.127758-3-houtao1@huawei.com>
X-Mailer: git-send-email 2.25.0.4.g0ad7144999
In-Reply-To: <20200305092205.127758-1-houtao1@huawei.com>
References: <20200305092205.127758-1-houtao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_011519_828846_683BEA7B 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Carson.Li1@unisoc.com, Adrian Hunter <ext-adrian.hunter@nokia.com>,
 houtao1@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Q2Fyc29uIExpIFJlcG9ydHMgdGhlIGZvbGxvd2luZyBlcnJvcjoKCiBVQklGUyBlcnJvcjogdWJp
ZnNfcmVhZF9ub2RlX3didWY6IGV4cGVjdGVkIG5vZGUgdHlwZSAwCiBOb3QgYSBub2RlLCBmaXJz
dCAyNCBieXRlczoKIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nCiBDUFU6IDEgUElEOiA5NDMg
Q29tbTogaHR0cC10aHJlYWQgNC40LjgzICMxCiAgIHBhbmljKzB4NzAvMHgxZTQKICAgdWJpZnNf
ZHVtcF9ub2RlKzB4NmMvMHg5YTAKICAgdWJpZnNfcmVhZF9ub2RlX3didWYrMHgzNTAvMHgzODQK
ICAgdWJpZnNfdG5jX3JlYWRfbm9kZSsweDU0LzB4MjE0CiAgIHViaWZzX3RuY19sb2NhdGUrMHgx
MTgvMHgxYjQKICAgdWJpZnNfaWdldCsweGI4LzB4NjhjCiAgIHViaWZzX2xvb2t1cCsweDFiNC8w
eDI1OAogICBsb29rdXBfcmVhbCsweDMwLzB4NGMKICAgX19sb29rdXBfaGFzaCsweDM0LzB4M2MK
ICAgd2Fsa19jb21wb25lbnQrMHhlYy8weDJhMAogICBwYXRoX2xvb2t1cGF0KzB4ODAvMHhmYwog
ICBmaWxlbmFtZV9sb29rdXArMHg1Yy8weGZjCiAgIHZmc19mc3RhdGF0KzB4NGMvMHg5YwogICBT
eVNfc3RhdDY0KzB4MTQvMHgzMAogICByZXRfZmFzdF9zeXNjYWxsKzB4MC8weDM0CgpJdCBzZWVt
cyB0aGUgTEVCIHVzZWQgYXMgREFUQSBqb3VybmFsIGhlYWQgaXMgR0MnZWQsIGFuZCB1Ymlmc190
bmNfbG9jYXRlKCkKcmVhZCBhbiBpbnZhbGlkIG5vZGUuIEJ1dCBub3cgdGhlIHByb3BlcnR5IG9m
IGpvdXJuYWwgaGVhZCBMRUIgaGFzCkxQUk9QU19UQUtFTiBmbGFnIHNldCBhbmQgR0Mgd2lsbCBz
a2lwIHRoZXNlIExFQnMuCgpUaGUgYWN0dWFsIHNpdHVhdGlvbiBvZiB0aGUgcHJvYmxlbSBpcyB0
aGUgTEVCIGlzIEdDZWQsIGZyZWVkIGFuZCB0aGVuCnJldXNlZCBhcyBqb3VybmFsIGhlYWQsIGFu
ZCBmaW5hbGx5IHViaWZzX3RuY19sb2NhdGUoKSByZWFkcwphbiBpbnZhbGlkIG5vZGUuIEFuZCBp
dCBjYW4gYmUgcmVwcm9kdWNlZCBieSB0aGUgZm9sbG93aW5nIHN0ZXBzOgoqIGNyZWF0ZSAxMjgg
ZW1wdHkgZmlsZXMKKiBvdmVyd3JpdGUgOCBmaWxlcyBpbiBiYWNrZ3JvdXAgcmVwZWF0ZWRseSB0
byB0cmlnZ2VyIEdDCiogZHJvcCBpbm9kZSBjYWNoZSBhbmQgc3RhdCB0aGVzZSAxMjggZW1wdHkg
ZmlsZXMgcmVwZWF0ZWRseQoKV2UgY2FuIHNpbXBseSBmaXggdGhlIHByb2JsZW0gYnkgcmVtb3Zp
bmcgdGhlIG9wdGltaXphdGlvbiBvZiByZWFkaW5nCndidWYgd2hlbiBwb3NzaWJsZS4gQnV0IGJl
Y2F1c2UgdGFraW5nIHNwaW4gbG9jayBhbmQgbWVtY3B5aW5nIGZyb20Kd2J1ZiBpcyBtdWNoIGxl
c3MgdGltZS1jb25zdW1pbmcgdGhhbiByZWFkaW5nIGZyb20gTVREIGRldmljZSwgc28gd2UgZml4
CnRoZSBsb2dpYyBvZiB3YnVmIHJlYWRpbmcgaW5zdGVhZC4KCklmIHRoZSBub2RlIGlzIG5vdCBm
dWxseSBjb250YWluZWQgaW4gd3JpdGUgYnVmZmVyLCB3ZSB3aWxsIHRyeSB0bwpyZWFkaW5nIHRo
ZSByZW1haW5lZCBub2RlIGZyb20gTVREIHdpdGhvdXQgYW55IGxvY2ssIGFuZCB0aGUKam91cm5h
bCBoZWFkIG1heSBiZSBzd2l0Y2hlZCBhbmQgR0NlZCwgYW5kIHdlIHdpbGwgZ2V0IGludmFsaWQK
bm9kZSBkYXRhLiBTbyB3ZSBvbmx5IHJlYWQgZnJvbSB3YnVmIGlmIHRoZSBub2RlIGZ1bGx5IHNp
dHMgaW4KdGhlIHdyaXRlIGJ1ZmZlci4KCkFuZCB3ZSBhbHNvIG5lZWQgdG8gY2hlY2sgd2hldGhl
ciBvciBub3QgdGhlIGN1cnJlbnQgaXMgTEVCIGlzIEdDJ2VkCmFuZCByZXVzZWQgYXMgam91cm5h
bCBoZWFkLgoKTGluazogaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtbXRkL21z
ZzEwNzcxLmh0bWwKRml4ZXM6IDYwMWMwYmM0Njc1MyAoIlVCSUZTOiBhbGxvdyBmb3IgcmFjaW5n
IGJldHdlZW4gR0MgYW5kIFROQyIpClJlcG9ydGVkLWFuZC1hbmFseXplZC1ieTog5p2O5YKy5YKy
IChDYXJzb24gTGkxLzk1NDIpIDxDYXJzb24uTGkxQHVuaXNvYy5jb20+ClNpZ25lZC1vZmYtYnk6
IEhvdSBUYW8gPGhvdXRhbzFAaHVhd2VpLmNvbT4KLS0tCiBmcy91Ymlmcy90bmMuYyB8IDgxICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgNzggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9m
cy91Ymlmcy90bmMuYyBiL2ZzL3ViaWZzL3RuYy5jCmluZGV4IGU4ZTdiMGU5NTMyZS4uZDRjMDQz
NWQwMjc2IDEwMDY0NAotLS0gYS9mcy91Ymlmcy90bmMuYworKysgYi9mcy91Ymlmcy90bmMuYwpA
QCAtMTQyNSw2ICsxNDI1LDc0IEBAIHN0YXRpYyBpbnQgbWF5YmVfbGViX2djZWQoc3RydWN0IHVi
aWZzX2luZm8gKmMsIGludCBsbnVtLCBpbnQgZ2Nfc2VxMSkKIAlyZXR1cm4gMDsKIH0KIAorLyoq
CisgKiB1Ymlmc19jaGVja19hbmRfcmVhZF93YnVmIC0gcmVhZCBub2RlIGZyb20gd3JpdGUtYnVm
ZmVyIGlmIHBvc3NpYmxlCisgKiBAYzogVUJJRlMgZmlsZS1zeXN0ZW0gZGVzY3JpcHRpb24gb2Jq
ZWN0CisgKiBAemJyOiB0aGUgemJyYW5jaCBkZXNjcmliaW5nIHRoZSBub2RlIHRvIHJlYWQKKyAq
IEBnY19zZXE6IHRoZSBzYXZlZCBHQyBzZXF1ZW5jZSB1c2VkIGZvciBHQyBjaGVja2luZworICog
QGJ1ZjogYnVmZmVyIHRvIHJlYWQgdG8KKyAqIEByZXRyeTogd2hldGhlciB0cnkgdG8gbG9va3Vw
IFROQyBhZ2FpbgorICoKKyAqIFRoZSBmdW5jdGlvbiBjaGVja3Mgd2hldGhlciB0aGUgbm9kZSBm
dWxseSBzaXRzIGluIHRoZSB3cml0ZS1idWZmZXIKKyAqIGFuZCB3aGV0aGVyIHRoZSBMRUIgdXNl
ZCBieSB3cml0ZS1idWZmZXIgaXMgbm90IEdDZWQgcmVjZW50bHksCisgKiB0aGVuIGl0IHdpbGwg
cmVhZCB0aGUgbm9kZSwgY2hlY2tzIGl0IGFuZCBzdG9yZXMgaW4gQGJ1Zi4KKyAqCisgKiBSZXR1
cm5zIDEgaW4gY2FzZSBvZiBzdWNjZXNzLCAwIGluIGNhc2Ugb2Ygbm90IGZvdW5kLCBhbmQgYSBu
ZWdhdGl2ZQorICogZXJyb3IgY29kZSBpbiBjYXNlIG9mIGZhaWx1cmUuCisgKgorICogSWYgdGhl
IG5vZGUgaXMgbm90IGluIHdyaXRlLWJ1ZmZlciBhbmQgdGhlIExFQiB1c2VkIGJ5IHdyaXRlLWJ1
ZmZlcgorICogbWF5IGJlIEdDZWQgcmVjZW50bHksIEByZXRyeSB3aWxsIGJlIHRydWUsIGVsc2Ug
ZmFsc2UuCisgKi8KK3N0YXRpYyBpbnQgdWJpZnNfY2hlY2tfYW5kX3JlYWRfd2J1ZihzdHJ1Y3Qg
dWJpZnNfaW5mbyAqYywKKwkJCQkgICAgIGNvbnN0IHN0cnVjdCB1Ymlmc196YnJhbmNoICp6YnIs
CisJCQkJICAgICBpbnQgZ2Nfc2VxLCB2b2lkICpidWYsIGJvb2wgKnJldHJ5KQoreworCWJvb2wg
Zm91bmQgPSBmYWxzZTsKKwlpbnQgbG51bSA9IHpici0+bG51bTsKKwlpbnQgb2ZmcyA9IHpici0+
b2ZmczsKKwlpbnQgbGVuID0gemJyLT5sZW47CisJaW50IHR5cGU7CisJaW50IGk7CisJaW50IGVy
cjsKKworCSpyZXRyeSA9IGZhbHNlOworCWZvciAoaSA9IDA7IGkgPCBjLT5qaGVhZF9jbnQ7IGkr
KykgeworCQlzdHJ1Y3QgdWJpZnNfd2J1ZiAqd2J1ZiA9ICZjLT5qaGVhZHNbaV0ud2J1ZjsKKwor
CQkvKiBDaGVjayB3aGV0aGVyIHRoZSBub2RlIGlzIGZ1bGx5IGluY2x1ZGVkIGluIHdidWYgKi8K
KwkJc3Bpbl9sb2NrKCZ3YnVmLT5sb2NrKTsKKwkJaWYgKHdidWYtPmxudW0gPT0gbG51bSAmJiB3
YnVmLT5vZmZzIDw9IG9mZnMgJiYKKwkJICAgIG9mZnMgKyBsZW4gPD0gd2J1Zi0+b2ZmcyArIHdi
dWYtPnVzZWQpIHsKKwkJCS8qCisJCQkgKiBsbnVtIGlzIEdDJ2VkIGFuZCByZXVzZWQgYXMgam91
cm5hbCBoZWFkLAorCQkJICogd2UgbmVlZCB0byBsb29rdXAgVE5DIGFnYWluLgorCQkJICovCisJ
CQlpZiAobWF5YmVfbGViX2djZWQoYywgbG51bSwgZ2Nfc2VxKSkgeworCQkJCXNwaW5fdW5sb2Nr
KCZ3YnVmLT5sb2NrKTsKKwkJCQkqcmV0cnkgPSB0cnVlOworCQkJCWJyZWFrOworCQkJfQorCisJ
CQltZW1jcHkoYnVmLCB3YnVmLT5idWYgKyBvZmZzIC0gd2J1Zi0+b2ZmcywgbGVuKTsKKwkJCXNw
aW5fdW5sb2NrKCZ3YnVmLT5sb2NrKTsKKwkJCWZvdW5kID0gdHJ1ZTsKKwkJCWJyZWFrOworCQl9
CisJCXNwaW5fdW5sb2NrKCZ3YnVmLT5sb2NrKTsKKwl9CisKKwlpZiAoIWZvdW5kKQorCQlyZXR1
cm4gMDsKKworCXR5cGUgPSBrZXlfdHlwZShjLCAmemJyLT5rZXkpOworCWVyciA9IHViaWZzX2No
ZWNrX25vZGVfYnVmKGMsIGJ1ZiwgdHlwZSwgbGVuLCBsbnVtLCBvZmZzLAorCQkJCSAgIFVCSUZT
X0NIS19GT1JDRV9EVU1QX0JBRF9OT0RFKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOworCisJ
cmV0dXJuIDE7Cit9CisKIC8qKgogICogdWJpZnNfdG5jX2xvY2F0ZSAtIGxvb2sgdXAgYSBmaWxl
LXN5c3RlbSBub2RlIGFuZCByZXR1cm4gaXQgYW5kIGl0cyBsb2NhdGlvbi4KICAqIEBjOiBVQklG
UyBmaWxlLXN5c3RlbSBkZXNjcmlwdGlvbiBvYmplY3QKQEAgLTE0NDQsNiArMTUxMiw3IEBAIGlu
dCB1Ymlmc190bmNfbG9jYXRlKHN0cnVjdCB1Ymlmc19pbmZvICpjLCBjb25zdCB1bmlvbiB1Ymlm
c19rZXkgKmtleSwKIAlpbnQgZm91bmQsIG4sIGVyciwgc2FmZWx5ID0gMCwgZ2Nfc2VxMTsKIAlz
dHJ1Y3QgdWJpZnNfem5vZGUgKnpub2RlOwogCXN0cnVjdCB1Ymlmc196YnJhbmNoIHpiciwgKnp0
OworCWJvb2wgcmV0cnk7CiAKIGFnYWluOgogCW11dGV4X2xvY2soJmMtPnRuY19tdXRleCk7CkBA
IC0xNDc3LDEwICsxNTQ2LDE2IEBAIGludCB1Ymlmc190bmNfbG9jYXRlKHN0cnVjdCB1Ymlmc19p
bmZvICpjLCBjb25zdCB1bmlvbiB1Ymlmc19rZXkgKmtleSwKIAlnY19zZXExID0gYy0+Z2Nfc2Vx
OwogCW11dGV4X3VubG9jaygmYy0+dG5jX211dGV4KTsKIAotCWlmICh1Ymlmc19nZXRfd2J1Zihj
LCB6YnIubG51bSkpIHsKLQkJLyogV2UgZG8gbm90IEdDIGpvdXJuYWwgaGVhZHMgKi8KLQkJZXJy
ID0gdWJpZnNfdG5jX3JlYWRfbm9kZShjLCAmemJyLCBub2RlKTsKKwllcnIgPSB1Ymlmc19jaGVj
a19hbmRfcmVhZF93YnVmKGMsICZ6YnIsIGdjX3NlcTEsIG5vZGUsICZyZXRyeSk7CisJaWYgKGVy
ciA8IDApCiAJCXJldHVybiBlcnI7CisJLyogZmluZCBhIHZhbGlkIG5vZGUgKi8KKwlpZiAoZXJy
ID4gMCkKKwkJcmV0dXJuIDA7CisJLyogVGhlIG5vZGUgaXMgR0MnZWQsIHNvIGxvb2t1cCBpdCBh
Z2FpbiAqLworCWlmIChyZXRyeSkgeworCQlzYWZlbHkgPSAxOworCQlnb3RvIGFnYWluOwogCX0K
IAogCWVyciA9IGZhbGxpYmxlX3JlYWRfbm9kZShjLCBrZXksICZ6YnIsIG5vZGUpOwotLSAKMi4y
NS4wLjQuZzBhZDcxNDQ5OTkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
