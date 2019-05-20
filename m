Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E30723A0C
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 16:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8sVz/2VkMqov9LkLclqe0NUtGRNIHVI4l3jetc5J8g=; b=ToYzxe19jERIUB
	0VXma2SlPy7W2in7FH+zMamcIV02wc4n0tB7Y1ayquz/l4evAcWq87ku4Io3jcpnaVe9yMMoR8+sj
	9Xnes69F9tB/dtw7MH5J+reABU22DgLkeRdznaAsjsmz4FJY06OJMil25t2nOcumcbk/mcdBpU6Il
	KaWEroRV8gpemTVWrAHrrqlVZOEUBRSHmVjW7YcDGg4fu73XTXCC2BjIyIjfNQx1lmnmTWW5BAikG
	3nsUQsEB9qZ03rqX4/LSFS0Go+OCQYXB+kofUL6nmTi2EV5lV4hwmtAAf4I2VLptY7LIqI7OSkXNx
	lIeQvsEH95Mgr+O6KxQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjJW-0000af-LU; Mon, 20 May 2019 14:30:54 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjJO-0000aG-Pt
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 14:30:48 +0000
X-Originating-IP: 90.88.22.185
Received: from xps13 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id DD2C31C0003;
 Mon, 20 May 2019 14:30:39 +0000 (UTC)
Date: Mon, 20 May 2019 16:30:38 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 00/14] Implement exec_op for GPMI nand driver
Message-ID: <20190520163038.7f38b54a@xps13>
In-Reply-To: <20190425125643.29990-1-s.hauer@pengutronix.de>
References: <20190425125643.29990-1-s.hauer@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073046_985986_9C1D7C02 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: kernel@pengutronix.de, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Vinod Koul <vkoul@kernel.org>,
 linux-mtd@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Han Xu <han.xu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2FzY2hhLAoKU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3cm90ZSBv
biBUaHUsIDI1IEFwciAyMDE5CjE0OjU2OjI5ICswMjAwOgoKPiBUaGUgR1BNSSBuYW5kIGRyaXZl
ciBzdWZmZXJzIGZyb20gdmVyeSBwb29yIHBlcmZvcm1hbmNlLiBUaGUgcmVhZAo+IHBlcmZvcm1h
bmNlIGNhbiBiZSByb3VnaGx5IGRvdWJsZWQgd2l0aCB0d28gc3RlcHM6IEZpcnN0IGlzIHRvIHVz
ZQo+IHJ1bnRpbWUgUE0gZm9yIGNvbnRyb2xsaW5nIHRoZSBjbG9ja3Mgd2hpY2ggcHJldmVudHMg
dGhlIGRyaXZlciBmcm9tCj4gc3BlbmRpbmcgYSBnb29kIGFtb3VudCBvZiB0aW1lIGVuL2Rpc2Fi
bGluZyB0aGUgY2xvY2tzLiBUaGUgc2Vjb25kIHN0ZXAKPiBpcyB0byBpbXBsZW1lbnQgZXhlY19v
cCB3aGljaCBhbGxvd3MgdXMgdG8gY29tYmluZSB0aGUgc3RlcHMgbmVjZXNzYXJ5Cj4gdG8gZG8g
YSBwYWdlIHJlYWQgaW50byBhIHNpbmdsZSBETUEgdHJhbnNhY3Rpb24uCj4gCj4gSSB3b3VsZCBw
cmVmZXIgdG8gbGV0IHRoaXMgZ28gdGhyb3VnaCB0aGUgbXRkIHRyZWUgd2l0aCB0aGUgYWNrIG9m
IHRoZQo+IGRtYWVuZ2luZSBtYWludGFpbmVycwo+IAo+IGNoYW5nZXMgc2luY2UgdjI6Cj4gCj4g
LSBzL2RtYS9kbWFlbmdpbmUgaW4gZG1hZW5naW5lIHNwZWNpZmljIHBhdGNoZXMKPiAtIHMvbmFu
ZC9OQU5ELwo+IC0gQWRkIHJldmlld2VkLWJ5IE1pcXVlbAo+IC0gQWRkIEFja2VkLWJ5IFZpbm9k
Cj4gCj4gY2hhbmdlcyBzaW5jZSB2MToKPiAKPiAtIHRlc3RlZCBhbmQgZml4ZWQgb24gaS5NWDI4
Cj4gLSByZW1vdmUgZGVidWdnaW5nIGxlZnRvdmVyCj4gLSBBZGQgbXhzIGRtYSBzcGVjaWZpYyBo
ZWFkZXIgZmlsZXMgdG8gcHV0IHRoZSBvZGRpdGllcyBvZiB0aGUgbXhzIGRtYQo+ICAgZHJpdmVy
IGluCj4gLSBUdXJuIG9mZiBCQ0ggZW5naW5lIGludGVycnVwdHMgd2hlbiBub3QgbmVlZGVkIGFz
IHRoZXkgcmVzdWx0IGluCj4gICBjYWxsaW5nIGNvbXBsZXRlKCkgb24gYW4gdW5pbml0aWFsaXpl
ZCBjb21wbGV0aW9uLiBUaGlzIGNyYXNoZXMKPiAgIG9uIGkuTVgyOAo+IAo+IFNhc2NoYSBIYXVl
ciAoMTQpOgo+ICAgbXRkOiByYXduYW5kOiBleHBvcnQgTkFORCBvcGVyYXRpb24gdHJhY2VyCj4g
ICBtdGQ6IHJhd25hbmQ6IGZzbWM6IFVzZSBuYW5kX29wX3RyYWNlIGZvciBvcGVyYXRpb24gdHJh
Y2luZwo+ICAgbXRkOiByYXduYW5kOiBncG1pOiBtb3ZlIGFsbCBkcml2ZXIgY29kZSBpbnRvIHNp
bmdsZSBmaWxlCj4gICBtdGQ6IHJhd25hbmQ6IGdwbWk6IHJlbW92ZSB1bnVzZWQgdmFyaWFibGUK
PiAgIG10ZDogcmF3bmFuZDogZ3BtaTogUmVtb3ZlIHVubmVjZXNzYXJ5IHZhcmlhYmxlcwo+ICAg
bXRkOiByYXduYW5kOiBncG1pOiByZWFkIGJ1ZiBpbiBuYW5kX3JlYWRfcGFnZV9vcAo+ICAgbXRk
OiByYXduYW5kOiBncG1pOiByZW1vdmUgdW51c2VkIHBhcmFtZXRlcnMKPiAgIG10ZDogcmF3bmFu
ZDogZ3BtaTogRHJvcCB1bm5lY2Vzc2FyeSByZXN0b3Jpbmcgb2YgcHJldmlvdXMgY2hpcHNlbGVj
dGlvbgo+ICAgbXRkOiByYXduYW5kOiBncG1pOiB1c2UgcnVudGltZSBQTSB0byBtYW5hZ2UgY2xv
Y2tzCj4gICBkbWFlbmdpbmU6IG14czogRHJvcCB1bm5lY2Vzc2FyeSBmbGFnCj4gICBtdGQ6IHJh
d25hbmQ6IGdwbWk6IGRyb3AgdW5uZWNlc3NhcnkgZmxhZwo+ICAgZG1hZW5naW5lOiBteHM6IEFk
ZCBoZWFkZXIgZmlsZSB0byBiZSBzaGFyZWQgd2l0aCBncG1pIG5hbmQgZHJpdmVyCj4gICBkbWFl
bmdpbmU6IG14czogcmVuYW1lIGN1c3RvbSBmbGFnCj4gICBtdGQ6IHJhd25hbmQ6IGdwbWk6IElt
cGxlbWVudCBleGVjX29wCj4gCj4gIGRyaXZlcnMvZG1hL214cy1kbWEuYyAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMjUgKy0KPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvZnNtY19uYW5kLmMgICAg
ICAgICAgIHwgICAxOSArLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvTWFrZWZp
bGUgICAgfCAgICAxIC0KPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvZ3BtaS1uYW5kL2dwbWktbGli
LmMgIHwgIDkzNiAtLS0tLS0tLS0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQv
Z3BtaS1uYW5kLmMgfCAxNjg3ICsrKysrKysrKysrKysrLS0tLS0tCj4gIGRyaXZlcnMvbXRkL25h
bmQvcmF3L2dwbWktbmFuZC9ncG1pLW5hbmQuaCB8ICAgNjQgKy0KPiAgZHJpdmVycy9tdGQvbmFu
ZC9yYXcvbmFuZF9iYXNlLmMgICAgICAgICAgIHwgICAzMCArLQo+ICBpbmNsdWRlL2xpbnV4L2Rt
YS9teHMtZG1hLmggICAgICAgICAgICAgICAgfCAgIDI0ICsKPiAgaW5jbHVkZS9saW51eC9tdGQv
cmF3bmFuZC5oICAgICAgICAgICAgICAgIHwgICAzNyArCj4gIDkgZmlsZXMgY2hhbmdlZCwgMTI2
NCBpbnNlcnRpb25zKCspLCAxNTU5IGRlbGV0aW9ucygtKQo+ICBkZWxldGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9tdGQvbmFuZC9yYXcvZ3BtaS1uYW5kL2dwbWktbGliLmMKPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGluY2x1ZGUvbGludXgvZG1hL214cy1kbWEuaAo+IAoKUGxlYXNlIGlnbm9yZSB0aGUg
cHJldmlvdXMgbWVzc2FnZSB0ZWxsaW5nIHRoZSBwYXRjaCB3YXMgYXBwbGllZCwgSQpoYXZlIHRv
IG1hbnVhbGx5IGZpeCBhbGwgdGhlIGNvbmZsaWN0cywgSSBjYW5jZWxlZCB0aGUgb3BlcmF0aW9u
OiB3b3VsZAp5b3UgbWluZCByZWJhc2luZyBvbiB2NS4yLXJjMSBhbmQgcmVzcGluPwoKClRoYW5r
cyBhbmQgc29ycnkgZm9yIHRoZSB0cm91YmxlLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
