Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 580C6193DE4
	for <lists+linux-mtd@lfdr.de>; Thu, 26 Mar 2020 12:33:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+pWUzD6qNEmBhgAAU1NzthXWdmHflLLrJHFOtNkJNc=; b=pQggu52egWTu9Y
	BSzud/LLIq246DuAC/L+7YGDO8BhEzcVonco6mlhGGjCXHXFNx8ZYrgTORxsTdxwDnwxcr71H6iXD
	nLSYX6TGDeOnNpuAp1OjDaa9G8FeSmEM09C+lUHFe+HFEKQeYhKam/DC0cJOJhPbyR+1S849LWS5R
	kFleFqU197RHPikZ4SIuRd4JfSDoTtBEjsr9nSIh0m0S4fsuB+B4jl4OZo97tJ3clBpT3khc4ocvW
	uFJkWHbu0jy8SBLEvKhghEiCYsEwECyL8WJTAoFsIzpZ42LLJXh/jEP3WAsK3E76mewEYeIrcphG4
	KU3Q41qSVILhc7XNjUQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQlB-0001bg-NJ; Thu, 26 Mar 2020 11:33:17 +0000
Received: from mail.baikalelectronics.com ([87.245.175.226]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQkz-0001ay-2h
 for linux-mtd@lists.infradead.org; Thu, 26 Mar 2020 11:33:08 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id E557C8030776;
 Thu, 26 Mar 2020 11:33:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id udLKVSoALxKa; Thu, 26 Mar 2020 14:33:01 +0300 (MSK)
Date: Thu, 26 Mar 2020 14:32:54 +0300
From: Sergey Semin <Sergey.Semin@baikalelectronics.ru>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/2] mfd: Add Baikal-T1 Boot Controller driver
Message-ID: <20200326113254.nfgiw5uynpbx5xhy@ubsrv2.baikal.int>
References: <20200306130528.9973-1-Sergey.Semin@baikalelectronics.ru>
 <20200306130614.696EF8030704@mail.baikalelectronics.ru>
 <20200325100940.GI442973@dell>
 <20200325165511.tjdaf2l5kkuhbhrr@ubsrv2.baikal.int>
 <20200326091313.GA603801@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326091313.GA603801@dell>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_043305_494182_7260B7FB 
X-CRM114-Status: GOOD (  30.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vignesh Raghavendra <vigneshr@ti.com>, Paul Burton <paulburton@kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

TWljaGFlbCwgUmljaGFyZCwgVmlnbmVzaCBhbmQgTVREIG1haWxpbmcgbGlzdCBhcmUgQ2MnZWQg
dG8gaGF2ZSB0aGVpcgpjb21tZW50cyBvbiB0aGUgaXNzdWUuCgpNeSBhbnN3ZXJzIG9uIHRoZSBw
cmV2aW91cyBlbWFpbCBhcmUgYmVsb3cuCgpPbiBUaHUsIE1hciAyNiwgMjAyMCBhdCAwOToxMzox
M0FNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gT24gV2VkLCAyNSBNYXIgMjAyMCwgU2VyZ2V5
IFNlbWluIHdyb3RlOgo+IAo+ID4gSGVsbG8gTGVlLAo+ID4gCj4gPiBPbiBXZWQsIE1hciAyNSwg
MjAyMCBhdCAxMDowOTo0MEFNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+IE9uIEZyaSwg
MDYgTWFyIDIwMjAsIFNlcmdleS5TZW1pbkBiYWlrYWxlbGVjdHJvbmljcy5ydSB3cm90ZToKPiA+
ID4gCj4gPiA+ID4gRnJvbTogU2VyZ2UgU2VtaW4gPFNlcmdleS5TZW1pbkBiYWlrYWxlbGVjdHJv
bmljcy5ydT4KPiA+ID4gPiAKPiA+ID4gPiBCYWlrYWwtVDEgQm9vdCBDb250cm9sbGVyIGlzIGFu
IElQIGJsb2NrIGVtYmVkZGVkIGludG8gdGhlIFNvQyBhbmQKPiA+ID4gPiByZXNwb25zaWJsZSBm
b3IgdGhlIGNoaXAgcHJvcGVyIHByZS1pbml0aWFsaXphdGlvbiBhbmQgZnVydGhlcgo+ID4gPiA+
IGJvb3RpbmcgdXAgZnJvbSBzb21lIG1lbW9yeSBkZXZpY2UuIEZyb20gdGhlIExpbnV4IGtlcm5l
bCBwb2ludCBvZiB2aWV3Cj4gPiA+ID4gaXQncyBqdXN0IGEgbXVsdGktZnVuY3Rpb25hbCBkZXZp
Y2UsIHdoaWNoIGV4cG9ydHMgdGhyZWUgcGh5c2ljYWxseSBtYXBwZWQKPiA+ID4gPiBST01zIGFu
ZCBhIHNpbmdsZSBTUEkgY29udHJvbGxlci4KPiA+ID4gPiAKPiA+ID4gPiBQcmltYXJpbHkgdGhl
IFJPTXMgYXJlIGludGVuZGVkIHRvIGJlIHVzZWQgZm9yIHRyYW5zcGFyZW50IGFjY2VzcyBvZgo+
ID4gPiA+IHRoZSBtZW1vcnkgZGV2aWNlcyB3aXRoIHN5c3RlbSBib290dXAgY29kZS4gRmlyc3Qg
Uk9NIGRldmljZSBpcyBhbgo+ID4gPiA+IGVtYmVkZGVkIGludG8gdGhlIFNvQyBmaXJtd2FyZSwg
d2hpY2ggaXMgc3VwcG9zZWQgdG8gYmUgdXNlZCBqdXN0IGZvcgo+ID4gPiA+IHRoZSBjaGlwIGRl
YnVnIGFuZCB0ZXN0cy4gU2Vjb25kIFJPTSBkZXZpY2UgcHJvdmlkZXMgYSBNTUlPLWJhc2VkCj4g
PiA+ID4gYWNjZXNzIHRvIGFuIGV4dGVybmFsIFNQSSBmbGFzaC4gVGhpcmQgUk9NIG1pcnJvcnMg
ZWl0aGVyIHRoZSBJbnRlcm5hbAo+ID4gPiA+IG9yIFNQSSBST00gcmVnaW9uLCBkZXBlbmRpbmcg
b24gdGhlIHN0YXRlIG9mIHRoZSBleHRlcm5hbCBCT09UQ0ZHX3swLDF9Cj4gPiA+ID4gY2hpcCBw
aW5zIHNlbGVjdGluZyB0aGUgc3lzdGVtIGJvb3QgZGV2aWNlLgo+ID4gPiA+IAo+ID4gPiA+IEV4
dGVybmFsIFNQSSBmbGFzaCBjYW4gYmUgYWxzbyBhY2Nlc3NlZCBieSB0aGUgRFcgQVBCIFNTSSBT
UEkgY29udHJvbGxlcgo+ID4gPiA+IGVtYmVkZGVkIGludG8gdGhlIEJhaWthbC1UMSBCb290IENv
bnRyb2xsZXIuIEluIHRoaXMgY2FzZSB0aGUgbWVtb3J5IG1hcHBlZAo+ID4gPiA+IFNQSSBmbGFz
aCByZWdpb24gc2hvdWxkbid0IGJlIGFjY2Vzc2VkLgo+ID4gPiA+IAo+ID4gPiA+IFRha2luZyBp
bnRvIGFjY291bnQgYWxsIHRoZSBwZWN1bGlhcml0aWVzIGRlc2NyaWJlZCBhYm92ZSwgd2UgY3Jl
YXRlZAo+ID4gPiA+IGFuIE1GRC1iYXNlZCBkcml2ZXIgZm9yIHRoZSBCYWlrYWwtVDEgY29udHJv
bGxlci4gQXNpZGUgZnJvbSBvcmRpbmFyeQo+ID4gPiA+IE9GLWJhc2VkIHN1Yi1kZXZpY2UgcmVn
aXN0cmF0aW9uIGl0IGFsc28gcHJvdmlkZXMgYSBzaW1wbGUgQVBJIHRvCj4gPiA+ID4gc2VyaWFs
aXplIGFuIGFjY2VzcyB0byB0aGUgZXh0ZXJuYWwgU1BJIGZsYXNoIGZyb20gZWl0aGVyIHRoZSBN
TUlPLWJhc2VkCj4gPiA+ID4gU1BJIGludGVyZmFjZSBvciBlbWJlZGRlZCBTUEkgY29udHJvbGxl
ci4KPiA+ID4gCj4gPiA+IE5vdCBzdXJlIHdoeSB0aGlzIGlzIGJlaW5nIGNsYXNzaWZpZWQgYXMg
YW4gTUZELgo+ID4gPiAKPiA+ID4gVGhpcyBpcyBjbGVhcmx5ICdqdXN0JyBhIG1lbW9yeSBkZXZp
Y2UuCj4gPiA+IAo+ID4gCj4gPiBIbSwgSSBzZWUgdGhpcyBhcyBhIG5vcm1hbCBNRkQgZGV2aWNl
LiBUaGUgQm9vdCBjb250cm9sbGVyIHByb3ZpZGVzIGEKPiA+IHNldCBvZiBwaHlzaWNhbGx5IG1h
cHBlZCBST01zIGFuZCBhIERXIEFQQiBTU0ktYmFzZWQgZW1iZWRkZWQgU1BJCj4gPiBjb250cm9s
bGVyLiBZZXMsIHRoZSBTUEkgY29udHJvbGxlciBpcyBub3JtYWxseSB1dGlsaXplZCB0byBhY2Nl
c3MgYW4gZXh0ZXJuYWwKPiA+IGZsYXNoIGRldmljZSwgYW5kIGF0IGJvb3Qgc3RhZ2UgaXQgaXMg
dXNlZCBmb3IgaXQuIEJ1dCBzdGlsbCBpdCdzIGEgU1BJCj4gPiBjb250cm9sbGVyIHdoaWNoIGRy
aXZlciBiZWxvbmdzIHRvIHRoZSBrZXJuZWwgU1BJIHN1YnN5c3RlbS4gTW9yZW92ZXIKPiA+IG5v
dGhpbmcgcHJldmVudHMgYSBwbGF0Zm9ybSBkZXNpZ25lciBmcm9tIHVzaW5nIGl0IHRvZ2V0aGVy
IHdpdGggY3VzdG9tCj4gPiBHUElPLWJhc2VkIGNoaXAtc2VsZWN0cyB0byBoYXZlIGFkZGl0aW9u
YWwgZGV2aWNlcyBvbiB0aGUgU1BJIGJ1cy4KPiA+IAo+ID4gQXMgSSBzYWlkIHRoZSBwcm9ibGVt
IGlzIHRoYXQgYW4gU1BJIGZsYXNoIG1pZ2h0IGJlIGFjY2Vzc2VkIGVpdGhlciB3aXRoCj4gPiB1
c2Ugb2YgYSBwaHlzaWNhbGx5IG1hcHBlZCBST00gb3IgdmlhIHRoZSBub3JtYWwgRFcgQVBCIFNQ
SSBjb250cm9sbGVyLgo+ID4gVGhlc2UgdHdvIGludGVyZmFjZXMgY2FuJ3QgYmUgdXNlZCBzaW11
bHRhbmVvdXNseSwgYmVjYXVzZSB0aGUgUk9NIGlzCj4gPiBqdXN0IGFuIHJ0bCBzdGF0ZS1tYWNo
aW5lLCB3aGljaCBpcyBidWlsdCB0byB0cmFuc2xhdGUgTU1JTyBvcGVyYXRpb25zCj4gPiB0aHJv
dWdoIHRoZSBTUEkgY29udHJvbGxlciByZWdpc3RlcnMgdG8gYW4gZXh0ZXJuYWwgU1BJLW5vciBh
dCBDUzAgb2YKPiA+IHRoZSBpbnRlcmZhY2UuIFRoYXQncyB3aHkgZmlyc3QgSSBuZWVkIHRvIG1h
a2Ugc3VyZSB0aGUgaW50ZXJmYWNlIGlzIGxvY2tlZCwKPiA+IHRoZW4gYmVpbmcgZW5hYmxlZCwg
dGhlbiB0aGUgY29ycmVzcG9uZGluZyBkcml2ZXIgY2FuIHVzZSBpdCwgdGhlbiBnZXQKPiA+IHRv
IHVubG9jay4gVGhhdCdzIHRoZSBwb2ludCBvZiBoYXZpbmcgdGhlIF9fYnQxX2JjX3NwaV9sb2Nr
KCkgYW5kCj4gPiBidDFfYmNfc3BpX3VubG9jaygpIG1ldGhvZHMgZXhwb3J0ZWQgZnJvbSB0aGUg
ZHJpdmVyLgo+ID4gCj4gPiBJJ3ZlIGdvdCB0d28gZHJpdmVycyBmb3IgTVREIFJPTSBhbmQgU1BJ
IGNvbnRyb2xsZXIgYmFzZWQgb24gdGhhdAo+ID4gbWV0aG9kcy4gQnV0IEkgaGF2ZW4ndCBzdWJt
aXR0ZWQgdGhlbSB5ZXQsIGJlY2F1c2UgdGhleSBiZWxvbmcgdG8gdHdvCj4gPiBkaWZmZXJlbnQg
c3Vic3lzdGVtcyBhbmQgSSBuZWVkIHRvIGhhdmUgdGhpcyBvbmUgYmVpbmcgYWNjZXB0ZWQgZmly
c3QuCj4gCj4gVGhpcyBpcyBub3QgYSB0b3RhbGx5IHVuaXF1ZSBkZXZpY2Uvc2l0dWF0aW9uLiAg
SSd2ZSBzZWVuIChhbmQgTkFDS2VkKQo+IHRoaXMgdHlwZSBvZiBkZXZpY2UgYmVmb3JlLiAgWW91
IG5lZWQgdG8gZXhwbGFpbiB0aGlzIHRvIHRoZSBNVEQKPiAoU1BJLU5PUj8pIG1haW50YWluZXJz
LiAgVGhleSBzaG91bGQgYmUgaW4gYSBnb29kIHBvc2l0aW9uIHRvIHByb3ZpZGUKPiBndWlkYW5j
ZS4KPiAKClNvcnJ5LCBJIGRvbid0IHJlYWxseSB1bmRlcnN0YW5kIHlvdXIganVzdGlmaWNhdGlv
bi4gVGhlIGJvb3QgY29udHJvbGxlcgpleHBvcnRzIHR3byB0eXBlcyBvZiBkZXZpY2VzOiBwaHlz
aWNhbGx5IG1hcHBlZCBST01zIGFuZCBhbiBEVyBBUEIKU1NJLWJhc2VkIFNQSSBjb250cm9sbGVy
LiBBc2lkZSBmcm9tIGJlaW5nIGFibGUgdG8gYWNjZXNzIGFuIGV4dGVybmFsbHkKYXR0YWNoZWQg
U1BJIGZsYXNoIHRoZSBTUEkgY29udHJvbGxlciBoYXMgbm9ybWFsIFNQSSBpbnRlcmZhY2Ugd2hp
Y2ggaW4KZ2VuZXJhbCBjYW4gYmUgdXNlZCB0byBhY2Nlc3MgYW55IG90aGVyIFNQSS1zbGF2ZS4g
VGhlIGNvbXBsZXhpdHkgb2YKdGhlIGNhc2UgaXMgdGhhdCBvbmUgb2YgcGh5c2ljYWxseSBtYXBw
ZWQgUk9NIFJUTCB1c2VzIHRoZSBEVyBBUEIgU1NJCmNvbnRyb2xsZXIgdG8gYWNjZXNzIGFuIGV4
dGVybmFsIFNQSSBmbGFzaCwgd2hpY2ggd2hlbiBkb25lIG1ha2VzIHRoZQpEVyBBUEIgU1NJIHJl
Z2lzdGVycyB1bnVzYWJsZSBvbiBkaXJlY3Qgd2F5LiBUaGF0J3Mgd2h5IEkgaW1wbGVtZW50ZWQg
dGhlCmJvb3QgY29udHJvbGxlciBhcyBhbiBNRkQuIEFuIGFsdGVybmF0aW9uIGNhdXNlZCBieSB0
aGlzIHBlY3VsaWFyaXR5CndpbGwgYmUgc3VibWl0dGVkIHRvIGRyaXZlcnMvbXRkL21hcHMvcGh5
c21hcC17Y29yZS5jLGJhaWthbC10MS1yb20uY30KbGF0ZXIgYWZ0ZXIgdGhpcyBjaGFuZ2UgaXMg
cmV2aWV3ZWQgYW5kIGFjY2VwdGVkLiBTaW1pbGFyIHNpdHVhdGlvbgpjb25jZXJucyBhIGRyaXZl
ciBvZiBEVyBBUEIgU1NJLWJhc2VkIFNQSSBjb250cm9sbGVyLiBTbyBhY2NvcmRpbmcgdG8KdGhl
IGN1cnJlbnQgZGVzaWduIHRoZSBib290IGNvbnRyb2xsZXIgd2l0aCBpdCcgc3ViLWRldmljZXMg
d2lsbCBiZQpkZWNsYXJlZCBpbiBkdHMgYXMgZm9sbG93czoKCmJvb3Q6IGJvb3RAMWYwNDAwMDAg
ewoJY29tcGF0aWJsZSA9ICJiZSxidDEtYm9vdC1jdGwiOwoJcmVnID0gPDB4MWYwNDAwMDAgMHgx
MDA+OwoJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cgkjc2l6ZS1jZWxscyA9IDwxPjsKCXJhbmdlczsK
CgljbG9ja3MgPSA8JmNjdV9zeXMgQ0NVX1NZU19BUEJfQ0xLPjsKCWNsb2NrLW5hbWVzID0gInBj
bGsiOwoKCWludF9yb206IHJvbUAxYmZjMDAwMCB7CgkJY29tcGF0aWJsZSA9ICJiZSxidDEtaW50
LXJvbSIsICJtdGQtcm9tIjsKCQlyZWcgPSA8MHgxYmZjMDAwMCAweDEwMDAwPjsKCQkuLi4KCX07
CgoJc3BpX3JvbTogcm9tQDFjMDAwMDAwIHsKCQljb21wYXRpYmxlID0gImJlLGJ0MS1zc2ktcm9t
IiwgIm10ZC1yb20iOwoJCXJlZyA9IDwweDFjMDAwMDAwIDB4MTAwMDAwMD47CgkJLi4uCgl9OwoK
CXNwaTA6IHNwaUAxZjA0MDEwMCB7CgkJY29tcGF0aWJsZSA9ICJiZSxidDEtYm9vdC1zc2kiOwoJ
CXJlZyA9IDwweDFmMDQwMTAwIDB4ZjAwPjsKCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKCQkjc2l6
ZS1jZWxscyA9IDwwPjsKCgkJY2xvY2tzID0gPCZjY3Vfc3lzIENDVV9TWVNfU1BJX0NMSz47CgkJ
Y2xvY2stbmFtZXMgPSAicmVmIjsKCgkJLi4uCgl9OwoKCWJvb3Rfcm9tOiByb21AMWZjMDAwMDAg
ewoJCWNvbXBhdGlibGUgPSAiYmUsYnQxLWJvb3Qtcm9tIiwgIm10ZC1yb20iOwoJCXJlZyA9IDww
eDFmYzAwMDAwIDB4NDAwMDAwPjsKCQkuLi4KCX07Cn07CgpJIGRhcmUgdG8gYXNzdW1lLCB0aGF0
IGJ5IHNheWluZzogIkRlc3BpdGUgaW5jbHVkaW5nIHRoZSBNRkQgQVBJLCBJIGRvbid0CnNlZSBp
dCBiZWluZyB1c2VkIGF0IGFsbC4iIHlvdSBtZWFudCB0aGF0IHNpbmNlIHRoZSBkcml2ZXIgZG9l
c24ndApyZWRpc3RyaWJ1dGUgYW55IHJlc291cmNlIGJ5IGRlY2xhcmluZyBtZmRfY2VsbCdlcywg
ZG9lc24ndApyZWdpc3RlciBtZmQtYmFzZWQgc3ViLWRldmljZXMsIGFuZCBwcmltYXJ5IHVzZS1j
YXNlIG9mIHRoZSBib290CmNvbnRyb2xsZXIgaXMgdG8gYWNjZXNzIGZsYXNoLWRldmljZXMsIGl0
IHNob3VsZCBiZSBqdXN0IG1vdmVkIHRvIHRoZSBNVEQKc3Vic3lzdGVtLiBJIGRvbid0IHRoaW5r
IGl0IHdvdWxkIGJlIGJldHRlciB0aGFuIHRvIGhhdmUgYSBjb21tb24gcGFydCAKZGVmaW5lZCBo
ZXJlIGluIE1GRCB3aGlsZSBST00tc3BlY2lmaWMgcGFydCAtIGluIE1URCwgYW5kIFNQSS1zcGVj
aWZpYyAtIGluCnRoZSBTUEkgc3Vic3lzdGVtcy4gSSB3b3VsZCBjb25zaWRlciBCYWlrYWwtVDEg
Qm9vdCBDb250cm9sbGVyIGJlaW5nIHNpbWlsYXIKdG8gZHJpdmVycy9tZmQvcWNvbS1zcG1pLXBt
aWMuYywgZHJpdmVycy9tZmQvYXRtZWwtZmxleGNvbS5jLCBldGMsIGJ1dAppbnN0ZWFkIG9mIGhh
dmluZyBHUElPLCBSVEMsIFVBUlQsIGkyYywgZXRjIHN1Yi1kZXZpY2VzICh3aGljaCBhcmUgYWxz
bwpmdWxseSBkZWZpZWQgaW4gZHRzKSwgaXQgZXhwb3J0cyBNTUlPLWJhc2VkIFJPTXMgYW5kIFNQ
SS1jb250cm9sbGVyLgoKTGVlLCBleHBsYWluIG1lIHBsZWFzZSB3aGF0IGlzIHRoZSBkaWZmZXJl
bmNlIGJldHdlZW4gdGhlc2UgTUZEcyBhbmQKQmFpa2FsLVQxIEJvb3QgQ29udHJvbGxlciwgdGhh
dCBtYWtlcyBvbmUgc2ltcGxlIE1GRHMgc3VpdGFibGUgZm9yIHRoZQpNRkQgc3Vic3lzdGVtLCB3
aGlsZSBhbm90aGVyIGlzbid0PwoKTWlxdWVsLCBSaWNoYXJkLCBWaWduZXNoIGFuZCBldmVyeW9u
ZSBmcm9tIE1URCwgd2hvIGNhbiBoZWxwIGNvdWxkIHlvdQpqb2luIHRoaXMgZGlzY3Vzc2lvbiBh
bmQgY2xhcmlmeSB3aGV0aGVyIHRoZSBCYWlrYWwtVDEgQm9vdCBDb250cm9sbGVyCmRyaXZlciBp
cyBzdXBwb3NlZCB0byBiZSBtb3ZlZCB0byB0aGUgTVREIHN1YnN5c3RlbT8gSWYgc28sIHRoZW4g
d2hhdCBpcwp0aGUgYmV0dGVyIHBsYWNlIHRvIHB1dCBpdCB3aXRoaW4gdGhlIGRyaXZlcnMvbXRk
LyBkaXJlY3RvcnkgdHJlZT8KClJlZ2FyZHMsCi1TZXJnZXkKCj4gPiBSZWNlbnRseSBJJ3ZlIHNl
bnQgYW4gUkZDIHJlZ2FyZGluZyBhIGRpZmZlcmVudCBxdWVzdGlvbiwgYnV0IGl0Cj4gPiBjb25j
ZXJucyB0aGUgQmFpa2FsLVQxIHN5c3RlbSBjb250cm9sbGVyIGFuZCB0aGUgYm9vdCBjb250cm9s
bGVyIGFzIGJlaW5nIHBhcnQKPiA+IG9mIGl0Ogo+ID4gCj4gPiBodHRwczovL2xrbWwub3JnL2xr
bWwvMjAyMC8zLzIyLzM5Mwo+IAo+IC0tIAo+IExlZSBKb25lcyBb5p2O55C85pavXQo+IExpbmFy
byBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZAo+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNv
ZnR3YXJlIGZvciBBUk0gU29Dcwo+IEZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8
IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
