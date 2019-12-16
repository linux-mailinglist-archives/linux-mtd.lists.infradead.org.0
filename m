Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E85B120207
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Dec 2019 11:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wrrypuz/SGzVzCx7WEJRsMJN4nwbT7urQ34cNTuaVU8=; b=Evls9F/hwiHhma
	CsoCLZgHUwc0N8kUQSpXiYeFqJUAtP3GxbDztCNWqI1/cM9mzUlb/EL+zINGyTeivN9BmeFP3Usxh
	oDfSLBWJI3fIGrBr2sbsrsljpO72tTg7ng2pTZCAm37EJM2gJzhs9yQ46px71NjMV1yiFnQEJkQkj
	JKkbwDnJYvRop8DszRbKShm3zl/XMXdLCQZI1Afu2wuoBY9IDdAHEuVVRuHWNVPuxAi7wzCrt46rP
	4kgHgPKD426PUWgDTwynUyB+9qai/ouos+QIn8wtA2lCbRoUP/7ioepplv0E/IFgkf2mrw5xQ9D/d
	CgLCfqSwrd9LQgofczew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignKc-0006QI-LY; Mon, 16 Dec 2019 10:10:26 +0000
Received: from smtp.eckelmann.de ([217.19.183.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignKJ-00055y-5m
 for linux-mtd@lists.infradead.org; Mon, 16 Dec 2019 10:10:09 +0000
Received: from EX-SRV1.eckelmann.group (2a00:1f08:4007:e035:172:18:35:4) by
 EX-SRV1.eckelmann.group (2a00:1f08:4007:e035:172:18:35:4) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Mon, 16 Dec 2019 11:10:02 +0100
Received: from EX-SRV1.eckelmann.group ([fe80::250:56ff:fe8b:faa6]) by
 EX-SRV1.eckelmann.group ([fe80::250:56ff:fe8b:faa6%3]) with mapi id
 15.01.1591.017; Mon, 16 Dec 2019 11:10:02 +0100
From: "Mainz, Roland" <R.Mainz@eckelmann.de>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: RE: Support for @(POSIX|NFSv4)-ACLs on UBIFS ?
Thread-Topic: Support for @(POSIX|NFSv4)-ACLs on UBIFS ?
Thread-Index: AdWz8FX7isH1Se87ReqfFAVbE0Dz5v//+VgA///o9sA=
Date: Mon, 16 Dec 2019 10:10:01 +0000
Message-ID: <882abf5cf5994b3db6a4d27b62b34b95@eckelmann.de>
References: <4cb355340b844ab49671eb1068f45434@eckelmann.de>
 <CAFLxGvz2=LZkU769af8r46A+D=at2FQqr4cype5FGcSrsDc_bQ@mail.gmail.com>
In-Reply-To: <CAFLxGvz2=LZkU769af8r46A+D=at2FQqr4cype5FGcSrsDc_bQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2a00:1f08:4007:3c00:e079:6641:a7b5:83c7]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_021007_251239_5D562056 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

DQoNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJpY2hhcmQgV2Vp
bmJlcmdlciBbbWFpbHRvOnJpY2hhcmQud2VpbmJlcmdlckBnbWFpbC5jb21dDQo+IFNlbnQ6IE1v
bmRheSwgRGVjZW1iZXIgMTYsIDIwMTkgMTA6NDQgQU0NCj4gVG86IE1haW56LCBSb2xhbmQgPFIu
TWFpbnpAZWNrZWxtYW5uLmRlPg0KPiBDYzogbGludXgtbXRkQGxpc3RzLmluZnJhZGVhZC5vcmcN
Cj4gU3ViamVjdDogUmU6IFN1cHBvcnQgZm9yIEAoUE9TSVh8TkZTdjQpLUFDTHMgb24gVUJJRlMg
Pw0KPiANCj4gT24gTW9uLCBEZWMgMTYsIDIwMTkgYXQgMTA6MDkgQU0gTWFpbnosIFJvbGFuZCA8
Ui5NYWluekBlY2tlbG1hbm4uZGU+DQo+IHdyb3RlOg0KPiA+IEFyZSB0aGVyZSBhbnkgcGxhbnMg
dG8gc3VwcG9ydCBQT1NJWCBBQ0xzIChvciB0aGUgZXh0ZW5kZWQgTkZTdjQgc2V0IG9mDQo+IEFD
THMpIG9uIFVCSUZTID8NCj4gDQo+IFdlbGwsIGlmIHRoZXJlIGlzIG5lZWQgZm9yIGl0IEkgY2Fu
IHRyeSB0byBmaW5kIHRpbWUgdG8gaW1wbGVtZW50IGl0Lg0KPiAuLi5vciBiZXR0ZXIsIHlvdSBp
bXBsZW1lbnQgaXQgYW5kIHNlbmQgcGF0Y2hlcyA6KQ0KDQpTb21lb25lIGFscmVhZHkgc2VuZCBw
YXRjaGVzIGFyb3VuZCwgc2VlIGh0dHBzOi8vbHduLm5ldC9BcnRpY2xlcy82NTcyODcvDQoNCi0t
LS0NCg0KTWZnLA0KUm9sYW5kIE1haW56DQotLSANClJvbGFuZCBNYWlueiwgTUFBL0NBUw0KRWNr
ZWxtYW5uIEFHLCBCZXJsaW5lciBTdHIuIDE2MSwgNjUyMDUgV2llc2JhZGVuDQpUZWxlZm9uICs0
OS82MTEvNzEwMy02NjEsIEZheCArNDkvNjExLzcxMDMtMTMzDQpyLm1haW56QGVja2VsbWFubi5k
ZQ0KDQpFY2tlbG1hbm4gR3JvdXAg4oCTIFNvdXJjZSBvZiBpbnNwaXJhdGlvbg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVRE
IGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbXRkLwo=
