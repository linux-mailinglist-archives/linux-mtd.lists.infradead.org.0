Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB5B136002
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 19:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pG8VXFjXsnTGoyhUlNUIcxb1Y+hK2n55ClkCYO4b+2A=; b=TtPeXeJ1YQqQkh
	i49dHXDQsoHHc5jI7po+Y62KGyOCEfujqIgUIwyE6mTpkHkU2aAjKLbFSIKQPO5SpaziaoWy7Qsrl
	bFPdNwOrwMf5jgYjhAfSaqrP40pukzSu9Kv6p6bOGy+M4WuHAL6q9f69zm5+P8BGkI0fTIZI41KFm
	3u7gi9rNF+aVLaux6O9gq5ikV9tXnGqAWS2Lnuym3eEQ+FQuzRWY2wxHalxPXphacaokSe9BlMc0I
	d6ntNUFVtjQJvcRhQnLnEuFE6AYEoTRVKpAweV4BOujPD7dSjUCaJ8LjYh3IoHMJmGL2kKuwGvfy3
	13PZdYBajQJtYuX5Rh+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcJ9-0004Bi-Ao; Thu, 09 Jan 2020 18:13:23 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcJ1-0004BA-6Q
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 18:13:17 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 73364E0002;
 Thu,  9 Jan 2020 18:13:05 +0000 (UTC)
Date: Thu, 9 Jan 2020 19:13:04 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v2] mtd: implement proper partition handling
Message-ID: <20200109191304.636c82e7@xps13>
In-Reply-To: <1651325521.16954.1578526458487.JavaMail.zimbra@nod.at>
References: <20191230111948.27005-1-miquel.raynal@bootlin.com>
 <1651325521.16954.1578526458487.JavaMail.zimbra@nod.at>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_101315_375505_0A78AD01 
X-CRM114-Status: GOOD (  16.57  )
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKClJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+IHdyb3RlIG9u
IFRodSwgOSBKYW4gMjAyMCAwMDozNDoxOAorMDEwMCAoQ0VUKToKCj4gLS0tLS0gVXJzcHLDvG5n
bGljaGUgTWFpbCAtLS0tLQo+ID4gVm9uOiAiTWlxdWVsIFJheW5hbCIgPG1pcXVlbC5yYXluYWxA
Ym9vdGxpbi5jb20+Cj4gPiBBbjogInJpY2hhcmQiIDxyaWNoYXJkQG5vZC5hdD4sICJWaWduZXNo
IFJhZ2hhdmVuZHJhIiA8dmlnbmVzaHJAdGkuY29tPiwgIlR1ZG9yIEFtYmFydXMiIDxUdWRvci5B
bWJhcnVzQG1pY3JvY2hpcC5jb20+LAo+ID4gImxpbnV4LW10ZCIgPGxpbnV4LW10ZEBsaXN0cy5p
bmZyYWRlYWQub3JnPgo+ID4gQ0M6ICJCb3JpcyBCcmV6aWxsb24iIDxib3Jpcy5icmV6aWxsb25A
Y29sbGFib3JhLmNvbT4sICJUaG9tYXMgUGV0YXp6b25pIiA8dGhvbWFzLnBldGF6em9uaUBib290
bGluLmNvbT4sICJNaXF1ZWwKPiA+IFJheW5hbCIgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+
Cj4gPiBHZXNlbmRldDogTW9udGFnLCAzMC4gRGV6ZW1iZXIgMjAxOSAxMjoxOTo0OAo+ID4gQmV0
cmVmZjogW1BBVENIIHYyXSBtdGQ6IGltcGxlbWVudCBwcm9wZXIgcGFydGl0aW9uIGhhbmRsaW5n
ICAKPiAKPiA+IEluc3RlYWQgb2YgY29sbGVjdGluZyBwYXJ0aXRpb25zIGluIGEgZmxhdCBsaXN0
LCBjcmVhdGUgYSBoaWVyYXJjaHkKPiA+IHdpdGhpbiB0aGUgbXRkX2luZm8gc3RydWN0dXJlOiB1
c2UgYSBwYXJ0aXRpb25zIGxpc3QgdG8ga2VlcCB0cmFjayBvZgo+ID4gdGhlIHBhcnRpdGlvbnMg
b2YgYW4gTVREIGRldmljZSAod2hpY2ggbWlnaHQgYmUgaXRzZWxmIGEgcGFydGl0aW9uIG9mCj4g
PiBhbm90aGVyIE1URCBkZXZpY2UpLCBhIHBvaW50ZXIgdG8gdGhlIHBhcmVudCBkZXZpY2UgKE5V
TEwgd2hlbiB0aGUgTVRECj4gPiBkZXZpY2UgaXMgdGhlIHJvb3Qgb25lLCBub3QgYSBwYXJ0aXRp
b24pLiAgCj4gCj4gV2hhdCBwcm9ibGVtIGRvZXMgdGhpcyBzb2x2ZT8KPiAuLi5iZXNpZGUgb2Yg
YSBuaWNlIGRpZmZzdGF0IHdoaWNoIHJlbW92ZXMgbW9yZSB0aGFuIGl0IGFkZHMuIDotKQoKSXQg
aXMgbXVjaCBlYXNpZXIgdG8gZXNjYWxhZGUgdG8gdGhlIHRvcCBtb3N0ICJtYXN0ZXIiIGRldmlj
ZSB3aGVuCnRoZXJlIGFyZSBtdWx0aXBsZSBsZXZlbHMgb2YgcGFydGl0aW9uaW5nLCB3aGljaCB3
YXMgbm90IGNsZWFubHkKZGVzY3JpYmVkIElNSE8uIEFsc28gaXQgaXMgYWxyZWFkeSB1c2VkIGlu
IHRoZSBNTEMtaW4tcHNldWRvLVNMQy1tb2RlCnNlcmllcyA6KQoKPiAKPiA+IEJ5IGFsc28gc2F2
aW5nIGRpcmVjdGx5IGluIG10ZF9pbmZvIHRoZSBvZmZzZXQgb2YgdGhlIHBhcnRpdGlvbiwgd2UK
PiA+IGNhbiBnZXQgcmlkIG9mIHRoZSBtdGRfcGFydCBzdHJ1Y3R1cmUuCj4gPiAKPiA+IFdoaWxl
IGF0IGl0LCBiZSBjb25zaXN0ZW50IGluIHRoZSBuYW1pbmcgb2YgdGhlIG10ZF9pbmZvIHN0cnVj
dHVyZXMgdG8KPiA+IGVhc2UgdGhlIHVuZGVyc3RhbmRpbmcgb2YgdGhlIG5ldyBoaWVyYXJjaHk6
IHRoZXNlIHN0cnVjdHVyZXMgYXJlCj4gPiB1c3VhbGx5IGNhbGxlZCAnbXRkJywgdW5sZXNzIHRo
ZXJlIGFyZSBtdWx0aXBsZSBpbnN0YW5jZXMgb2YgdGhlIHNhbWUKPiA+IHN0cnVjdHVyZS4gSW4g
dGhpcyBjYXNlLCB0aGVyZSBpcyB1c3VhbGx5IGEgcGFyZW50L2NoaWxkIGJvdW5kIHNvIHdlCj4g
PiB3aWxsIGNhbGwgdGhlbSAncGFyZW50JyBhbmQgJ2NoaWxkJy4KPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gIAo+IAo+IFsu
Li5dCj4gCj4gPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgbXRkX2luZm8gKm10ZF9nZXRfbWFzdGVy
KHN0cnVjdCBtdGRfaW5mbyAqbXRkKQo+ID4gK3sKPiA+ICsJd2hpbGUgKG10ZC0+cGFyZW50KQo+
ID4gKwkJbXRkID0gbXRkLT5wYXJlbnQ7Cj4gPiArCj4gPiArCXJldHVybiBtdGQ7Cj4gPiArfSAg
Cj4gCj4gU28sIHBhcmVudCA9PSBtYXN0ZXI/Cgp0b3AgbW9zdCBwYXJlbnQgKHRoZSBvbmUgd2l0
aG91dCBwYXJlbnQpID09IG1hc3RlciAhCgo+IAo+IFdoZW4gSSBjcmVhdGUgYSBNVEQgb250b3Ag
b2YgVUJJIHVzaW5nIGdsdWViaSwgd2hvIHdpbGwgYmUgcGFyZW50L21hc3Rlcj8KCkkgZG9uJ3Qg
cmVhbGx5IHVuZGVyc3RhbmQgdGhlIGlzc3VlIGhlcmU/CgpUaGFua3MsCk1pcXXDqGwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
