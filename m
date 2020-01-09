Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEC0136004
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 19:16:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWu/DQjxMBwatK4vxL9Lx8+D3NzGY23j8wc8h4uLgxg=; b=GprqSKWx+EwnKY
	H374Aa61sAxNOoRv1y7OSlRv/z3rQi8m9QFH3/7TPtZda0yMuCEr1biCJ7V7PUjXhcXEWdfZTNClB
	92BstRp3qOJvg2CalWhE0xc5s5SbcQH3+5Lv8iRFgOnagbwEtu8UMn/xo742Cg8QkJYO2lFEE2vw4
	IC00ZlyvA+zf1mqwAKShFZTOXsHkmsfazg6ZdJThcgYRoVIwRR1Cm9QxoUbEkXEhPHJXWtePBYrjB
	7VS9Sr8oc3cut5gudWQW33BL++SUnubj8kRiGmp95/7nNi4eEZOE66jiXST68tV7eGjYMofctOcYI
	VjKX5MX6QEyuauQl0FVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcM5-00063b-OE; Thu, 09 Jan 2020 18:16:25 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcLw-000635-89
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 18:16:18 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id A846DE0009;
 Thu,  9 Jan 2020 18:16:13 +0000 (UTC)
Date: Thu, 9 Jan 2020 19:16:12 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH 4/8] mtd: Add support for emulated SLC mode on MLC NANDs
Message-ID: <20200109191612.77d987d3@xps13>
In-Reply-To: <1518112485.16967.1578527342428.JavaMail.zimbra@nod.at>
References: <20191230165129.11925-1-miquel.raynal@bootlin.com>
 <20191230165129.11925-5-miquel.raynal@bootlin.com>
 <1518112485.16967.1578527342428.JavaMail.zimbra@nod.at>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_101616_565973_8E24C985 
X-CRM114-Status: GOOD (  24.47  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Boris Brezillon <boris.brezillon@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKClJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+IHdyb3RlIG9u
IFRodSwgOSBKYW4gMjAyMCAwMDo0OTowMgorMDEwMCAoQ0VUKToKCj4gLS0tLS0gVXJzcHLDvG5n
bGljaGUgTWFpbCAtLS0tLQo+ID4gVm9uOiAiTWlxdWVsIFJheW5hbCIgPG1pcXVlbC5yYXluYWxA
Ym9vdGxpbi5jb20+Cj4gPiBBbjogInJpY2hhcmQiIDxyaWNoYXJkQG5vZC5hdD4sICJWaWduZXNo
IFJhZ2hhdmVuZHJhIiA8dmlnbmVzaHJAdGkuY29tPiwgIlR1ZG9yIEFtYmFydXMiIDxUdWRvci5B
bWJhcnVzQG1pY3JvY2hpcC5jb20+LAo+ID4gImxpbnV4LW10ZCIgPGxpbnV4LW10ZEBsaXN0cy5p
bmZyYWRlYWQub3JnPgo+ID4gQ0M6ICJCb3JpcyBCcmV6aWxsb24iIDxib3Jpcy5icmV6aWxsb25A
Y29sbGFib3JhLmNvbT4sICJUaG9tYXMgUGV0YXp6b25pIiA8dGhvbWFzLnBldGF6em9uaUBib290
bGluLmNvbT4sICJCb3Jpcwo+ID4gQnJlemlsbG9uIiA8Ym9yaXMuYnJlemlsbG9uQGJvb3RsaW4u
Y29tPiwgIk1pcXVlbCBSYXluYWwiIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+ID4gR2Vz
ZW5kZXQ6IE1vbnRhZywgMzAuIERlemVtYmVyIDIwMTkgMTc6NTE6MjUKPiA+IEJldHJlZmY6IFtQ
QVRDSCA0LzhdIG10ZDogQWRkIHN1cHBvcnQgZm9yIGVtdWxhdGVkIFNMQyBtb2RlIG9uIE1MQyBO
QU5EcyAgCj4gCj4gPiBGcm9tOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBib290
bGluLmNvbT4KPiA+IAo+ID4gTUxDIE5BTkRzIGNhbiBiZSBtYWRlIGEgYml0IG1vcmUgcmVsaWFi
bGUgaWYgd2Ugb25seSBwcm9ncmFtIHRoZSBsb3dlcgo+ID4gcGFnZSBvZiBlYWNoIHBhaXIuIEF0
IGxlYXN0LCB0aGlzIHNvbHZlcyB0aGUgcGFpcmVkLXBhZ2VzIGNvcnJ1cHRpb24KPiA+IGlzc3Vl
Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxv
bkBib290bGluLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5y
YXluYWxAYm9vdGxpbi5jb20+Cj4gPiAtLS0KPiA+IGRyaXZlcnMvbXRkL210ZGNvcmUuYyAgICAg
ICAgICB8IDE4OSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0KPiA+IGRyaXZlcnMv
bXRkL210ZHBhcnQuYyAgICAgICAgICB8ICA1NCArKysrKystLS0tCj4gPiBpbmNsdWRlL2xpbnV4
L210ZC9tdGQuaCAgICAgICAgfCAgIDcgKy0KPiA+IGluY2x1ZGUvbGludXgvbXRkL3BhcnRpdGlv
bnMuaCB8ICAgMiArCj4gPiBpbmNsdWRlL3VhcGkvbXRkL210ZC1hYmkuaCAgICAgfCAgIDEgKwo+
ID4gNSBmaWxlcyBjaGFuZ2VkLCAyMTMgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pCj4g
PiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9tdGRjb3JlLmMgYi9kcml2ZXJzL210ZC9t
dGRjb3JlLmMKPiA+IGluZGV4IDI5MTY2NzQyMDhiMy4uZGUwYTY5MmVjYjI5IDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9tdGQvbXRkY29yZS5jCj4gPiArKysgYi9kcml2ZXJzL210ZC9tdGRjb3Jl
LmMKPiA+IEBAIC02MTcsNiArNjE3LDE5IEBAIGludCBhZGRfbXRkX2RldmljZShzdHJ1Y3QgbXRk
X2luZm8gKm10ZCkKPiA+IAkJICAgICEobXRkLT5mbGFncyAmIE1URF9OT19FUkFTRSkpKQo+ID4g
CQlyZXR1cm4gLUVJTlZBTDsKPiA+IAo+ID4gKwkvKgo+ID4gKwkgKiBNVERfTUxDX0lOX1NMQ19N
T0RFIGNhbiBvbmx5IGJlIHNldCBvbiBwYXJ0aXRpb25zLCB3aGVuIHRoZSBtYXN0ZXIgIAo+IAo+
IEkgc3VnZ2VzdCBnaXZpbmcgYSBuYW1lIHdoaWNoIGluZGljYXRlcyB0aGF0IHdlIGFyZSBhY3R1
YWxseSBlbXVsYXRpbmcKPiBhbiBTTEMuIE1heWJlIE1URF9TTENfRU1VTEFUSU9OPwo+IFNvbWUg
TUxDIE5BTkRzIHN1cHBvcnQgU0xDIG1vZGUgaW4gaGFyZHdhcmUsIE1URF9NTENfSU5fU0xDX01P
REUgcmVhZHMgbGlrZQo+IHRoaXMgZmVhdHVyZS4KCllvdSdyZSByaWdodC4gV2hhdCBhYm91dCBN
VERfU0xDX09OX01MQ19FTVVMQVRJT04/CgpJIGxpa2UgdG8gc2VlIHRoYXQgd2UgYXJlIG1hbmlw
dWxhdGluZyBNTEMgTkFORHMuCgo+IAo+ID4gKwkgKiBpcyBhbiBNTEMgTkFORCBhbmQgaGFzIGEg
cHJvcGVyIHBhaXJpbmcgc2NoZW1lIGRlZmluZWQuCj4gPiArCSAqIFdlIGFsc28gcmVqZWN0IG1h
c3RlcnMgdGhhdCBpbXBsZW1lbnQgLT5fd3JpdGV2KCkgZm9yIG5vdywgYmVjYXVzZQo+ID4gKwkg
KiBOQU5EIGNvbnRyb2xsZXIgZHJpdmVycyBkb24ndCBpbXBsZW1lbnQgdGhpcyBob29rLCBhbmQg
YWRkaW5nIHRoZQo+ID4gKwkgKiBTTEMgLT4gTUxDIGFkZHJlc3MvbGVuZ3RoIGNvbnZlcnNpb24g
dG8gdGhpcyBwYXRoIGlzIHVzZWxlc3MgaWYgd2UKPiA+ICsJICogZG9uJ3QgaGF2ZSBhIHVzZXIu
Cj4gPiArCSAqLwo+ID4gKwlpZiAobXRkLT5mbGFncyAmIE1URF9NTENfSU5fU0xDX01PREUgJiYK
PiA+ICsJICAgICghbXRkX2lzX3BhcnRpdGlvbihtdGQpIHx8IG1hc3Rlci0+dHlwZSAhPSBNVERf
TUxDTkFOREZMQVNIIHx8Cj4gPiArCSAgICAgIW1hc3Rlci0+cGFpcmluZyB8fCBtYXN0ZXItPl93
cml0ZXYpKQo+ID4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gPiArCj4gPiAJbXV0ZXhfbG9jaygmbXRk
X3RhYmxlX211dGV4KTsKPiA+IAo+ID4gCWkgPSBpZHJfYWxsb2MoJm10ZF9pZHIsIG10ZCwgMCwg
MCwgR0ZQX0tFUk5FTCk7Cj4gPiBAQCAtNjMyLDYgKzY0NSwxNCBAQCBpbnQgYWRkX210ZF9kZXZp
Y2Uoc3RydWN0IG10ZF9pbmZvICptdGQpCj4gPiAJaWYgKG10ZC0+Yml0ZmxpcF90aHJlc2hvbGQg
PT0gMCkKPiA+IAkJbXRkLT5iaXRmbGlwX3RocmVzaG9sZCA9IG10ZC0+ZWNjX3N0cmVuZ3RoOwo+
ID4gCj4gPiArCWlmIChtdGQtPmZsYWdzICYgTVREX01MQ19JTl9TTENfTU9ERSkgewo+ID4gKwkJ
aW50IG5ncm91cHMgPSBtdGRfcGFpcmluZ19ncm91cHMobWFzdGVyKTsKPiA+ICsKPiA+ICsJCW10
ZC0+ZXJhc2VzaXplIC89IG5ncm91cHM7Cj4gPiArCQltdGQtPnNpemUgPSAodTY0KW10ZF9kaXZf
YnlfZWIobXRkLT5zaXplLCBtYXN0ZXIpICoKPiA+ICsJCQkgICAgbXRkLT5lcmFzZXNpemU7ICAK
PiAKPiBDYW4gd2UgcGxlYXNlIGhhdmUgYSBoZWxwZXIgZm9yIHRoaXM/IFlvdSB1c2UgdGhpcyBm
b3JtdWxhIG1hbnkgdGltZXMuCgpBYnNvbHV0ZWx5IQoKPiAKPiA+ICsJfQo+ID4gKwo+ID4gCWlm
IChpc19wb3dlcl9vZl8yKG10ZC0+ZXJhc2VzaXplKSkKPiA+IAkJbXRkLT5lcmFzZXNpemVfc2hp
ZnQgPSBmZnMobXRkLT5lcmFzZXNpemUpIC0gMTsKPiA+IAllbHNlCj4gPiBAQCAtMTA3NCw5ICsx
MDk1LDExIEBAIGludCBtdGRfZXJhc2Uoc3RydWN0IG10ZF9pbmZvICptdGQsIHN0cnVjdCBlcmFz
ZV9pbmZvCj4gPiAqaW5zdHIpCj4gPiB7Cj4gPiAJc3RydWN0IG10ZF9pbmZvICptYXN0ZXIgPSBt
dGRfZ2V0X21hc3RlcihtdGQpOwo+ID4gCXU2NCBtc3Rfb2ZzID0gbXRkX2dldF9tYXN0ZXJfb2Zz
KG10ZCwgMCk7Cj4gPiArCXN0cnVjdCBlcmFzZV9pbmZvIGFkamluc3RyOwo+ID4gCWludCByZXQ7
Cj4gPiAKPiA+IAlpbnN0ci0+ZmFpbF9hZGRyID0gTVREX0ZBSUxfQUREUl9VTktOT1dOOwo+ID4g
KwlhZGppbnN0ciA9ICppbnN0cjsKPiA+IAo+ID4gCWlmICghbXRkLT5lcmFzZXNpemUgfHwgIW1h
c3Rlci0+X2VyYXNlKQo+ID4gCQlyZXR1cm4gLUVOT1RTVVBQOwo+ID4gQEAgLTEwOTEsMTIgKzEx
MTQsMjcgQEAgaW50IG10ZF9lcmFzZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgc3RydWN0IGVyYXNl
X2luZm8KPiA+ICppbnN0cikKPiA+IAo+ID4gCWxlZHRyaWdfbXRkX2FjdGl2aXR5KCk7Cj4gPiAK
PiA+IC0JaW5zdHItPmFkZHIgKz0gbXN0X29mczsKPiA+IC0JcmV0ID0gbWFzdGVyLT5fZXJhc2Uo
bWFzdGVyLCBpbnN0cik7Cj4gPiAtCWlmIChpbnN0ci0+ZmFpbF9hZGRyICE9IE1URF9GQUlMX0FE
RFJfVU5LTk9XTikKPiA+IC0JCWluc3RyLT5mYWlsX2FkZHIgLT0gbXN0X29mczsKPiA+ICsJaWYg
KG10ZC0+ZmxhZ3MgJiBNVERfTUxDX0lOX1NMQ19NT0RFKSB7Cj4gPiArCQlhZGppbnN0ci5hZGRy
ID0gKGxvZmZfdCltdGRfZGl2X2J5X2ViKGluc3RyLT5hZGRyLCBtdGQpICoKPiA+ICsJCQkJbWFz
dGVyLT5lcmFzZXNpemU7Cj4gPiArCQlhZGppbnN0ci5sZW4gPSAoKHU2NCltdGRfZGl2X2J5X2Vi
KGluc3RyLT5hZGRyICsgaW5zdHItPmxlbiwgbXRkKSAqCj4gPiArCQkJCW1hc3Rlci0+ZXJhc2Vz
aXplKSAtCj4gPiArCQkJICAgICAgIGFkamluc3RyLmFkZHI7Cj4gPiArCX0KPiA+ICsKPiA+ICsJ
YWRqaW5zdHIuYWRkciArPSBtc3Rfb2ZzOwo+ID4gKwo+ID4gKwlyZXQgPSBtYXN0ZXItPl9lcmFz
ZShtYXN0ZXIsICZhZGppbnN0cik7Cj4gPiArCj4gPiArCWlmIChhZGppbnN0ci5mYWlsX2FkZHIg
IT0gTVREX0ZBSUxfQUREUl9VTktOT1dOKSB7Cj4gPiArCQlpbnN0ci0+ZmFpbF9hZGRyID0gYWRq
aW5zdHIuZmFpbF9hZGRyIC0gbXN0X29mczsKPiA+ICsJCWlmIChtdGQtPmZsYWdzICYgTVREX01M
Q19JTl9TTENfTU9ERSkgewo+ID4gKwkJCWluc3RyLT5mYWlsX2FkZHIgPSBtdGRfZGl2X2J5X2Vi
KGluc3RyLT5mYWlsX2FkZHIsCj4gPiArCQkJCQkJCSBtYXN0ZXIpOwo+ID4gKwkJCWluc3RyLT5m
YWlsX2FkZHIgKj0gbXRkLT5lcmFzZXNpemU7Cj4gPiArCQl9Cj4gPiArCX0KPiA+IAo+ID4gLQlp
bnN0ci0+YWRkciAtPSBtc3Rfb2ZzOwo+ID4gCXJldHVybiByZXQ7Cj4gPiB9Cj4gPiBFWFBPUlRf
U1lNQk9MX0dQTChtdGRfZXJhc2UpOwo+ID4gQEAgLTEyNzYsNiArMTMxNCwxMDEgQEAgc3RhdGlj
IGludCBtdGRfY2hlY2tfb29iX29wcyhzdHJ1Y3QgbXRkX2luZm8gKm10ZCwKPiA+IGxvZmZfdCBv
ZmZzLAo+ID4gCXJldHVybiAwOwo+ID4gfQo+ID4gCj4gPiArc3RhdGljIGludCBtdGRfcmVhZF9v
b2Jfc3RkKHN0cnVjdCBtdGRfaW5mbyAqbXRkLCBsb2ZmX3QgZnJvbSwKPiA+ICsJCQkgICAgc3Ry
dWN0IG10ZF9vb2Jfb3BzICpvcHMpCj4gPiArewo+ID4gKwlzdHJ1Y3QgbXRkX2luZm8gKm1hc3Rl
ciA9IG10ZF9nZXRfbWFzdGVyKG10ZCk7Cj4gPiArCWludCByZXQ7Cj4gPiArCj4gPiArCWZyb20g
PSBtdGRfZ2V0X21hc3Rlcl9vZnMobXRkLCBmcm9tKTsKPiA+ICsJaWYgKG1hc3Rlci0+X3JlYWRf
b29iKQo+ID4gKwkJcmV0ID0gbWFzdGVyLT5fcmVhZF9vb2IobWFzdGVyLCBmcm9tLCBvcHMpOwo+
ID4gKwllbHNlCj4gPiArCQlyZXQgPSBtYXN0ZXItPl9yZWFkKG1hc3RlciwgZnJvbSwgb3BzLT5s
ZW4sICZvcHMtPnJldGxlbiwKPiA+ICsJCQkJICAgIG9wcy0+ZGF0YnVmKTsKPiA+ICsKPiA+ICsJ
cmV0dXJuIHJldDsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGludCBtdGRfd3JpdGVfb29iX3N0
ZChzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgbG9mZl90IHRvLAo+ID4gKwkJCSAgICAgc3RydWN0IG10
ZF9vb2Jfb3BzICpvcHMpCj4gPiArewo+ID4gKwlzdHJ1Y3QgbXRkX2luZm8gKm1hc3RlciA9IG10
ZF9nZXRfbWFzdGVyKG10ZCk7Cj4gPiArCWludCByZXQ7Cj4gPiArCj4gPiArCXRvID0gbXRkX2dl
dF9tYXN0ZXJfb2ZzKG10ZCwgdG8pOwo+ID4gKwlpZiAobWFzdGVyLT5fd3JpdGVfb29iKQo+ID4g
KwkJcmV0ID0gbWFzdGVyLT5fd3JpdGVfb29iKG1hc3RlciwgdG8sIG9wcyk7Cj4gPiArCWVsc2UK
PiA+ICsJCXJldCA9IG1hc3Rlci0+X3dyaXRlKG1hc3RlciwgdG8sIG9wcy0+bGVuLCAmb3BzLT5y
ZXRsZW4sCj4gPiArCQkJCSAgICAgb3BzLT5kYXRidWYpOwo+ID4gKwo+ID4gKwlyZXR1cm4gcmV0
Owo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IG10ZF9vb2JfaW9fc2xjKHN0cnVjdCBtdGRf
aW5mbyAqbXRkLCBsb2ZmX3Qgc3RhcnQsIGJvb2wgcmVhZCwKPiA+ICsJCQkgIHN0cnVjdCBtdGRf
b29iX29wcyAqb3BzKSAgCj4gCj4gVGhlIG5hbWUgaXMgbWlzbGVhZGluZy4gV2UgZG9uJ3QgZG8g
T09CIElPIG9uIGEgU0xDIE5BTkQsCj4gd2UgZW11bGF0ZSBTTEMuCgpXaGF0IHdvdWxkIHlvdSBy
ZWNvbW1lbmQ/IG10ZF9vb2JfaW9fZW11bF9zbGM/Cgo+IAo+IFRoYW5rcywKPiAvL3JpY2hhcmQK
ClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
