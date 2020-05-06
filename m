Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7CA1C799E
	for <lists+linux-mtd@lfdr.de>; Wed,  6 May 2020 20:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=higOlo7S6PzPI8LVyKBmSrit3nfODs3e/RXrFroM/hg=; b=gwb95QTV3TD+5V
	+tmQE1SlA+o+wHHbxWz1CqzHidUiFeyOhdOlQTKbOlqdLu8rMSwXKA659ExV9f8VkxsiNwMGij2Mn
	iAiwva0VJYkavyFwGpnnyUn5s5AcPzKJz9o8XcWqvnB4/DwUpcDTS/YFM7UHg+qZOIhZXHLX9GTB7
	i6MNOd4bn/vE3BYyIbZqMIW7tb3t+LDnDnnxYL1jKgRDeHxyD9nW6vuap4kKUkRUTs/Hz0tNF+oD1
	wYTOyphGOcovmxUVF/ixrkerEXMnclM4eF7xz4ySttv1xhK7/eJO9B9p2AR59G29eyedUsTG+Flf+
	rKtEvVb+3pu3wHmEhbqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWP2I-0006QO-Qu; Wed, 06 May 2020 18:44:50 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWP28-0006Oc-9y
 for linux-mtd@lists.infradead.org; Wed, 06 May 2020 18:44:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 271686071A7C;
 Wed,  6 May 2020 20:44:30 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id JxS_yR5matD3; Wed,  6 May 2020 20:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id C0B1260CEF4B;
 Wed,  6 May 2020 20:44:29 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lqo5YVuLjP69; Wed,  6 May 2020 20:44:29 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 95140609D2CC;
 Wed,  6 May 2020 20:44:29 +0200 (CEST)
Date: Wed, 6 May 2020 20:44:29 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: "Bean Huo (beanhuo)" <beanhuo@micron.com>
Message-ID: <1414270659.192477.1588790669444.JavaMail.zimbra@nod.at>
In-Reply-To: <BN7PR08MB56843895500F4ADA88262C59DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200503114029.30257-1-miquel.raynal@bootlin.com>
 <20200503114029.30257-4-miquel.raynal@bootlin.com>
 <BN7PR08MB5684D285CAE2438B355DCE80DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
 <20200506104522.6c90f88f@collabora.com>
 <BN7PR08MB5684D8DFC50CB93B53705619DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
 <20200506180420.13996633@collabora.com>
 <BN7PR08MB56843895500F4ADA88262C59DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
Subject: Re: [EXT] [PATCH v2 3/3] mtd: rawnand: micron: Address the shallow
 erase issue
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: rawnand: micron: Address the shallow erase issue
Thread-Index: AQHWIT+tSg2eMxWQMkmMQ2x4Hr5xC6iauX8wgAAJXACAAHVPUIAABVcAgAAAtIDY4+LN9g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_114440_640442_947ED2E4 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 "Zoltan Szubbocsev \(zszubbocsev\)" <zszubbocsev@micron.com>,
 Steve deRosier <derosier@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, tglx <tglx@linutronix.de>,
 Piotr Wojtaszczyk <WojtaszczykP@cumminsallison.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QmVhbiwgQm9yaXMsCgotLS0tLSBVcnNwcsO8bmdsaWNoZSBNYWlsIC0tLS0tCj4+ID4gQ29uY2Vy
bmluZyB0aGlzLCBJIHN0aWxsIGhhdmUgcXVlc3Rpb24sIGZvciB0aGUgVUJJRlMsICBJZiBJIGFt
Cj4+ID4gY29ycmVjdCwgdGhlcmUgYXJlIEVDIGFuZCBWSUQgaGVhZGVyIGJvdGggYmVpbmcgZGFt
YWdlZCwgdGhlbiBVQklGUwo+PiA+IHdpbGwgcmUtZXJhc2UgaXQuIEkgZG9uJ3Qga25vdyBpZiBV
QklGUyBjYW4gaGFuZGxlIHRoZXJlIGlzIGRpcnR5L2ZpbGxpbmcgZGF0YQo+PiA+IGluIHRoZQo+
PiBzb21lIHBhZ2VzICBhbmQgRUMvVklEIHZhbGlkLgoKVWhoLiBEYW1hZ2luZyBqdXN0IHBheWxv
YWQgYXNrcyBmb3IgdHJvdWJsZS4KCj4+ID4gTWF5YmUgUmljaGFyZCBoYXMgZml4ZWQgaXQuCj4+
IAo+PiBJZiB0aGUgYmxvY2sgaXMgYmVpbmcgZXJhc2VkIHRoYXQgbWVhbnMgdGhlcmUncyBhbm90
aGVyIG9uZSBtYXBwZWQgdG8gdGhlIHNhbWUKPj4gTEVCLCBvciB0aGUgYmxvY2sgaXMgc2ltcGx5
IG5vdCBuZWVkZWQgYW55bW9yZS4gSW4gYm90aCBjYXNlcywgdGhpcyBvbGQgYmxvY2sKPj4gc2hv
dWxkbid0IGJlIHJlZmVyZW5jZWQuIEFnYWluLCBpZiB0aGF0IGhhcHBlbnMsIGl0J3MgYSBidWcu
CgpTYWRseSBpdCBpcyBub3Qgc28gZWFzeS4KCklJUkMgdGhlIFVCSUZTIGxvZyByaW5nIGlzIHN1
Y2ggYSBjb3JuZXIgY2FzZSwgaXQgdXNlcyBhIGZpeGVkIExFQiByYW5nZSBmb3IKdGhpcyBwdXJw
b3NlLiBCZWZvcmUgd3JpdGluZyB0byBhIG5ldyBMRUIgaXQgdW5tYXBzIGl0LiBJZiB0aGUgcmVz
dWx0aW5nIGVyYXNlIG9wZXJhdGlvbgppcyBpbnRlcnJ1cHRlZCBiZWZvcmUgYSBuZXcgdmVyc2lv
biBvZiB0aGUgc2FtZSBMRUIgaXMgd3JpdHRlbiByZWFkaW5nIGZyb20gdGhhdApMRUIgd291bGQg
cmVzdWx0IGluIEVDQyBlcnJvcnMuCiAKPiBXb3VsZCB5b3UgcGxlYXNlIGhlbHAgdXMgY29uZmly
bSB0aGlzPyAgaG93IGRvZXMgdWJpZnMgaGFuZGxlIHRoaXMgc2l0dWF0aW9uPwo+IEFsc28gb3Ro
ZXIgRlM/IEVnLCBqZmZzMiwgeWFmZnMKClRoZXJlIGFyZSBjYXNlcyB3aGVyZSAocGFydGlhbGx5
KSBlcmFzZWQgTEVCcyBhcmUgc3RpbGwgcmVmZXJlbmNlZC4KVUJJRlMgYXNzdW1lcyB0aGF0IGEg
TEVCIGl0IHVubWFwcyBpcyBhZnRlciBhIHBvd2VyLWN1dCBlaXRoZXIgMHhGRiBvciBpbnRhY3Qu
CkluIHJlbGllcyBpbiB0aGUgZmFjdCB0aGF0IFVCSSB3aWxsIGRldGVjdCBhbiBpbnRlcnJ1cHRl
ZCBlcmFzZSBvcGVyYXRpb24gYW5kCnJlLWVyYXNlcyB0aGUgUEVCLgpGYXN0bWFwIG9uY2Ugdmlv
bGF0ZWQgdGhpcyBydWxlLCBpdCB0b29rIHllYXJzIHVudGlsIHRoZSBmaXJzdCB1c2VyIGhpdCB0
aGlzLgoKU28gcGxlYXNlIG1ha2Ugc3VyZSB0aGF0IHRoZSBWSUQgaGVhZGVyIHdpbGwgYmUgZGVz
dHJveWVkLgoKSkZGUzIgbmVlZHMgYWxzbyB0aG91Z2h0cywgbGV0IG1lIGNoZWNrIHRoZSBzb3Vy
Y2UuCgpZQUZGUyBpcyBvdXQgdHJlZSBhbmQgdGhlcmVmb3JlIG91dCBvZiBtaW5kLgoKVGhhbmtz
LAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
