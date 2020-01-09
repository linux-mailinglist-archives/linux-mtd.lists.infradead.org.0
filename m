Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C71135C76
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 16:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/VEQHKjxuOXsVmuzn/S5H3VWmN8IFoYHsAeCo+gPq8=; b=K/+Gj3yHvrDzYO
	R1lptxI5WMFqqVyS80sGNgzDcEHLruD0B4H7GC92Fma9fOHaUFyrxkZfHSWpcYdEyBmR9VcrbqBHG
	pEV7O+EL7K9YnqnOxe2CcYICuqlqN6Qyb8Hr1ACCUoZM6DTLgC4wCSob1vxhy5MJqIrw3xIq4MYqx
	r55eVtIiItoSkLjxcC58iwl8IP7p0S1s75uV1towgbAj8iZFkQ1g7ank5n5+A8GzoNW9Bz9YdUr9l
	izsH/2MyJey5Y4/sp0RMMESqm/hiSfuscMxsOEjT7Jn8RBdPVSMI7wvaSvLFG8jzYDU9is5kaTkPH
	lzi2fAUi8DMAEPSDH9vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZaR-0000lL-Px; Thu, 09 Jan 2020 15:19:03 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZa3-0000cF-IK; Thu, 09 Jan 2020 15:18:41 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id AA51DE0009;
 Thu,  9 Jan 2020 15:18:27 +0000 (UTC)
Date: Thu, 9 Jan 2020 16:18:26 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 3/3] mtd: onenand: Enable compile testing of OMAP and
 Samsung drivers
Message-ID: <20200109161826.7fda02a4@xps13>
In-Reply-To: <20191231073339.GA6747@pi3>
References: <20191229183612.22133-3-krzk@kernel.org>
 <201912310904.9iM6MaFr%lkp@intel.com> <20191231073339.GA6747@pi3>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_071839_738655_D509E640 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPiB3cm90
ZSBvbiBUdWUsIDMxIERlYyAyMDE5CjA4OjMzOjM5ICswMTAwOgoKPiBPbiBUdWUsIERlYyAzMSwg
MjAxOSBhdCAxMDowMDo0OEFNICswODAwLCBrYnVpbGQgdGVzdCByb2JvdCB3cm90ZToKPiA+IEhp
IEtyenlzenRvZiwKPiA+IAo+ID4gSSBsb3ZlIHlvdXIgcGF0Y2ghIFBlcmhhcHMgc29tZXRoaW5n
IHRvIGltcHJvdmU6Cj4gPiAKPiA+IFthdXRvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiBsaW51cy9t
YXN0ZXJdCj4gPiBbYWxzbyBidWlsZCB0ZXN0IFdBUk5JTkcgb24gdjUuNS1yYzQgbmV4dC0yMDE5
MTIyMF0KPiA+IFtpZiB5b3VyIHBhdGNoIGlzIGFwcGxpZWQgdG8gdGhlIHdyb25nIGdpdCB0cmVl
LCBwbGVhc2UgZHJvcCB1cyBhIG5vdGUgdG8gaGVscAo+ID4gaW1wcm92ZSB0aGUgc3lzdGVtLiBC
VFcsIHdlIGFsc28gc3VnZ2VzdCB0byB1c2UgJy0tYmFzZScgb3B0aW9uIHRvIHNwZWNpZnkgdGhl
Cj4gPiBiYXNlIHRyZWUgaW4gZ2l0IGZvcm1hdC1wYXRjaCwgcGxlYXNlIHNlZSBodHRwczovL3N0
YWNrb3ZlcmZsb3cuY29tL2EvMzc0MDY5ODJdCj4gPiAKPiA+IHVybDogICAgaHR0cHM6Ly9naXRo
dWIuY29tLzBkYXktY2kvbGludXgvY29tbWl0cy9Lcnp5c3p0b2YtS296bG93c2tpL210ZC1vbmVu
YW5kLXNhbXN1bmctRml4LXBvaW50ZXItY2FzdC1XcG9pbnRlci10by1pbnQtY2FzdC13YXJuaW5n
cy1vbi02NC1iaXQvMjAxOTEyMzAtMDMwODM4Cj4gPiBiYXNlOiAgIGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdCBiZjhkMWNk
NDM4NjUzNTAwNGM0YWZlN2YwM2QzN2Y5ODY0Yzk5NDBlCj4gPiByZXByb2R1Y2U6Cj4gPiAgICAg
ICAgICMgYXB0LWdldCBpbnN0YWxsIHNwYXJzZQo+ID4gICAgICAgICAjIHNwYXJzZSB2ZXJzaW9u
OiB2MC42LjEtMTI5LWczNDFkYWYyMC1kaXJ0eQo+ID4gICAgICAgICBtYWtlIEFSQ0g9eDg2XzY0
IGFsbG1vZGNvbmZpZwo+ID4gICAgICAgICBtYWtlIEM9MSBDRj0nLWZkaWFnbm9zdGljLXByZWZp
eCAtRF9fQ0hFQ0tfRU5ESUFOX18nCj4gPiAKPiA+IElmIHlvdSBmaXggdGhlIGlzc3VlLCBraW5k
bHkgYWRkIGZvbGxvd2luZyB0YWcKPiA+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8
bGtwQGludGVsLmNvbT4KPiA+ICAgCj4gCj4gSXQgaXMgbm90IHJlbGF0ZWQgdG8gbXkgcGF0Y2gu
IEknbGwgZml4IGl0IHVwIHNvb24uCgpJIHdvdWxkIGxpa2UgdGhpcyB0byBiZSBmaXhlZCBiZWZv
cmUgZW5hYmxpbmcgY29tcGlsZSB0ZXN0aW5nLCBpcyB5b3VyCmZpeCByZWFkPwoKVGhhbmtzLApN
aXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
