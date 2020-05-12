Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC461CEF3C
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 10:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsfhGOFanG04p1qw5+Fy9uLd0VFQEP/xpCZfe3eP1wU=; b=jWsZHU4uhLZwOh
	Xr3t5COAiNKz6wqhO/PW99T5wg3kVPyFffww4J6e5Q0dmYPBVo6XPGJKC63V7FcGERVUJcnEMgGZ7
	lUyXhB0y4UXYulUgE6SBPsTZeQYkNKMEopi58ZQnL93DNbz1RmEAIbeLBpaCX1nasxch3l1+BZ0y/
	2S/RKdx92NQcxZV51yNdrDSe3VLx9DIXOX69entzFHXj6rKxe3AwRcKMUnkP1JnlucYLCuBorX6yB
	OSdQcpq9qx6j2mZJF1+d62uMFkLGWPMHPLa3pjjXwVL0OTCxF/+MdfcDH4lcH/89gxuHGpJaBenmM
	cJ5xtojGW+4qKD6qr5NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQP7-0001PN-Ma; Tue, 12 May 2020 08:36:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQOw-0001Nz-LZ
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 08:36:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id w7so14260966wre.13
 for <linux-mtd@lists.infradead.org>; Tue, 12 May 2020 01:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=DMbCWzJsZM9DNTLzWEC8TAykJzUse/sU79x4x91C8Yo=;
 b=FiJsisWPn2KGy1wWHzBWq7nclevQuBINRZTmi8N6JLqVbR/oVnEk8Ttyx9bGcKT9nR
 ig/Lzc4Znqz38Yu+0edEZOvXpiJoN2FqhOeIWoi6Vm7qzTn/YVlYhtOKj9EZYuF5OlVU
 BNEqjI7jJz8OkKhP1J9CvbkDC/KVv9vS/yujGSPhJP8rR5iU7axxDyISX2Z5J2ZBseEv
 nj6uvntA5SfQtxQTW3OSOImDztMzGWXczLeCSXfsnrafNitkjId9t4SmkJFkHMh3yhgh
 UEdLHhVlbWyQ7evEQHcRdbFnv9IK77nYs5oNCOw/8jS6o3Kd0/cqeyObqxGiKvHJfsDc
 c5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=DMbCWzJsZM9DNTLzWEC8TAykJzUse/sU79x4x91C8Yo=;
 b=YjnGFjPie8AXFE/T2FBt3/tWRGE4uMPiO4me2KXg9wHVEOqykgf0eyUHofh3knAYlP
 RXp0Q9I9Re0EurTOCWeMwfW6MOf5jYG0i/PM6Y9SaXhP2lJORG0l5P8U1VCCrKc6Tc61
 z4KN7El5mt36EwxRM3pIuwsCfl61QgQ+ZxF9yS0kOXriRjL12qbEVxmg/oXSRW1g+MM6
 CiWjo1YDWDiJKNOtlY5HuGeD4b/kRMPPob9KzaD6S5GBX+5olNJXkc7YL0o9aTe1JSwj
 A7Tkc3g0rdx9w0TaFboUpJcOoz29ZRejtYqE9mEvT/4PtndZNnn3ytFv5XSsKYogvHNP
 MqwQ==
X-Gm-Message-State: AGi0PuaASDW1nDKnYPukJirJ/VM/w2HvgeJFsFZPf2pkVnEh4my58Kqa
 TaQfip/lohBD/gUqZGd4SaM=
X-Google-Smtp-Source: APiQypKvU4+RHSTrvSDGPNDm9fnWGR9yw7wjSnwOTTnkAQLGwcIipeHB/l3vNdoHsb1U9asimbf+OQ==
X-Received: by 2002:adf:e450:: with SMTP id t16mr13673642wrm.66.1589272591116; 
 Tue, 12 May 2020 01:36:31 -0700 (PDT)
Received: from macbook-pro-alvaro.lan
 (198.red-83-49-57.dynamicip.rima-tde.net. [83.49.57.198])
 by smtp.gmail.com with ESMTPSA id f128sm18329615wme.1.2020.05.12.01.36.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 01:36:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH] nand: raw: use write_oob_raw for MTD_OPS_AUTO_OOB mode
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <20200511182923.6a4961ab@xps13>
Date: Tue, 12 May 2020 10:36:25 +0200
Message-Id: <6F41AA9B-71D6-47FA-BC12-24941F84DA71@gmail.com>
References: <20200504094253.2741109-1-noltari@gmail.com>
 <20200504123237.5c128668@collabora.com> <20200511182923.6a4961ab@xps13>
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_013634_731575_FE0E7563 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: christophe.kerello@st.com, vigneshr@ti.com, richard@nod.at,
 s.hauer@pengutronix.de, devik@eaxlabs.cz, linux-kernel@vger.kernel.org,
 stefan@agner.ch, Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd@lists.infradead.org, tglx@linutronix.de, masonccyang@mxic.com.tw,
 piotrs@cadence.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGksCgo+IEVsIDExIG1heSAyMDIwLCBhIGxhcyAxODoyOSwgTWlxdWVsIFJheW5hbCA8bWlxdWVs
LnJheW5hbEBib290bGluLmNvbT4gZXNjcmliacOzOgo+IAo+IEhlbGxvLAo+IAo+IEJvcmlzIEJy
ZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlIG9uIE1vbiwgNCBN
YXkKPiAyMDIwIDEyOjMyOjM3ICswMjAwOgo+IAo+PiBPbiBNb24sICA0IE1heSAyMDIwIDExOjQy
OjUzICswMjAwCj4+IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
IHdyb3RlOgo+PiAKPj4+IFNvbWUgTkFORCBjb250cm9sbGVycyBjaGFuZ2UgdGhlIEVDQyBieXRl
cyB3aGVuIE9PQiBpcyB3cml0dGVuIHdpdGggRUNDCj4+PiBlbmFibGVkLgo+Pj4gVGhpcyBpcyBh
IHByb2JsZW0gaW4gYnJjbW5hbmQsIHNpbmNlIGFkZGluZyBKRkZTMiBjbGVhbm1hcmtlcnMgYWZ0
ZXIgdGhlIHBhZ2UKPj4+IGhhcyBiZWVuIGVyYXNlZCB3aWxsIGNoYW5nZSB0aGUgRUNDIGJ5dGVz
IHRvIDAgYW5kIHRoZSBjb250cm9sbGVyIHdpbGwgdGhpbmsKPj4+IHRoZSBibG9jayBpcyBiYWQu
Cj4+PiBJdCBjYW4gYmUgZml4ZWQgYnkgdXNpbmcgd3JpdGVfb29iX3Jhdywgd2hpY2ggZW5zdXJl
cyBFQ0MgaXMgZGlzYWJsZWQuCj4+PiAKPj4+IFNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOh
bmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+IGRyaXZlcnMvbXRkL25h
bmQvcmF3L25hbmRfYmFzZS5jIHwgMiArLQo+Pj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4+PiAKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5k
L3Jhdy9uYW5kX2Jhc2UuYyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jCj4+PiBp
bmRleCBjMjRlNWUyYmExMzAuLjc1NWQyNTIwMDUyMCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMv
bXRkL25hbmQvcmF3L25hbmRfYmFzZS5jCj4+PiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9u
YW5kX2Jhc2UuYwo+Pj4gQEAgLTQ4OCw3ICs0ODgsNyBAQCBzdGF0aWMgaW50IG5hbmRfZG9fd3Jp
dGVfb29iKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIGxvZmZfdCB0bywKPj4+IAo+Pj4gCW5hbmRf
ZmlsbF9vb2IoY2hpcCwgb3BzLT5vb2JidWYsIG9wcy0+b29ibGVuLCBvcHMpOwo+Pj4gCj4+PiAt
CWlmIChvcHMtPm1vZGUgPT0gTVREX09QU19SQVcpCj4+PiArCWlmIChvcHMtPm1vZGUgPT0gTVRE
X09QU19BVVRPX09PQiB8fCBvcHMtPm1vZGUgPT0gTVREX09QU19SQVcpCj4+PiAJCXN0YXR1cyA9
IGNoaXAtPmVjYy53cml0ZV9vb2JfcmF3KGNoaXAsIHBhZ2UgJiBjaGlwLT5wYWdlbWFzayk7ICAK
Pj4gCj4+IFRoZSBkb2Mgc2F5czoKPj4gCj4+IEBNVERfT1BTX1BMQUNFX09PQjogIE9PQiBkYXRh
IGFyZSBwbGFjZWQgYXQgdGhlIGdpdmVuIG9mZnNldCAoZGVmYXVsdCkKPj4gQE1URF9PUFNfQVVU
T19PT0I6ICAgT09CIGRhdGEgYXJlIGF1dG9tYXRpY2FsbHkgcGxhY2VkIGF0IHRoZSBmcmVlIGFy
ZWFzCj4+ICAgICAgICAgICAgICAgICAgICAgd2hpY2ggYXJlIGRlZmluZWQgYnkgdGhlIGludGVy
bmFsIGVjY2xheW91dAo+PiBATVREX09QU19SQVc6ICAgICAgICBkYXRhIGFyZSB0cmFuc2ZlcnJl
ZCBhcy1pcywgd2l0aCBubyBlcnJvcgo+PiAJCSAgICAgY29ycmVjdGlvbjsgdGhpcyBtb2RlIGlt
cGxpZXMgJU1URF9PUFNfUExBQ0VfT09CCj4+IAo+PiBUbyBtZSwgdGhhdCBtZWFucyBNVERfT1BT
X1BMQUNFX09PQiBhbmQgTVREX09QU19BVVRPX09PQiBkbyBub3QgaW1wbHkKPj4gTVREX09QU19S
QVcuIEFueXdheSB0aG9zZSBtb2RlcyBhcmUganVzdCB0b28gdmFndWUuIFdlIHJlYWxseSBzaG91
bGQKPj4gc2VwYXJhdGUgdGhlIEVDQy1kaXNhYmxlZC9FQ0MtZW5hYmxlZCBjb25jZXB0IChBS0Eg
cmF3IHZzIG5vbi1yYXcgbW9kZSkKPj4gZnJvbSB0aGUgT09CIHBsYWNlbWVudCBzY2hlbWUuIElJ
UkMsIE1pcXVlbCBoYWQgYSBwYXRjaHNldCBkb2luZyB0aGF0Lgo+PiAKPj4gV2UgYWxzbyBzaG91
bGQgaGF2ZSB0aGUgY29uY2VwdCBvZiBwcm90ZWN0ZWQgT09CLXJlZ2lvbiB2cwo+PiB1bnByb3Rl
Y3RlZC1PT0ItcmVnaW9uIGlmIHdlIHdhbnQgSkZGUzIgdG8gd29yayB3aXRoIGNvbnRyb2xsZXJz
IHRoYXQKPj4gcHJvdGVjdCBwYXJ0IG9mIHRoZSBPT0IgcmVnaW9uLiBPbmNlIHdlIGhhdmUgdGhh
dCB3ZSBjYW4gcGF0Y2ggSkZGUzIKPj4gdG8gd3JpdGUgdGhpbmdzIHdpdGggIkVDQy1kaXNhYmxl
ZCIrImF1dG8tT09CLXBsYWNlbWVudC1vbi11bnByb3RlY3RlZAo+PiBhcmVhIi4KPiAKPiBJIHNl
ZSB0aGUgcHJvYmxlbSBidXQgYXMgQm9yaXMgc2FpZCB0aGUgZml4IGlzIG5vdCB2YWxpZCBhcy1p
cy4KPiBQcm9ibGVtIGlzOiBJIGRvbid0IGhhdmUgYSBiZXR0ZXIgcHJvcG9zYWwgeWV0Lgo+IAo+
IElzIGZvcmNpbmcgSkZGUzIgdG8gd3JpdGUgY2xlYW5tYXJrZXJzIGluIHJhdyBtb2RlIG9ubHkg
YW4gb3B0aW9uPwoKVGhlIGRvYyBzYXlzIHRoYXQgZm9yIE1URF9PUFNfQVVUT19PT0IgInRoZSBk
YXRhIGlzIGF1dG9tYXRpY2FsbHkgcGxhY2VkIGF0IHRoZSBmcmVlIGFyZWFzIHdoaWNoIGFyZSBk
ZWZpbmVkIGJ5IHRoZSBpbnRlcm5hbCBlY2NsYXlvdXTigJ0uClNvLCBpZiB3ZeKAmXJlIHBsYWNp
bmcgdGhpcyBkYXRhIGluIHRoZSBmcmVlIE9PQiBhcmVhIGxlZnQgYnkgdGhlIEVDQyBieXRlcyBp
dCBtZWFucyB0aGF0IHRoaXMgYXV0b21hdGljYWxseSBwbGFjZWQgZGF0YSB3b27igJl0IGJlIGVy
cm9yIGNvcnJlY3RhYmxlLCBzaW5jZSBpdOKAmXMgaW4gdGhlIE9PQiwgYW5kIHRoZSBPT0IgZGF0
YSBpc27igJl0IGVycm9yIGNvcnJlY3RlZCwgcmlnaHQ/CgpUaGUgcHJvYmxlbSBpcyB0aGF0ICJm
bGFzaF9lcmFzZSAtauKAnSB1c2VzIE1URF9PUFNfQVVUT19PT0IgdG8gd3JpdGUgdGhlIE9PQiBK
RkZTMiBjbGVhbiBtYXJrZXJzIGFuZCBpZiB0aGlzIGlzIHdyaXR0ZW4gd2l0aCBFQ0MgZW5hYmxl
ZCB0aGUgTkFORCBjb250cm9sbGVyIHdpbGwgY2hhbmdlIHRoZSBFQ0MgYnl0ZXMgdG8gYW4gaW52
YWxpZCB2YWx1ZSAob3IgYXQgbGVhc3QgYnJjbW5hbmQgY29udHJvbGxlcikuCgpBbm90aGVyIG9w
dGlvbiBjb3VsZCBiZSBhZGRpbmcgYW5vdGhlciBtb2RlLCBzb21ldGhpbmcgbGlrZSBNVERfT1BT
X0FVVE9fT09CX1JBVyBhbmQgdXNpbmcgaXQgaW4gbXRkLXV0aWxzIGFuZCBKRkZTMi4KCkJlc3Qg
cmVnYXJkcywKw4FsdmFyby4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
