Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9CDA347A
	for <lists+linux-mtd@lfdr.de>; Fri, 30 Aug 2019 11:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/ErmY7AwLba0WM2lxZaAuz9iGQ24+9EcDWzBs0F3dI=; b=Rdg3Ylk3dHM1oz
	+dActDvh2ZN/dPNQ69akQb43NIOMmiLXKI2U4NQ06z/0iF8tbATxxTAY1VWpeDYBLdoIXo/7BuqcY
	dAOrg4D3VrRgZi/r1jeeYEiohE2AAFhdGWM9IcgdZ1pldMsVKkZAlub1dFSGf+1ctlAoDGTE4F/dB
	dF1JipksL7HrTla8mAAT2FdO1e8y+thwKa8XKJtFrDBReZoEU4mcvsuNqTBl6jocb2AZWfc4P7woz
	Td5kiHPomwzcnzekFj2ivQCZNgBVddwpPuSk19O2cprho/e2NZpSJfitd4tAdNq2Hfu8Z4aMxpSq7
	9eL2rdYb/PWmQvuNafxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dYz-0000oQ-FY; Fri, 30 Aug 2019 09:51:25 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dYq-0000o5-QK
 for linux-mtd@lists.infradead.org; Fri, 30 Aug 2019 09:51:18 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 7C221FF807;
 Fri, 30 Aug 2019 09:51:01 +0000 (UTC)
Date: Fri, 30 Aug 2019 11:51:00 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH] Add support for Macronix NAND randomizer
Message-ID: <20190830115100.3fec9bf1@xps13>
In-Reply-To: <OF22C5A579.E2E7676F-ON48258465.002F7F69-48258465.00322849@mxic.com.tw>
References: <1566280428-4159-1-git-send-email-masonccyang@mxic.com.tw>
 <20190824130329.68f310aa@xps13>
 <OF22C5A579.E2E7676F-ON48258465.002F7F69-48258465.00322849@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_025117_002909_64E6B060 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kstewart@linuxfoundation.org, vigneshr@ti.com, bbrezillon@kernel.org,
 juliensu@mxic.com.tw, richard@nod.at, linux-kernel@vger.kernel.org,
 frieder.schrempf@kontron.de, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, tglx@linutronix.de, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgptYXNvbmNjeWFuZ0BteGljLmNvbS50dyB3cm90ZSBvbiBUaHUsIDI5IEF1ZyAy
MDE5IDE3OjA3OjUxICswODAwOgoKPiBIaSBNaXF1ZWwsIAo+IAo+IAo+ID4gPiAKPiA+ID4gSWYg
c3VicGFnZSB3cml0ZSBub3QgYXZhaWxhYmxlIHdpdGggaGFyZHdhcmUgRUNDLCBmb3IgZXhhbXBs
ZSwKPiA+ID4gTkFORCBjaGlwIG9wdGlvbnMgTkFORF9OT19TVUJQQUdFX1dSSVRFIGJlIHNldCBp
biBkcml2ZXIgYW5kCj4gPiA+IHJhbmRvbWl6ZXIgZnVuY3Rpb24gaXMgcmVjb21tZW5kZWQgZm9y
IGhpZ2gtcmVsaWFiaWxpdHkuCj4gPiA+IERyaXZlciBjaGVja3MgYnl0ZSAxNjcgb2YgVmVuZG9y
IEJsb2NrcyBpbiBPTkZJIHBhcmFtZXRlciBwYWdlIHRhYmxlCj4gPiA+IHRvIHNlZSBpZiB0aGlz
IGhpZ2gtcmVsaWFiaWxpdHkgZnVuY3Rpb24gaXMgc3VwcG9ydGVkLgo+ID4gPiAgIAo+ID4gCj4g
PiBZb3UgZGlkIG5vdCBmbGFnZ2VkIHRoaXMgcGF0Y2ggYXMgYSB2MiBhbmQgZm9yZ290IGFib3V0
IHRoZSBjaGFuZ2Vsb2cuCj4gPiBZb3UgZGlkIG5vdCBsaXN0ZW4gdG8gb3VyIGNvbW1lbnRzIGlu
IHRoZSBsYXN0IHZlcnNpb24gbmVpdGhlci4gSSB3YXMKPiA+IG9wZW4gdG8gYSBzb2x1dGlvbiB3
aXRoIGEgc3BlY2lmaWMgRFQgcHJvcGVydHkgZm9yIHdhcm5lZCB1c2VycyBidXQgSQo+ID4gZG9u
J3Qgc2VlIGl0IGNvbWluZy4KPiA+ICAgCj4gCj4gQmFzZWQgb24geW91ciBjb21tZW50cyBieSBz
cGVjaWZpYyBEVCBwcm9wZXJ0eSBmb3IgcmFuZG9taXplciBzdXBwb3J0Lgo+IHRvIGFkZCBhIG5l
dyBwcm9wZXJ0eSBpbiBjaGlsZHJlbiBub2RlczoKPiAKPiBpLmUsLgo+IAo+IG5hbmQ6IG5hbmQt
Y29udHJvbGxlckA0M2MzMDAwMCB7Cj4gCj4gICAgICAgICAgICAgICAgIG5hbmRAMCB7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAg
IG5hbmQtcmVsaWFiaWxpdHkgPSAicmFuZG9taXplciI7CgogICAgICAgICAgICAgICAgICAgICAg
ICAgIG14aWMsZW5hYmxlLXJhbmRvbWl6ZXItb3RwOwoKV291bGQgYmUgYmV0dGVyICh3aXRoIHRo
ZSBwcm9wZXIgZG9jdW1lbnRhdGlvbiBpbiB0aGUgYmluZGluZ3MpLgoKClRoYW5rcywKTWlxdcOo
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
