Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71545BEF5
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jul 2019 17:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0U75ejYaqd36BPCUgC+5yISfHyByxC5cpjufbCcXPc=; b=HyPHvztTBdVp5I
	3nit/Nfj3KwKBNqfJ2A9MBsmz3pr2ELZYGVC6nFWOmTbjKQodT51XJceuXCaDB2b8y5yMXtyInjJQ
	jHuh95wHaz343J1Jg5NWxV/8uB2NemQ7kXg4kA6ZoDSngS3VMil6ouVX6L4uACoWrJg93U/2WWyBE
	NdTwwitOCuWjOTo0YFAqjgs2nav/xG91Vg4pzk6ZrqtTAP7pNSYVbDgDq4BWctnN8+A9pqNOA9Q7o
	TNEduv67AGdiWU/Noo3IlL3xBZu9X45oYRLGkQn0lDBhOa0AdtDHhIpEJHjIo9PkVZTNExviGZaKQ
	81GfDLCyQ4xiP2F0xyfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhxox-0004hj-73; Mon, 01 Jul 2019 15:02:19 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhxop-0004h3-Hq
 for linux-mtd@lists.infradead.org; Mon, 01 Jul 2019 15:02:12 +0000
Received: by mail-qt1-f193.google.com with SMTP id p15so14984652qtl.3
 for <linux-mtd@lists.infradead.org>; Mon, 01 Jul 2019 08:02:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Fq004zebmgtTzmnwbWXTcWPMH7zP0e/OuuIiaISYIRI=;
 b=tGuWVJkmbSGxhRIPRCWUVZim0wbtRZlYXJZaJUOotXYHebnKsms3cxegE/lYbfyfrI
 cZQnymCmI11wssNg3SouMVPVSYHUxzodPhUgHC7GYO1xI2ubG9KRuH1R1ytXKvOZk6p4
 NLdGPNAmR3Tx5yKjY+Zt69rQi5Jj/The8QI4Pf9MFC2KN7d79jgOp/Z+OOyYO3oQSSkV
 E+nybZEGPeTCkGanDA5FDa6Oc1NASavk8KcetBnikIHLAFHN7oXYMmRUINy44QSnl3GG
 FTIZ53j97/Eg8/6A3LTipwfid04/a6PgCm1B5bLSRqxF5Ea38YXbG8MH+hx/CVfnPEg9
 9mbg==
X-Gm-Message-State: APjAAAUcBoIR4qBZ/uYjOgN/u+aWDXTW+CQcdsGs8jFKbONRmlvE2+nR
 /CjRVI+aBx4uLCjX/raSeFQT6vWgKnD/01GsueY=
X-Google-Smtp-Source: APXvYqz8wuFavBSHd4/mfaUyYtg+NKCI8hh7m6mnAhjCIO6aC5Ab5xB+rwLaf3yLQWe9nTm0/W7OWAhICNYCBc0LL/Q=
X-Received: by 2002:aed:2bc1:: with SMTP id e59mr20866803qtd.7.1561993328905; 
 Mon, 01 Jul 2019 08:02:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190617111110.2103786-1-arnd@arndb.de>
 <1560770644.1774.0@crapouillou.net>
 <CAK8P3a28NrvLP1nE7TQUCqwYXVwrSnVUJoH0yTSqRpz93f4g2Q@mail.gmail.com>
 <20190617141659.376c0271@xps13> <20190627184047.6faa058a@xps13>
 <1561751588.1914.0@crapouillou.net>
In-Reply-To: <1561751588.1914.0@crapouillou.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 1 Jul 2019 17:01:52 +0200
Message-ID: <CAK8P3a3sa16_zx-otkH8KrZFhOqKP_mx0vFrLyhPjPD3exeptg@mail.gmail.com>
Subject: Re: [PATCH] mtd: rawnand: ingenic: fix ingenic_ecc dependency
To: Paul Cercueil <paul@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_080211_593206_B9C09D54 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMjgsIDIwMTkgYXQgOTo1MyBQTSBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBv
dWlsbG91Lm5ldD4gd3JvdGU6Cj4gTGUgamV1LiAyNyBqdWluIDIwMTkgw6AgMTg6NDAsIE1pcXVl
bCBSYXluYWwKPiA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gYSDDqWNyaXQgOgoKPiA+IE1p
cXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdyb3RlIG9uIE1vbiwgMTcg
SnVuIDIwMTkKPiA+IDE0OjE2OjU5ICswMjAwOgo+ID4+ICBJIHBlcnNvbmFsbHkgaGF2ZSBhIHBy
ZWZlcmVuY2UgZm9yIHRoaXMgb25lLgo+ID4KPiA+IFdvdWxkIHlvdSBtaW5kIHNlbmRpbmcgdGhl
IGFib3ZlIGNoYW5nZT8gSSBmb3Jnb3QgYWJvdXQgaXQgYnV0IEkgd291bGQKPiA+IGxpa2UgdG8g
cXVldWUgaXQgZm9yIHRoZSBuZXh0IHJlbGVhc2UuIFByZWZlcmFibHkgdGhlIGxhc3QgdmVyc2lv
bgo+ID4gQXJuZAo+ID4gcHJvcG9zZWQuCj4KPiBJdCBkb2VzIGNoYW5nZSB0aGUgbW9kdWxlIG5h
bWUgZnJvbSAnaW5nZW5pY19uYW5kJyB0byAnano0NzgwX25hbmQnLAo+IHRob3VnaC4KPiBUaGF0
J3Mgbm90IHJlYWxseSBpZGVhbC4uLgoKQW55IG90aGVyIHN1Z2dlc3Rpb24gZm9yIHRoZSBuYW1l
PyBJZiB0aGUgbW9kdWxlIGtlZXBzIGdldHRpbmcgY2FsbGVkCmluZ2VuZXJpY19uYW5kLmtvLCB0
aGVuIHRoZSBzb3VyY2UgZmlsZSBoYXMgdG8gZ2V0IHJlbmFtZWQgdG8gc29tZXRoaW5nCmVsc2Ug
aW5zdGVhZC4KCiAgICAgIEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
