Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10118137C70
	for <lists+linux-mtd@lfdr.de>; Sat, 11 Jan 2020 09:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p03ycRza9hudxXTX9fjWd3nyC0laNGJy61wPC9Ox5io=; b=j6xClHEGMIXgnP
	d+4lgdabrrDVvCV4AYZGEgQ4FrnIzKNQ4DuhRxg06jxop6tzfqRb0m2Tf1Hhwj2KK0d0zMLOzJUZO
	zTS3vrQfb+hsH0bh7RbiXT0lUZiO0g8lpZ2hem+9WJF9+q0hoAPzuil6GFEmXo5NliAKZohhljRih
	LjGCMGUvu6zudtgNOMn+KdfIsUxsc+8QA3w7zcArodT7Qd32IAclk58eVlBYMdHTpYm7hCvpzjLYg
	UvF5jKwpIjbR4UXyDfh7JgfdP+bx7cMkdevfz+/AjIi7cssq1BDn4ra8stVvO0e9tQq3ierDe5r8W
	Wx4IU1B3edhNPERr+XUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqCKX-0001Uq-9G; Sat, 11 Jan 2020 08:41:13 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqCKM-0001U3-6b
 for linux-mtd@lists.infradead.org; Sat, 11 Jan 2020 08:41:04 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2F1D7B65198CD1FD69F7;
 Sat, 11 Jan 2020 16:40:52 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.179) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0;
 Sat, 11 Jan 2020 16:40:45 +0800
Subject: Re: [PATCH] ubifs: Fix deadlock in concurrent bulk-read and writepage
To: Zhihao Cheng <chengzhihao1@huawei.com>, <richard@nod.at>,
 <s.hauer@pengutronix.de>, <ext-adrian.hunter@nokia.com>
References: <1578663215-146583-1-git-send-email-chengzhihao1@huawei.com>
From: "zhangyi (F)" <yi.zhang@huawei.com>
Message-ID: <d7f23b19-9bf2-014c-2d19-e39cb6c1db9a@huawei.com>
Date: Sat, 11 Jan 2020 16:40:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <1578663215-146583-1-git-send-email-chengzhihao1@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.173.220.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_004102_418460_4DE9CC8E 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGksIFpoaWhhbwoKTm90IHN1cmUgdGhlIHNpZGUgZWZmZWN0cyBvZiBkcm9wcGluZyB1aS0+dWlf
bXV0ZXggaW4gdWJpZnNfYnVsa19yZWFkKCksCnRoZSBpbm9kZS0+aV9zaXplIG1heSBiZSBpbmNv
cnJlY3QgZHVlIHRvIHRoZSBjb25jdXJyZW50IHRydW5jYXRlPwoKSSB0aGluayBpdCdzIGJldHRl
ciB0byBwYXNzIEZHUF9OT1dBSVQgd2hlbiBpbnZva2luZyBwYWdlY2FjaGVfZ2V0X3BhZ2UoKQph
bmQgc3RvcCBidWxrIHJlYWQgd2hlbiB3ZSBmYWlsZWQgdG8gbG9jayB0aGUgcGFnZSwgdGhvdWdo
dHM/CgpZaS4KCk9uIDIwMjAvMS8xMCAyMTozMywgWmhpaGFvIENoZW5nIHdyb3RlOgo+IEluIHVi
aWZzLCBjb25jdXJyZW50IGV4ZWN1dGlvbiBvZiB3cml0ZXBhZ2UgYW5kIGJ1bGsgcmVhZCBvbiB0
aGUgc2FtZSBmaWxlCj4gbWF5IGNhdXNlIEFCQkEgZGVhZGxvY2ssIGZvciBleGFtcGxlIChSZXBy
b2R1Y2UgbWV0aG9kIHNlZSBMaW5rKToKPiAKPiBQcm9jZXNzIEEoQnVsay1yZWFkIHN0YXJ0cyBm
cm9tIHBhZ2U0KSAgICAgICAgIFByb2Nlc3MgQih3cml0ZSBwYWdlNCBiYWNrKQo+ICAgdmZzX3Jl
YWQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3Yl93b3JrZm4gb3IgZnN5
bmMKPiAgIC4uLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLi4u
Cj4gICBnZW5lcmljX2ZpbGVfYnVmZmVyZWRfcmVhZCAgICAgICAgICAgICAgICAgICAgIHdyaXRl
X2NhY2hlX3BhZ2VzCj4gICAgIHViaWZzX3JlYWRwYWdlICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgTE9DSyhwYWdlNCkKPiAKPiAgICAgICB1Ymlmc19idWxrX3JlYWQgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1Ymlmc193cml0ZXBhZ2UKPiAgICAgICAgIExPQ0sodWktPnVp
X211dGV4KSAgICAgICAgICAgICAgICAgICAgICAgICAgIHViaWZzX3dyaXRlX2lub2RlCj4gCj4g
CSAgdWJpZnNfZG9fYnVsa19yZWFkICAgICAgICAgICAgICAgICAgICAgICAgICAgTE9DSyh1aS0+
dWlfbXV0ZXgpCj4gCSAgICBmaW5kX29yX2NyZWF0ZV9wYWdlKGFsbG9jIHBhZ2U0KSAgICAgICAg
ICAgICAgICAgIOKGkQo+IAkgICAgICBMT0NLKHBhZ2U0KSAgICAgICAgICAgICAgICAgICA8LS0g
ICAgIEFCQkEgZGVhZGxvY2sgb2NjdXJzIQo+IAo+IEluIG9yZGVyIHRvIGVuc3VyZSB0aGUgc2Vy
aWFsaXphdGlvbiBleGVjdXRpb24gb2YgYnVsayByZWFkLCB3ZSBjYW4ndAo+IHJlbW92ZSB0aGUg
YmlnIGxvY2sgJ3VpLT51aV9tdXRleCcgaW4gdWJpZnNfYnVsa19yZWFkKCkuIEluc3RlYWQsIHdl
IGFkZAo+IGEgbmV3IG11dGV4IGxvY2sgZm9yIGJ1bGsgcmVhZCBpbiB1Ymlmc19pbm9kZS4gdWJp
ZnNfYnVsa19yZWFkKCkgd2lsbCBiZQo+IHByb3RlY3RlZCBieSB0aGUgbmV3IG11dGV4IGxvY2sg
d2hpY2ggcmVwbGFjZXMgdWlfbXV0ZXguCj4gSXQgaXMgY29uZmlybWVkIHRoYXQgYnVsay1yZWFk
IChidWxrIHJlYWQgZGF0YSBtZW1iZXIgYW5kIHByb2Nlc3MpIGFuZAo+IG90aGVyIG1lbWJlcnMg
KHdoaWNoIGFyZSBwcm90ZWN0ZWQgYnkgdGhlIHVpX211dGV4IGluIHViaWZzX2lub2RlKSBhcmUK
PiBpbmRlcGVuZGVudCBvZiBlYWNoIG90aGVyLCBpbmNsdWRpbmcgYXR0ciwgZGlydHkgKCJjbGVh
biA8LT4gZGlydHkiCj4gdHJhbnNpdGlvbnMpLCB1aV9zaXplICh0cnVuY2F0ZSBwcm9jZXNzKSwg
ZXRjLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFpoaWhhbyBDaGVuZyA8Y2hlbmd6aGloYW8xQGh1YXdl
aS5jb20+Cj4gQ2M6IDxTdGFibGVAdmdlci5rZXJuZWwub3JnPgo+IEZpeGVzOiA0NzkzZTdjNWUx
YyAoIlVCSUZTOiBhZGQgYnVsay1yZWFkIGZhY2lsaXR5IikKPiBMaW5rOiBodHRwczovL2J1Z3pp
bGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIwNjE1Mwo+IC0tLQo+ICBmcy91Ymlmcy9m
aWxlLmMgIHwgMjEgKysrKysrKysrKysrKysrKystLS0tCj4gIGZzL3ViaWZzL3N1cGVyLmMgfCAg
MSArCj4gIGZzL3ViaWZzL3ViaWZzLmggfCAgNyArKysrKy0tCj4gIDMgZmlsZXMgY2hhbmdlZCwg
MjMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZnMvdWJp
ZnMvZmlsZS5jIGIvZnMvdWJpZnMvZmlsZS5jCj4gaW5kZXggY2Q1MjU4NS4uM2UxNWMyNyAxMDA2
NDQKPiAtLS0gYS9mcy91Ymlmcy9maWxlLmMKPiArKysgYi9mcy91Ymlmcy9maWxlLmMKPiBAQCAt
ODM2LDEwICs4MzYsMjMgQEAgc3RhdGljIGludCB1Ymlmc19idWxrX3JlYWQoc3RydWN0IHBhZ2Ug
KnBhZ2UpCj4gIAkJcmV0dXJuIDA7Cj4gIAo+ICAJLyoKPiAtCSAqIEJ1bGstcmVhZCBpcyBwcm90
ZWN0ZWQgYnkgQHVpLT51aV9tdXRleCwgYnV0IGl0IGlzIGFuIG9wdGltaXphdGlvbiwKPiAtCSAq
IHNvIGRvbid0IGJvdGhlciBpZiB3ZSBjYW5ub3QgbG9jayB0aGUgbXV0ZXguCj4gKwkgKiBCdWxr
LXJlYWQgaXMgcHJvdGVjdGVkIGJ5IEB1aS0+dWlfYnVsa19yZWFkX211dGV4LCB1Ymlmc19yZWFk
cGFnZSgpCj4gKwkgKiB3aWxsIGFsbCBjb21lIGhlcmUuIElmIHRoZXJlIGFyZSBvdGhlciBjb25j
dXJyZW50IHJlYWQgdGFza3MgZHVyaW5nCj4gKwkgKiBidWxrLXJlYWQsIGRlYWRsb2NrIG1heSBv
Y2N1ciwgc3VjaCBhczoKPiArCSAqIFByb2Nlc3MgQShCdWxrLXJlYWQgc3RhcnRzIGZyb20gcGFn
ZTQpICAgUHJvY2VzcyBCKFJlYWQgcGFnZTQpCj4gKwkgKiAgIHZmc19yZWFkICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgdmZzX3JlYWQKPiArCSAqICAgICAuLi4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC4uLgo+ICsJICogICAgIHViaWZzX3JlYWRwYWdlICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZmluZF9nZXRfcGFnZShhbGxvYyBwYWdlNCkKPiArCSAq
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYWRkX3RvX3Bh
Z2VfY2FjaGVfbHJ1Cj4gKwkgKiAgICAgICB1Ymlmc19idWxrX3JlYWQgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgTE9DSyhwYWdlNCkKPiArCSAqICAgICAgICAgTE9DSyh1aS0+dWlfYnVsa19y
ZWFkX211dGV4KSAgICAgICAgIHViaWZzX3JlYWRwYWdlCj4gKwkgKiAgICAgICAgICAgdWJpZnNf
ZG9fYnVsa19yZWFkICAgICAgICAgICAgICAgICAgIHViaWZzX2J1bGtfcmVhZAo+ICsJICogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIExPQ0sodWktPnVp
X2J1bGtfcmVhZF9tdXRleCkKPiArCSAqICAgICAgICAgICAgIGZpbmRfb3JfY3JlYXRlX3BhZ2Ug
ICAgICAgICAgICAgICAgICAgICAgICAg4oaRCj4gKwkgKiAgICAgICAgICAgICAgIExPQ0socGFn
ZTQpCQkgICAgICAgPC0tIEFCQkEgZGVhZGxvY2sgb2NjdXJzIQo+ICsJICogU28gZG9uJ3QgYm90
aGVyIGlmIHdlIGNhbm5vdCBsb2NrIHRoZSBtdXRleC4KPiAgCSAqLwo+IC0JaWYgKCFtdXRleF90
cnlsb2NrKCZ1aS0+dWlfbXV0ZXgpKQo+ICsJaWYgKCFtdXRleF90cnlsb2NrKCZ1aS0+dWlfYnVs
a19yZWFkX211dGV4KSkKPiAgCQlyZXR1cm4gMDsKPiAgCj4gIAlpZiAoaW5kZXggIT0gbGFzdF9w
YWdlX3JlYWQgKyAxKSB7Cj4gQEAgLTg4NCw3ICs4OTcsNyBAQCBzdGF0aWMgaW50IHViaWZzX2J1
bGtfcmVhZChzdHJ1Y3QgcGFnZSAqcGFnZSkKPiAgCQlrZnJlZShidSk7Cj4gIAo+ICBvdXRfdW5s
b2NrOgo+IC0JbXV0ZXhfdW5sb2NrKCZ1aS0+dWlfbXV0ZXgpOwo+ICsJbXV0ZXhfdW5sb2NrKCZ1
aS0+dWlfYnVsa19yZWFkX211dGV4KTsKPiAgCXJldHVybiBlcnI7Cj4gIH0KPiAgCj4gZGlmZiAt
LWdpdCBhL2ZzL3ViaWZzL3N1cGVyLmMgYi9mcy91Ymlmcy9zdXBlci5jCj4gaW5kZXggNWUxZThl
Yy4uYzQ0MTViMyAxMDA2NDQKPiAtLS0gYS9mcy91Ymlmcy9zdXBlci5jCj4gKysrIGIvZnMvdWJp
ZnMvc3VwZXIuYwo+IEBAIC0yNTcsNiArMjU3LDcgQEAgc3RhdGljIHN0cnVjdCBpbm9kZSAqdWJp
ZnNfYWxsb2NfaW5vZGUoc3RydWN0IHN1cGVyX2Jsb2NrICpzYikKPiAgCW1lbXNldCgodm9pZCAq
KXVpICsgc2l6ZW9mKHN0cnVjdCBpbm9kZSksIDAsCj4gIAkgICAgICAgc2l6ZW9mKHN0cnVjdCB1
Ymlmc19pbm9kZSkgLSBzaXplb2Yoc3RydWN0IGlub2RlKSk7Cj4gIAltdXRleF9pbml0KCZ1aS0+
dWlfbXV0ZXgpOwo+ICsJbXV0ZXhfaW5pdCgmdWktPnVpX2J1bGtfcmVhZF9tdXRleCk7Cj4gIAlz
cGluX2xvY2tfaW5pdCgmdWktPnVpX2xvY2spOwo+ICAJcmV0dXJuICZ1aS0+dmZzX2lub2RlOwo+
ICB9Owo+IGRpZmYgLS1naXQgYS9mcy91Ymlmcy91Ymlmcy5oIGIvZnMvdWJpZnMvdWJpZnMuaAo+
IGluZGV4IGM1NWYyMTIuLjJhZDU5NmUgMTAwNjQ0Cj4gLS0tIGEvZnMvdWJpZnMvdWJpZnMuaAo+
ICsrKyBiL2ZzL3ViaWZzL3ViaWZzLmgKPiBAQCAtMzU0LDggKzM1NCwxMCBAQCBzdHJ1Y3QgdWJp
ZnNfZ2NlZF9pZHhfbGViIHsKPiAgICogQHhhdHRyOiBub24temVybyBpZiB0aGlzIGlzIGFuIGV4
dGVuZGVkIGF0dHJpYnV0ZSBpbm9kZQo+ICAgKiBAYnVsa19yZWFkOiBub24temVybyBpZiBidWxr
LXJlYWQgc2hvdWxkIGJlIHVzZWQKPiAgICogQHVpX211dGV4OiBzZXJpYWxpemVzIGlub2RlIHdy
aXRlLWJhY2sgd2l0aCB0aGUgcmVzdCBvZiBWRlMgb3BlcmF0aW9ucywKPiAtICogICAgICAgICAg
ICBzZXJpYWxpemVzICJjbGVhbiA8LT4gZGlydHkiIHN0YXRlIGNoYW5nZXMsIHNlcmlhbGl6ZXMg
YnVsay1yZWFkLAo+IC0gKiAgICAgICAgICAgIHByb3RlY3RzIEBkaXJ0eSwgQGJ1bGtfcmVhZCwg
QHVpX3NpemUsIGFuZCBAeGF0dHJfc2l6ZQo+ICsgKiAgICAgICAgICAgIHNlcmlhbGl6ZXMgImNs
ZWFuIDwtPiBkaXJ0eSIgc3RhdGUgY2hhbmdlcywKPiArICogICAgICAgICAgICBwcm90ZWN0cyBA
ZGlydHksIEB1aV9zaXplLCBhbmQgQHhhdHRyX3NpemUKPiArICogQHVpX2J1bGtfcmVhZF9tdXRl
eDogc2VyaWFsaXplcyBidWxrLXJlYWQsIHByb3RlY3RzIEBidWxrX3JlYWQsCj4gKyAqICAgICAg
ICAgICAgICAgICAgICAgIEBsYXN0X3BhZ2VfcmVhZCBhbmQgQHJlYWRfaW5fYV9yb3cKPiAgICog
QHVpX2xvY2s6IHByb3RlY3RzIEBzeW5jZWRfaV9zaXplCj4gICAqIEBzeW5jZWRfaV9zaXplOiBz
eW5jaHJvbml6ZWQgc2l6ZSBvZiBpbm9kZSwgaS5lLiB0aGUgdmFsdWUgb2YgaW5vZGUgc2l6ZQo+
ICAgKiAgICAgICAgICAgICAgICAgY3VycmVudGx5IHN0b3JlZCBvbiB0aGUgZmxhc2g7IHVzZWQg
b25seSBmb3IgcmVndWxhciBmaWxlCj4gQEAgLTQwOSw2ICs0MTEsNyBAQCBzdHJ1Y3QgdWJpZnNf
aW5vZGUgewo+ICAJdW5zaWduZWQgaW50IGJ1bGtfcmVhZDoxOwo+ICAJdW5zaWduZWQgaW50IGNv
bXByX3R5cGU6MjsKPiAgCXN0cnVjdCBtdXRleCB1aV9tdXRleDsKPiArCXN0cnVjdCBtdXRleCB1
aV9idWxrX3JlYWRfbXV0ZXg7Cj4gIAlzcGlubG9ja190IHVpX2xvY2s7Cj4gIAlsb2ZmX3Qgc3lu
Y2VkX2lfc2l6ZTsKPiAgCWxvZmZfdCB1aV9zaXplOwo+IAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tdGQvCg==
