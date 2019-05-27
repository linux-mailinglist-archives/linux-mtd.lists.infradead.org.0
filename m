Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A80A2B599
	for <lists+linux-mtd@lfdr.de>; Mon, 27 May 2019 14:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIcxUoMpgzZkrCHs84QBhgaeZFPw/ZkDoPKekH8Marw=; b=H1fo8zJzrlE6KF
	6BmqJZwsZcuxiaQs134c9FlCpdzFYpyGJ+g8Q02z3gzzytkYZhJ8KKsgJv1+9Nhta/CQb1BZUoCYx
	G6Ecf6WHaOpXj2gBkQqbs4ca8c9fqlneDhiHkS0LB3NND2IQbdqTr4wLfcGSKVbqNXYEDC2vUmsNl
	ozntjNj5FFo+ATTwi6iKD28eQZtHfqWtGTCGaCib7PdwoyRasVsV7FxuUl/KWi3dOeH3Ho2PU5ZKF
	QT8cLcRrxFO2ga+wF4m4Hq/9bC1TpAMT6BDZnFGimteX0/Rw0Qoh6IzugWrmzXj4Zo6KEY6sPbaGx
	iOkpRePHs8RUV4ReqGgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEy8-0000iL-Fo; Mon, 27 May 2019 12:43:12 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVExz-0000hX-CI
 for linux-mtd@lists.infradead.org; Mon, 27 May 2019 12:43:04 +0000
Received: from xps13 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7C5A824000B;
 Mon, 27 May 2019 12:42:51 +0000 (UTC)
Date: Mon, 27 May 2019 14:42:50 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH v3 2/4] mtd: rawnand: Add Macronix MX25F0A NAND controller
Message-ID: <20190527144250.71908bd9@xps13>
In-Reply-To: <OFADC47344.0F9941B2-ON48258403.002336E3-48258403.003141F0@mxic.com.tw>
References: <1555320234-15802-1-git-send-email-masonccyang@mxic.com.tw>
 <1555320234-15802-3-git-send-email-masonccyang@mxic.com.tw>
 <20190512151820.4f2dd9da@xps13>
 <OF074A1F06.5C1A58BE-ON482583FD.0031CD95-482583FD.003437AD@mxic.com.tw>
 <20190520142333.390091d5@xps13>
 <OFADC47344.0F9941B2-ON48258403.002336E3-48258403.003141F0@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_054303_573334_804913F5 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, christophe.kerello@st.com,
 bbrezillon@kernel.org, juliensu@mxic.com.tw, lee.jones@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 marcel.ziswiler@toradex.com, paul.burton@mips.com, broonie@kernel.org,
 geert@linux-m68k.org, stefan@agner.ch, linux-mtd@lists.infradead.org,
 richard@nod.at, liang.yang@amlogic.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, marek.vasut@gmail.com, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgptYXNvbmNjeWFuZ0BteGljLmNvbS50dyB3cm90ZSBvbiBUaHUsIDIzIE1heSAy
MDE5IDE2OjU4OjAyICswODAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gPiA+ICAgCj4gPiA+ID4gPiAr
Cj4gPiA+ID4gPiArc3RhdGljIHZvaWQgbXhpY19uYW5kX3NlbGVjdF9jaGlwKHN0cnVjdCBuYW5k
X2NoaXAgKmNoaXAsIGludCAgIAo+IGNoaXBucikgCj4gPiA+ID4gCj4gPiA+ID4gX3NlbGVjdF90
YXJnZXQoKSBpcyBwcmVmZXJyZWQgbm93ICAgCj4gPiA+IAo+ID4gPiBEbyB5b3UgbWVhbiBJIGlt
cGxlbWVudCBteGljX25hbmRfc2VsZWN0X3RhcmdldCgpIHRvIGNvbnRyb2wgI0NTID8KPiA+ID4g
Cj4gPiA+IElmIHNvLCBJIG5lZWQgdG8gY2FsbCBteGljX25hbmRfc2VsZWN0X3RhcmdldCggKSB0
byBjb250cm9sICNDUyBPTgo+ID4gPiBhbmQgdGhlbiAjQ1MgT0ZGIGluIF9leGVjX29wKCkgZHVl
IHRvIG5hbmRfc2VsZWN0X3RhcmdldCgpPGluICAgCj4gbmFuZF9iYXNlLGM+ICAKPiA+ID4gaXMg
c3RpbGwgY2FsbGluZyBjaGlwLT5sZWdhY3kuc2VsZWN0X2NoaXAgPyAgCj4gPiAKPiA+IFlvdSBt
dXN0IGZvcmdldCBhYm91dCB0aGUgLT5zZWxlY3RfY2hpcCgpIGNhbGxiYWNrLiBOb3cgaXQgc2hv
dWxkIGJlCj4gPiBoYW5kbGVkIGRpcmVjdGx5IGZyb20gdGhlIGNvbnRyb2xsZXIgZHJpdmVyLiBQ
bGVhc2UgaGF2ZSBhIGxvb2sgYXQgdGhlCj4gPiBjb21taXQgcG9pbnRlZCBhZ2FpbnN0IHRoZSBt
YXJ2ZWxsX25hbmQuYyBkcml2ZXIuICAKPiAKPiBJIGhhdmUgbm8gTWFydmVsbCBORkMgZGF0YXNo
ZWV0IGFuZCBoYXZlIG9uZSBxdWVzdGlvbi4KPiAKPiBJbiBtYXJ2ZWxsX25hbmQuYywgdGhlcmUg
aXMgbm8geHh4X2Rlc2VsZWN0X3RhcmdldCgpIG9yIAo+IHNvbWV0aGluZyBsaWtlIHRoYXQgZG9p
bmcgI0NTIE9GRi4KPiBtYXJ2ZWxsX25mY19zZWxlY3RfdGFyZ2V0KCkgc2VlbXMgYWx3YXlzIHRv
IG1ha2Ugb25lIG9mIGNoaXAgb3IgZGllCj4gI0NTIGtlZXAgbG93Lgo+IAo+IElzIGl0IHJpZ2h0
ID8KClllcywgQUZBSVIgdGhlcmUgaXMgbm8gImRlLWFzc2VydCIgbWVjaGFuaXNtIGluIHRoaXMg
Y29udHJvbGxlci4KCj4gCj4gSG93IHRvIG1ha2UgYWxsICNDUyBrZWVwIGhpZ2ggZm9yIE5BTkQg
dG8gZW50ZXIgCj4gbG93LXBvd2VyIHN0YW5kYnkgbW9kZSBpZiBkcml2ZXIgZG9uJ3QgdXNlICJs
ZWdhY3kuc2VsZWN0X2NoaXAoKSIgPwoKU2VlIGNvbW1pdCAwMmI0YTUyNjA0YTQgKCJtdGQ6IHJh
d25hbmQ6IE1ha2UgLT5zZWxlY3RfY2hpcCgpIG9wdGlvbmFsCndoZW4gLT5leGVjX29wKCkgaXMg
aW1wbGVtZW50ZWQiKSB3aGljaCBzdGF0ZXM6CgogICAgICAgICJXaGVuIFstPnNlbGVjdF9jaGlw
KCkgaXNdIG5vdCBpbXBsZW1lbnRlZCwgdGhlIGNvcmUgaXMgYXNzdW1pbmcKCXRoZSBDUyBsaW5l
IGlzIGF1dG9tYXRpY2FsbHkgYXNzZXJ0ZWQvZGVhc3NlcnRlZCBieSB0aGUgZHJpdmVyCgktPmV4
ZWNfb3AoKSBpbXBsZW1lbnRhdGlvbi4iCgpPZiBjb3Vyc2UsIHRoZSBhYm92ZSBpcyByaWdodCBv
bmx5IHdoZW4gdGhlIGNvbnRyb2xsZXIgZHJpdmVyIHN1cHBvcnRzCnRoZSAtPmV4ZWNfb3AoKSBp
bnRlcmZhY2UuIAoKU28gaWYgeW91IHRoaW5rIGl0IGlzIG5vdCB0b28gdGltZSBjb25zdW1pbmcg
YW5kIHdvcnRoIHRoZSB0cm91YmxlIHRvCmFzc2VydC9kZWFzc2VydCB0aGUgQ1MgYXQgZWFjaCBv
cGVyYXRpb24sIHlvdSBtYXkgZG8gaXQgaW4geW91ciBkcml2ZXIuCgoKVGhhbmtzLApNaXF1w6hs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
