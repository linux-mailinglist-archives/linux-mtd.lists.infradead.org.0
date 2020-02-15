Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A7015FCFC
	for <lists+linux-mtd@lfdr.de>; Sat, 15 Feb 2020 06:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMP+/8iLyda4wDKYRVS6y7rYDAVPJgRCecHzpBulz68=; b=ZabiDxgFTxRLZ7
	mlCUpRUScipdwtkNhSzXUjwOhkjc2xc+QavUMjTI3pPXPy+VJ36oQgdvbwJ84915SLsxzjsyB5Hqw
	VN/etsge6eiE4wdhuYqXDij/d05pmzInzKYmVzzRCxXYfHMInNZuIhlyQ4UdnUdyi92DB5IRTjTNl
	Tfe6JQKeRxaysk0DzdzuuyYBjomlppRixn4XYB87ytz3iuNceMNfSFqv2jCl0K/ntN2seMWp8I1FG
	3iA9qen/cNbSoszKgwH+T4HhzjdRZ/IE8VJXUsVFW2W/bofm6AkgOuXXY/8id2gr0x1GUVfXhcIhu
	HzVG6nZ67JewNfnBJJKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2qOx-0000v1-BQ; Sat, 15 Feb 2020 05:54:03 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2qOq-0000uF-9I
 for linux-mtd@lists.infradead.org; Sat, 15 Feb 2020 05:53:58 +0000
X-Originating-IP: 12.207.20.3
Received: from xps13 (unknown [12.207.20.3])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 163DAC0004;
 Sat, 15 Feb 2020 05:53:32 +0000 (UTC)
Date: Sat, 15 Feb 2020 06:53:28 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: Allow to compile test the new
 Ingenic driver
Message-ID: <20200215065328.01792ce3@xps13>
In-Reply-To: <1581609584.3.1@crapouillou.net>
References: <20200117212225.18004-1-miquel.raynal@bootlin.com>
 <1581609584.3.1@crapouillou.net>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_215356_462727_164A9258 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [12.207.20.3 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>,
 Harvey Hunt <harveyhuntnexus@gmail.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUGF1bCwKClBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PiB3cm90ZSBvbiBU
aHUsIDEzIEZlYiAyMDIwIDEyOjU5OjQ0Ci0wMzAwOgoKPiBIaSBNaXF1ZWwsIHNvcnJ5IGZvciBy
ZXNwb25kaW5nIHNvIGxhdGUuCj4gCj4gCj4gTGUgdmVuLiwgamFudi4gMTcsIDIwMjAgYXQgMjI6
MjIsIE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IGEgw6ljcml0IDoK
PiA+IFRoaXMgZHJpdmVyIGhhcyBubyBhcmNoLXNwZWNpZmljIGluc3RydWN0aW9ucyBzbyB3ZSBz
aG91bGQgYmUgYWJsZSB0bwo+ID4gY29tcGlsZSBpdCB3aXRoIGFueSBjb21waWxlci4KPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNv
bT4gIAo+IAo+IExvb2tzIGdvb2QgdG8gbWUuCj4gUmV2aWV3ZWQtYnk6IFBhdWwgQ2VyY3VlaWwg
PHBhdWxAY3JhcG91aWxsb3UubmV0PgoKQWN0dWFsbHkgSSBoYWQgZXJyb3JzIHJlcG9ydGVkIGJ5
IHJvYm90cyBzbyBJIGRyb3BwZWQgaXQgZm9yIG5vdy4gWW91CmNhbiBzZWUgdGhlIGVycm9ycyB0
aGF0IEkgYnVtcGVkIHlvdSBpbiBhbm90aGVyIHRocmVhZCwgc2VlOgoKCVN1YmplY3Q6IEZ3OiBb
bWlxdWVscmF5bmFsOmVjYy1lbmdpbmUgMS82MF0KCWluZ2VuaWNfbmFuZF9kcnYuYzp1bmRlZmlu
ZWQgIHJlZmVyZW5jZSB0byBgano0NzgwX25lbWNfYXNzZXJ0JwoJRGF0ZTogVHVlLCAyMSBKYW4g
MjAyMCAxNjozMTo1NyArMDEwMAoKSWYgeW91IGZpbmQgc29tZSB0aW1lIHRvIGZpeCB0aGlzLCB0
aGF0IHdvdWxkIGJlIHZlcnkgYXBwcmVjaWF0ZWQgYW5kCmhlbHBmdWwhCgoKVGhhbmtzLApNaXF1
w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
