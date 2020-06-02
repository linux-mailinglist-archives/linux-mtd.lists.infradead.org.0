Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF5F1EBA2D
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jun 2020 13:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cqCaog/RY2Bv1ZwYHjo1ZRwf5TaKa4xWEo2cYpm2l5o=; b=MsJcG7KmDlNJSkfry47/Vv8hB
	JlArBot3Z8GDd88BaHvVr5WLe1EOmu07QsYxXG+upmlDRGfxSUisTarCx6WoV4VrUuaZvt9gGH3Vg
	nC0h9ssgA4yCZ6BF2LtOOaBQq6xURC0Sy/XVB5uJHVt1mhBKkMQAb2iIVraRGmIN2ImlcDSxAVj8v
	YVeJHfXWQf5jTyL0Wc8VCImYAGCJqqrvAtV8oTEaCzsebhTDtXyiAlb9iuxxL5FzZ9Dd3PDwFcTBR
	HTcbGaRpehDQshLyX6A17t3kxA4e7moXAYyTuLkYcBGeCfC2suK2O9L6tnmw/qQXr7Qt3ubVQR+8l
	Dyl1h4+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg4pp-0006Zp-QI; Tue, 02 Jun 2020 11:11:57 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg4pk-0006YT-3U
 for linux-mtd@lists.infradead.org; Tue, 02 Jun 2020 11:11:53 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5220A24BEFBA87BEF44D;
 Tue,  2 Jun 2020 19:11:35 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.18) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Tue, 2 Jun 2020
 19:11:26 +0800
Subject: Re: [PATCH] ubi: fastmap: Don't produce the initial anchor PEB when
 fastmap is disabled
To: Sascha Hauer <s.hauer@pengutronix.de>
References: <20200601091134.3794265-1-chengzhihao1@huawei.com>
 <20200602092346.GK11869@pengutronix.de>
From: Zhihao Cheng <chengzhihao1@huawei.com>
Message-ID: <e7a9e993-8878-60c8-49c4-9471421f6e11@huawei.com>
Date: Tue, 2 Jun 2020 19:11:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200602092346.GK11869@pengutronix.de>
X-Originating-IP: [10.166.213.18]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_041152_314880_09F78B63 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 yi.zhang@huawei.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

1NogMjAyMC82LzIgMTc6MjMsIFNhc2NoYSBIYXVlciDQtLXAOgo+IEhpLAo+Cj4gT24gTW9uLCBK
dW4gMDEsIDIwMjAgYXQgMDU6MTE6MzRQTSArMDgwMCwgWmhpaGFvIENoZW5nIHdyb3RlOgo+PiBG
b2xsb3dpbmcgcHJvY2VzcyB0cmlnZ2VycyBhIG1lbWxlYWsgY2F1c2VkIGJ5IGZvcmdldHRpbmcg
dG8gcmVsZWFzZSB0aGUKPj4gaW5pdGlhbCBhbmNob3IgUEVCIChDT05GSUdfTVREX1VCSV9GQVNU
TUFQIGlzIGRpc2FibGVkKToKPj4gMS4gYXR0YWNoIC0+IF9fZXJhc2Vfd29ya2VyIC0+IHByb2R1
Y2UgdGhlIGluaXRpYWwgYW5jaG9yIFBFQgo+PiAyLiBkZXRhY2ggLT4gdWJpX2Zhc3RtYXBfY2xv
c2UgKERvIG5vdGhpbmcsIGl0IHNob3VsZCBoYXZlIHJlbGVhc2VkIHRoZQo+PiAgICAgaW5pdGlh
bCBhbmNob3IgUEVCKQo+Pgo+PiBEb24ndCBwcm9kdWNlIHRoZSBpbml0aWFsIGFuY2hvciBQRUIg
aW4gX19lcmFzZV93b3JrZXIoKSB3aGVuIGZhc3RtYXAKPj4gaXMgZGlzYWJsZWQuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IFpoaWhhbyBDaGVuZyA8Y2hlbmd6aGloYW8xQGh1YXdlaS5jb20+Cj4+IEZp
eGVzOiBmOWMzNGJiNTI5OTc1ZmUgKCJ1Ymk6IEZpeCBwcm9kdWNpbmcgYW5jaG9yIFBFQnMiKQo+
PiBSZXBvcnRlZC1ieTogc3l6Ym90K2Q5YWFiNTBiMTE1NGUzZDE2M2Y1QHN5emthbGxlci5hcHBz
cG90bWFpbC5jb20KPj4gLS0tCj4+ICAgZHJpdmVycy9tdGQvdWJpL3dsLmMgfCA4ICsrKysrKyst
Cj4+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvdWJpL3dsLmMgYi9kcml2ZXJzL210ZC91Ymkvd2wu
Ywo+PiBpbmRleCA1MTQ2Y2NlNWZlMzIuLjVlYmUxMDg0YThlNyAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9tdGQvdWJpL3dsLmMKPj4gKysrIGIvZHJpdmVycy9tdGQvdWJpL3dsLmMKPj4gQEAgLTEw
NzksMTMgKzEwNzksMTkgQEAgc3RhdGljIGludCBfX2VyYXNlX3dvcmtlcihzdHJ1Y3QgdWJpX2Rl
dmljZSAqdWJpLCBzdHJ1Y3QgdWJpX3dvcmsgKndsX3dyaykKPj4gICAJaWYgKCFlcnIpIHsKPj4g
ICAJCXNwaW5fbG9jaygmdWJpLT53bF9sb2NrKTsKPj4gICAKPj4gLQkJaWYgKCF1YmktPmZtX2Fu
Y2hvciAmJiBlLT5wbnVtIDwgVUJJX0ZNX01BWF9TVEFSVCkgewo+PiArI2lmZGVmIENPTkZJR19N
VERfVUJJX0ZBU1RNQVAKPj4gKwkJaWYgKCF1YmktPmZtX2Rpc2FibGVkICYmICF1YmktPmZtX2Fu
Y2hvciAmJgo+PiArCQkgICAgZS0+cG51bSA8IFVCSV9GTV9NQVhfU1RBUlQpIHsKPiBSYXRoZXIg
dGhhbiBpbnRyb2R1Y2luZyBhbm90aGVyICNpZmRlZiB5b3UgY291bGQgZG8gYQo+Cj4gCQlpZiAo
SVNfRU5BQkxFRChDT05GSUdfTVREX1VCSV9GQVNUTUFQKSAmJgo+IAkJICAgICF1YmktPmZtX2Rp
c2FibGVkICYmICF1YmktPmZtX2FuY2hvciAmJgo+IAkJICAgIGUtPnBudW0gPCBVQklfRk1fTUFY
X1NUQVJUKQo+Cj4gQW5kIEkgYW0gbm90IHN1cmUgaWYgdGhlIElTX0VOQUJMRUQoQ09ORklHX01U
RF9VQklfRkFTVE1BUCkgaXMgbmVjZXNzYXJ5Cj4gYXQgYWxsIGJlY2F1c2Ugd2UgZG8gYSB1Ymkt
PmZtX2Rpc2FibGVkID0gMSB3aGVuIGZhc3RtYXAgaXMgZGlzYWJsZWQuCj4KPiBSZWdhcmRzLAo+
ICAgU2FzY2hhCj4KQWdyZWUuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
