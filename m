Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4DD1AC48
	for <lists+linux-mtd@lfdr.de>; Sun, 12 May 2019 15:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWS3pSO2CchDuGT967kjzK/BJpFzW0lcJTNMNRgYfc4=; b=gFTFMocU5skFcc
	GPRZaGCxsf4eh6swOayd+Ghcewd1pgd2IJGmaF+qhV39vU9/2wBXtUtXecbqcTrVqJoQuHlqPuZnl
	cWKgnrVN0/N2Of3B9sPS/3b6our0NVihYQb/Hk3cQF2Nf+dH4VpKlVbn2tR22IPJ2iPenEA7m8fWh
	TCX0Q8bVZ+zpzkUXLso+whuXctI31zb9Mss8Oh1fzx+PCy7qFyseLhLZcCFc+jhLNvZSF0t1qMR6F
	Xrl6ZmYs2ZZRUB1cct//3zp2ebSJD+G+y/Lowa7carrbjV9znH3lD6oajmCXqsNmaB0NfWFSPBbnC
	dehQuIXFIH6/ANsVr0Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPoDW-0003Uy-DY; Sun, 12 May 2019 13:08:38 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPoDP-0003U8-0t
 for linux-mtd@lists.infradead.org; Sun, 12 May 2019 13:08:32 +0000
Received: from xps13 (unknown [109.190.253.16])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 404E5240004;
 Sun, 12 May 2019 13:08:10 +0000 (UTC)
Date: Sun, 12 May 2019 15:08:00 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v3 1/4]  mfd: Add Macronix MX25F0A MFD controller driver
Message-ID: <20190512142835.4caddc8e@xps13>
In-Reply-To: <1555320234-15802-2-git-send-email-masonccyang@mxic.com.tw>
References: <1555320234-15802-1-git-send-email-masonccyang@mxic.com.tw>
 <1555320234-15802-2-git-send-email-masonccyang@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_060831_213379_4D72C6D1 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
 juliensu@mxic.com.tw, bbrezillon@kernel.org, marcel.ziswiler@toradex.com,
 lee.jones@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-spi@vger.kernel.org, marek.vasut@gmail.com, paul.burton@mips.com,
 broonie@kernel.org, geert@linux-m68k.org, stefan@agner.ch,
 linux-mtd@lists.infradead.org, richard@nod.at, liang.yang@amlogic.com,
 computersforpeace@gmail.com, dwmw2@infradead.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgpNYXNvbiBZYW5nIDxtYXNvbmNjeWFuZ0BteGljLmNvbS50dz4gd3JvdGUgb24g
TW9uLCAxNSBBcHIgMjAxOSAxNzoyMzo1MQorMDgwMDoKCj4gQWRkIGEgZHJpdmVyIGZvciBNYWNy
b25peCBNWDI1RjBBIG11bHRpZnVuY3Rpb24gZGV2aWNlIGNvbnRyb2xsZXIuCj4gCj4gU2lnbmVk
LW9mZi1ieTogTWFzb24gWWFuZyA8bWFzb25jY3lhbmdAbXhpYy5jb20udHc+Cj4gLS0tCj4gIGRy
aXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgIHwgICA5ICsrCj4gIGRyaXZlcnMvbWZkL01h
a2VmaWxlICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9tZmQvbXhpYy1teDI1ZjBhLmMg
ICAgICAgfCAgODQgKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9teGlj
LW14MjVmMGEuaCB8IDE3NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiAgNCBmaWxlcyBjaGFuZ2VkLCAyNjkgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9tZmQvbXhpYy1teDI1ZjBhLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1
ZGUvbGludXgvbWZkL214aWMtbXgyNWYwYS5oCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZk
L0tjb25maWcgYi9kcml2ZXJzL21mZC9LY29uZmlnCj4gaW5kZXggMjZhZDY0Ni4uN2U5OWU5MyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL21mZC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9tZmQvS2Nv
bmZpZwo+IEBAIC04MjMsNiArODIzLDE1IEBAIGNvbmZpZyBNRkRfTUFYODk5OAo+ICAJICBhZGRp
dGlvbmFsIGRyaXZlcnMgbXVzdCBiZSBlbmFibGVkIGluIG9yZGVyIHRvIHVzZSB0aGUgZnVuY3Rp
b25hbGl0eQo+ICAJICBvZiB0aGUgZGV2aWNlLgo+ICAKPiArY29uZmlnIE1GRF9NWElDX01YMjVG
MEEKPiArCXRyaXN0YXRlICJNYWNyb25peCBteDI1ZjBhIG11bHRpZnVuY3Rpb24gZGV2aWNlIHN1
cHBvcnQiCj4gKwlzZWxlY3QgTUZEX0NPUkUKPiArCWhlbHAKPiArCSAgVGhpcyBzdXBwb3J0cyBm
b3IgTWFjcm9uaXggbXgyNWYwYSBtdWx0aWZ1bmN0aW9uIGRldmljZSBjb250cm9sbGVyCj4gKwkg
IGZvciByYXcgbmFuZCBvciBzcGkuIFlvdSBoYXZlIHRvIHNlbGVjdCBpbmRpdmlkdWFsIGNvbXBv
bmVudHMgbGlrZQoKUGxlYXNlIHVzZSB1cHBlciBjYXNlIGZvciBhY3JvbnltcyBpbiBwbGFpbiBF
bmdsaXNoOiBOQU5ELCBTUEkKCj4gKwkgIHJhdyBuYW5kIGNvbnRyb2xsZXIgb3Igc3BpIGhvc3Qg
Y29udHJvbGxlciB1bmRlciB0aGUgY29ycmVzcG9uZGluZwo+ICsJICBtZW51cy4KPiArCj4gIGNv
bmZpZyBNRkRfTVQ2Mzk3Cj4gIAl0cmlzdGF0ZSAiTWVkaWFUZWsgTVQ2Mzk3IFBNSUMgU3VwcG9y
dCIKPiAgCXNlbGVjdCBNRkRfQ09SRQoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Np
b24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbXRkLwo=
