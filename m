Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD99135005
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 00:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IS6vcjhvciPLui1MDXW/DAKLlIwEvzucFeOnabPSJFI=; b=gcmtD6VPCrEaC5
	Wh6OB5Utn2cqITISPlARRSiJrVm8mIbr4zgtzipIr4ZaXTHMI0PGt2/W+vstK0vhbtLK8gaJR6enq
	umUddce2DFtXRhQpbVGPJynIsXoJR8UznC1Vx22E9bDWiSpboBQuYRCLK5ksf/PJ4pHbxCsUgHjjp
	ryQdv1QntgUtzXchseI/r9sBDMjc4rTzOK8A+o9fWbIV2DtApFsc+YMuCnLQ73AlXyhV1wFNkRFUM
	jbWoknNh2dJthW6v+3Z+CIsHsYIDMaanfCxKBxK6T+75tP6KEGrBN3cgrKL0jnz7DoW67s/cttiL/
	pzTp+HXPs4zbIDHZQTxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipKqZ-0000rr-Q6; Wed, 08 Jan 2020 23:34:43 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipKqP-0000o5-1b
 for linux-mtd@lists.infradead.org; Wed, 08 Jan 2020 23:34:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 2B2816088971;
 Thu,  9 Jan 2020 00:34:21 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id CsT3gYbuE3Kc; Thu,  9 Jan 2020 00:34:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D83B66088973;
 Thu,  9 Jan 2020 00:34:18 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id s2oRoDDa8HWx; Thu,  9 Jan 2020 00:34:18 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id B0E506088971;
 Thu,  9 Jan 2020 00:34:18 +0100 (CET)
Date: Thu, 9 Jan 2020 00:34:18 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Message-ID: <1651325521.16954.1578526458487.JavaMail.zimbra@nod.at>
In-Reply-To: <20191230111948.27005-1-miquel.raynal@bootlin.com>
References: <20191230111948.27005-1-miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2] mtd: implement proper partition handling
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: implement proper partition handling
Thread-Index: z2d6ScoCnUa2ltOlxYNsW5IowpbAEQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_153433_247853_133A97ED 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIk1pcXVlbCBSYXluYWwiIDxt
aXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+IEFuOiAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0
PiwgIlZpZ25lc2ggUmFnaGF2ZW5kcmEiIDx2aWduZXNockB0aS5jb20+LCAiVHVkb3IgQW1iYXJ1
cyIgPFR1ZG9yLkFtYmFydXNAbWljcm9jaGlwLmNvbT4sCj4gImxpbnV4LW10ZCIgPGxpbnV4LW10
ZEBsaXN0cy5pbmZyYWRlYWQub3JnPgo+IENDOiAiQm9yaXMgQnJlemlsbG9uIiA8Ym9yaXMuYnJl
emlsbG9uQGNvbGxhYm9yYS5jb20+LCAiVGhvbWFzIFBldGF6em9uaSIgPHRob21hcy5wZXRhenpv
bmlAYm9vdGxpbi5jb20+LCAiTWlxdWVsCj4gUmF5bmFsIiA8bWlxdWVsLnJheW5hbEBib290bGlu
LmNvbT4KPiBHZXNlbmRldDogTW9udGFnLCAzMC4gRGV6ZW1iZXIgMjAxOSAxMjoxOTo0OAo+IEJl
dHJlZmY6IFtQQVRDSCB2Ml0gbXRkOiBpbXBsZW1lbnQgcHJvcGVyIHBhcnRpdGlvbiBoYW5kbGlu
ZwoKPiBJbnN0ZWFkIG9mIGNvbGxlY3RpbmcgcGFydGl0aW9ucyBpbiBhIGZsYXQgbGlzdCwgY3Jl
YXRlIGEgaGllcmFyY2h5Cj4gd2l0aGluIHRoZSBtdGRfaW5mbyBzdHJ1Y3R1cmU6IHVzZSBhIHBh
cnRpdGlvbnMgbGlzdCB0byBrZWVwIHRyYWNrIG9mCj4gdGhlIHBhcnRpdGlvbnMgb2YgYW4gTVRE
IGRldmljZSAod2hpY2ggbWlnaHQgYmUgaXRzZWxmIGEgcGFydGl0aW9uIG9mCj4gYW5vdGhlciBN
VEQgZGV2aWNlKSwgYSBwb2ludGVyIHRvIHRoZSBwYXJlbnQgZGV2aWNlIChOVUxMIHdoZW4gdGhl
IE1URAo+IGRldmljZSBpcyB0aGUgcm9vdCBvbmUsIG5vdCBhIHBhcnRpdGlvbikuCgpXaGF0IHBy
b2JsZW0gZG9lcyB0aGlzIHNvbHZlPwouLi5iZXNpZGUgb2YgYSBuaWNlIGRpZmZzdGF0IHdoaWNo
IHJlbW92ZXMgbW9yZSB0aGFuIGl0IGFkZHMuIDotKQoKPiBCeSBhbHNvIHNhdmluZyBkaXJlY3Rs
eSBpbiBtdGRfaW5mbyB0aGUgb2Zmc2V0IG9mIHRoZSBwYXJ0aXRpb24sIHdlCj4gY2FuIGdldCBy
aWQgb2YgdGhlIG10ZF9wYXJ0IHN0cnVjdHVyZS4KPiAKPiBXaGlsZSBhdCBpdCwgYmUgY29uc2lz
dGVudCBpbiB0aGUgbmFtaW5nIG9mIHRoZSBtdGRfaW5mbyBzdHJ1Y3R1cmVzIHRvCj4gZWFzZSB0
aGUgdW5kZXJzdGFuZGluZyBvZiB0aGUgbmV3IGhpZXJhcmNoeTogdGhlc2Ugc3RydWN0dXJlcyBh
cmUKPiB1c3VhbGx5IGNhbGxlZCAnbXRkJywgdW5sZXNzIHRoZXJlIGFyZSBtdWx0aXBsZSBpbnN0
YW5jZXMgb2YgdGhlIHNhbWUKPiBzdHJ1Y3R1cmUuIEluIHRoaXMgY2FzZSwgdGhlcmUgaXMgdXN1
YWxseSBhIHBhcmVudC9jaGlsZCBib3VuZCBzbyB3ZQo+IHdpbGwgY2FsbCB0aGVtICdwYXJlbnQn
IGFuZCAnY2hpbGQnLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5y
YXluYWxAYm9vdGxpbi5jb20+CgpbLi4uXQoKPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgbXRkX2lu
Zm8gKm10ZF9nZXRfbWFzdGVyKHN0cnVjdCBtdGRfaW5mbyAqbXRkKQo+ICt7Cj4gKwl3aGlsZSAo
bXRkLT5wYXJlbnQpCj4gKwkJbXRkID0gbXRkLT5wYXJlbnQ7Cj4gKwo+ICsJcmV0dXJuIG10ZDsK
PiArfQoKU28sIHBhcmVudCA9PSBtYXN0ZXI/CgpXaGVuIEkgY3JlYXRlIGEgTVREIG9udG9wIG9m
IFVCSSB1c2luZyBnbHVlYmksIHdobyB3aWxsIGJlIHBhcmVudC9tYXN0ZXI/CgpUaGFua3MsCi8v
cmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
