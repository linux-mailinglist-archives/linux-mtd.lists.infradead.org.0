Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71118162375
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 10:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WTfLV5CohgSFbMuElNDBoV7iIhyuAeV9w6a820MoWFA=; b=DbuzofnsJdDDtlOi955SyINZ6
	nJVnOXHPUl54wGPWtZLX7H7f1ig1xkdv43bCkayY0NZRCDq+qC77u3AVErxiyQAqli3nfK5yV3hRn
	2Vpw7gp2OjfeZDSmh2KUVHm6VR2Cc3D8v7u5dfEe4HZb87Lv0Qd7wbN4AJg9mw5szjzEKiXDXwqtQ
	mLNUAFtjpF5VKnNaA4J6dz8WWqf580AeL2nWrWCwAbKHaWioJwqdADLpuXJKjquPPD8+mIygLdO9/
	8aazT0ToaSKoq7Ke1/1c099uMI+IRnq390XPk4XDbBCuFOxHfkF2LmGf4fNLAbIxva3tr69167W6l
	HFRqpGhsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zI5-0006CP-8C; Tue, 18 Feb 2020 09:35:41 +0000
Received: from smtprelay0137.hostedemail.com ([216.40.44.137]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zHv-0006BG-11
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 09:35:32 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 893E11803A171;
 Tue, 18 Feb 2020 09:35:15 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, andy.pont@sdcsystems.com, :::::,
 RULES_HIT:41:152:355:379:599:960:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1513:1515:1516:1518:1521:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2693:3138:3139:3140:3141:3142:3352:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:5007:6119:6120:7652:7901:7903:10004:10226:10400:10848:11026:11473:11658:11914:12043:12438:12555:13069:13163:13229:13311:13357:14685:14721:21080:21627:21740:30003:30054:30060:30062:30090,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: nerve21_4ae4c17a69a15
X-Filterd-Recvd-Size: 2331
Received: from [192.168.10.100] (leeshill.plus.com [81.174.243.117])
 (Authenticated sender: andy.pont@sdcsystems.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Tue, 18 Feb 2020 09:35:14 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: JH <jupiter.hce@gmail.com>
Subject: Re: u-boot saveenv corrupted other MTD parttions
Date: Tue, 18 Feb 2020 09:35:12 +0000
Message-Id: <em52219238-cb1c-4787-82f9-9f23a0353568@andys-imac.leeshillfarm.local>
In-Reply-To: <CAA=hcWQBEbO865h2qZEs6DfK8FrDYhMpw+EzPyQ8-g22H7ykug@mail.gmail.com>
References: <CAA=hcWQBEbO865h2qZEs6DfK8FrDYhMpw+EzPyQ8-g22H7ykug@mail.gmail.com>
User-Agent: eM_Client/7.2.37934.0
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_013531_131537_E53E7B80 
X-CRM114-Status: UNSURE (   4.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.137 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.137 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: Andy Pont <andy.pont@sdcsystems.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Skggd3JvdGUuLi4KCj5ncG1pLW5hbmQ6MW0oYm9vdCksMW0odWJvb3RlbnYpLC0oc3RvcmFnZSkK
PHNuaXA+Cgo+VGhlIHNhdmVlbnYgZG9lcyBub3QgdGFrZSBhbnkgcGFyYW1ldGVycywgaG93IGRp
ZCBpdCB3b3JrIHRvIHdyaXRlIHRvCj50aGUgTkFORCAxbSh1Ym9vdGVudik/Cj4KPj0+IHNhdmVl
bnYKPlNhdmluZyBFbnZpcm9ubWVudCB0byBOQU5ELi4uIEVyYXNpbmcgTkFORC4uLgo+RXJhc2lu
ZyBhdCAweDVlMDAwMCAtLSAxMDAlIGNvbXBsZXRlLgo+V3JpdGluZyB0byBOQU5ELi4uIE9LCj4K
Pkl0IGxvb2tzIGxpa2UgdGhhdCBzYXZlZW52IG92ZXJ3cml0dGVuIHRvIHRoZSBzdG9yYWdlLCBp
cyAweDVlMDAwMCBSQU0KPm9yIE5BTkQgYWRkcmVzcz8KPgo+V2hlcmUgd2FzIHRoYXQgYWRkcmVz
cyBkZWZpbmVkPwpXaGF0IFUtQm9vdCB1c2VzIGZvciB0aGUgc3RvcmFnZSBvZiB0aGUgZW52aXJv
bm1lbnQgaXMgY29udHJvbGxlZCAKdGhyb3VnaCBjb25maWd1cmF0aW9uIG9wdGlvbnMuICBJbiBy
ZWNlbnQgdmVyc2lvbnMgdGhpcyBpcyBhbGwgaGFuZGxlZCAKdGhyb3VnaCB0aGUgb3B0aW9ucyBk
ZWZpbmVkIGluIGVudi9LY29uZmlnLiAgSW4gb2xkZXIgdmVyc2lvbnMgdGhlc2UgbWF5IApoYXZl
IGJlZW4gZGVmaW5lZCBpbiB0aGUgaW5jbHVkZS9jb25maWdzL215Ym9hcmRuYW1lLmggZmlsZS4K
CkNPTkZJR19FTlZfSVNfSU5fTkFORCB0ZWxscyBVLUJvb3QgdGhhdCB0aGUgZW52aXJvbm1lbnQg
aXMgdG8gYmUgc3RvcmVkIAppbiB0aGUgTkFORCBmbGFzaCBkZXZpY2UKCkNPTkZJR19FTlZfT0ZG
U0VUIGRlZmluZXMgaG93IGZhciBpbnRvIHRoZSBOQU5EIGRldmljZSB0aGUgZW52aXJvbm1lbnQg
CndpbGwgYmUgc3RvcmVkIChpbiB5b3VyIGNhc2UgdGhpcyBpcyBwcm9iYWJseSAweDVlMDAwMCkK
CkNPTkZJR19FTlZfU0laRSBkZWZpbmVzIGhvdyBiaWcgaXQgaXMKCllvdXIgZGVmaW5pdGlvbiBv
ZiB0aGUgbXRkIHBhcnRpdGlvbnMgZG9lc27igJl0IG1hdGNoLiAgWW91ciDigJx1Ym9vdGVudiIg
cGFydGl0aW9uIHN0YXJ0cyBhdCBvZmZzZXQgMHgxMDAwMDAgYW5kIHlvdXIg4oCcc3RvcmFnZeKA
nSBwYXJ0aXRpb24gc3RhcnRzIGF0IG9mZnNldCAweDIwMDAwMC4gIFdoZW4geW91IHJ1biB0aGUg
c2F2ZWVudiBjb21tYW5kIHlvdSBhcmUgd3JpdGluZyBzb21ld2hlcmUgaW4gdGhlIG1pZGRsZSBv
ZiB0aGUg4oCcc3RvcmFnZeKAnSBwYXJ0aXRpb24uCgotQW5keS4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Np
b24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbXRkLwo=
