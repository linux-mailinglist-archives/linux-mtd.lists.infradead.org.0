Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C809F1BB066
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 23:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bj6p/h7mfQ5SGQwp8IOZbaaKuQoIL5+Hxl0o0EGcXV4=; b=fn7OKmWMxmGLIF
	kX2E/KxyZVWxM5buiDnZuImGE06Q+FFgnJiNPtF0TVKeLBapKtPbgXM/+F0njt5uoV4b2N4xUCqjK
	TGk/O7Ri/HbC/S1ndCgUMs+wvNdPpva6FKVQi/sTDUo7dU/UUJAjkZ0APCUvo4zwH664b+bGo97X3
	sJ0k5y4RcvGYdoiiCOXdLqHsqA+0d5vOB6NSdlb2q7HdBcF5QEOnhfRSAfV8m/Zc6+wHHzM+3v4pF
	v/3GUK0FqzKLhb2UPiHVJhVkuwh/KpWc6qwGgiwKagtkkgkoIa5TAIfDy0uAQfXgpAgdx6O7blIm6
	3zJuT1tCKGxbrbJaj54w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTBBE-000168-LD; Mon, 27 Apr 2020 21:20:44 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTBB6-00015a-QT
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 21:20:38 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7BB2B200009;
 Mon, 27 Apr 2020 21:20:31 +0000 (UTC)
Date: Mon, 27 Apr 2020 23:20:30 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: ron minnich <rminnich@gmail.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
Message-ID: <20200427232030.478f0048@xps13>
In-Reply-To: <CAP6exYJnKjzvC1g1qa8Odxg=HydD-CVbcz9yPi93Sbdg2K+bfw@mail.gmail.com>
References: <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
 <CAP6exYJ_jzrB0D=RLXMNeegu4BwQq8raXVOMugkqzX2ZP_JSqw@mail.gmail.com>
 <20200327155608.GM2564@lahna.fi.intel.com>
 <20200327171907.7a7ffc73@xps13>
 <20200327164802.GN2564@lahna.fi.intel.com>
 <20200327175238.784cf47c@xps13>
 <CAP6exYJ4-pBBZKA0z8TKPqh_0tKzJadjXEBZk9dc9ij8BJ9Xew@mail.gmail.com>
 <20200327171619.GO2564@lahna.fi.intel.com>
 <CAP6exYJWWT2SFLjPCdjAEEjmZYwqYuTxd_aRaf=xEELmXqfMpA@mail.gmail.com>
 <CAP6exY+p-Chi2R4Y1H8UvcbE6rvEpMiK3UaX2OyBq=ZO6uULpg@mail.gmail.com>
 <20200330060859.GR2564@lahna.fi.intel.com>
 <20200330092722.2ff41863@xps13>
 <CAP6exY+F2VoEZkwcYp38HNt7NyZucQrdQ8MqQyTQ62U12pAcSw@mail.gmail.com>
 <20200401094148.1786d48a@xps13>
 <20200427111623.5f93842d@collabora.com>
 <20200427114954.4fc0e8fc@collabora.com>
 <CAP6exYJnKjzvC1g1qa8Odxg=HydD-CVbcz9yPi93Sbdg2K+bfw@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_142037_129843_B74C824A 
X-CRM114-Status: GOOD (  39.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgcm9uLAoKcm9uIG1pbm5pY2ggPHJtaW5uaWNoQGdtYWlsLmNvbT4gd3JvdGUgb24gTW9uLCAy
NyBBcHIgMjAyMCAxMzozMTozNQotMDcwMDoKCj4gT24gTW9uLCBBcHIgMjcsIDIwMjAgYXQgMjo1
MCBBTSBCb3JpcyBCcmV6aWxsb24KPiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IHdy
b3RlOgo+ID4KPiA+IE9uIE1vbiwgMjcgQXByIDIwMjAgMTE6MTY6MjMgKzAyMDAKPiA+IEJvcmlz
IEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gIAo+
ID4gPiBIaSBhbGwsCj4gPiA+Cj4gPiA+IE9uIFdlZCwgMSBBcHIgMjAyMCAwOTo0MTo0OCArMDIw
MAo+ID4gPiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToK
PiA+ID4gIAo+ID4gPiA+IEhpIHJvbiwKPiA+ID4gPgo+ID4gPiA+IHJvbiBtaW5uaWNoIDxybWlu
bmljaEBnbWFpbC5jb20+IHdyb3RlIG9uIE1vbiwgMzAgTWFyIDIwMjAgMDg6NTM6MjIKPiA+ID4g
PiAtMDcwMDoKPiA+ID4gPiAgCj4gPiA+ID4gPiBPbiBNb24sIE1hciAzMCwgMjAyMCBhdCAxMjoy
NyBBTSBNaXF1ZWwgUmF5bmFsCj4gPiA+ID4gPiA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4g
d3JvdGU6Cj4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+IFdvdWxkIGl0IGJlIGhhcmQgdG8gc3VwcG9y
dCBhbiBleHRyYSAnOicgYWZ0ZXIgdGhlIE1URCBkZXZpY2UgbmFtZT8KPiA+ID4gPiA+ID4gVGhp
cyB3YXkgd291bGQgd291bGQgYWxsb3cgYW55dGhpbmcgaW5zaWRlIHRoZSBvcHRpb25hbCAnKCcg
JyknIGJ1dAo+ID4gPiA+ID4gPiB3b3VsZCBrZWVwIHRoZSB0cmFpbGluZyAnOicuCj4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+IHRvVGF5Ogo+ID4gPiA+ID4gPiAgICAgICAgIG10ZHBhcnRzPW5hbWU6
cGFydDEscGFydDIKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gU286Cj4gPiA+ID4gPiA+ICAgICAg
ICAgbXRkcGFydHM9KDAwMDA6MDA6MWYuNSk6MjUxNjU4MjQoQklPUyksLShzcXVhc2hmcykgIAo+
ID4gPiA+ID4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJIHRob3VnaHQgYWJvdXQgdGhhdCAnOicgdG9v
LiBJdCBkb2VzIGFkZCBhIGJpdCBtb3JlIHRvIHRoZSBjb2RlLCBhbmQKPiA+ID4gPiA+IGEgYml0
IG1vcmUgaW4gdGhlIHdheSBvZiBlcnJvciBjYXNlcy4gSSBhbHdheXMgd29ycnksIHdoZW4gY29k
ZSBpcwo+ID4gPiA+ID4gZ29pbmcgaW50byBmbGFzaCwKPiA+ID4gPiA+IGFib3V0IGVycm9ycyB3
aGVyZSBzb21ldGhpbmcgbG9va3MgY2xvc2UgdG8gcmlnaHQgYnV0IGlzIHdyb25nLiAoc2F5cwo+
ID4gPiA+ID4gdGhlIHBlcnNvbiB3aG8ganVzdCB0eXBlZCBpdCBpbnN0ZWFkIG9mIGlzIGEgZmV3
IHRpbWVzIDotKQo+ID4gPiA+ID4KPiA+ID4gPiA+IFdoYXQgaWYgd2UgZGlkIHRoaXM6Cj4gPiA+
ID4gPiBtdGRwYXJ0cz1bMDAwMDowMDoxZi41XTI1MTY1ODI0KEJJT1MpLC0oc3F1YXNoZnMpCj4g
PiA+ID4gPgo+ID4gPiA+ID4gSXMgdGhlICJdIiAnZW5vdWdoIGRpZmZlcmVudCcgdGhhdCB3ZSBk
byBub3QgbmVlZCB0aGUgJzonPwo+ID4gPiA+ID4KPiA+ID4gPiA+IEkga2luZCBvZiBsaWtlIHRo
ZSBbXSBiZXR0ZXIgYW55d2F5IGFzIGl0IG1ha2VzIHRoZSBtdGRpZCBzdGFuZCBvdXQgYQo+ID4g
PiA+ID4gYml0IG1vcmUgZnJvbSB0aGUgcGFydCBuYW1lcz8gQnV0IGlzIGl0IGVub3VnaCB0aGF0
IHdlIGRvbid0IG5lZWQgdGhlCj4gPiA+ID4gPiAnOic/IFdvdWxkIHlvdSBzdGlsbCBwcmVmZXIg
dGhlICgpIGFzIG9wcG9zZWQgdG8gdGhlIFtdPyAgCj4gPiA+ID4KPiA+ID4gPiBJIGxpa2UgdGhl
IFtdIGFzIHdlbGwsIG1heWJlIG1vcmUgdGhhbiAoKSBiZWNhdXNlIGF0IGxlYXN0IGl0IGRvZXMg
bm90Cj4gPiA+ID4gY29uZmxpY3Qgd2l0aCB0aGUgcGFydGl0aW9uIG5hbWVzLiBCdXQgSSByZWFs
bHkgcHJlZmVyIGtlZXBpbmcgdGhlIDogaWYKPiA+ID4gPiB0aGUgY29kZSBpcyBzdGlsbCByZWFk
YWJsZS4KPiA+ID4gPgo+ID4gPiA+IEl0IGlzIG11Y2ggZWFzaWVyIHRvIGV4cGxhaW4gdG8gcGVv
cGxlIDogImlmIHlvdSBoYXZlIGEgOiBpbiB0aGUgbmFtZSwKPiA+ID4gPiBlbmNsb3NlIGl0IHdp
dGggW10iLiAgCj4gPiA+Cj4gPiA+IFNvcnJ5IHRvIGNoaW1lIGluIHNvIGxhdGUgaW4gdGhlIGRp
c2N1c3Npb24sIGJ1dCBJIHdvbmRlciBpZiBhbnkgb2YKPiA+ID4gdGhhdCBpcyBuZWNlc3Nhcnku
IENhbid0IHdlIGp1c3Qgc3BsaXQgdGhlIHN0cmluZyBwZXIgZGV2aWNlIChzcGxpdAo+ID4gPiBz
dHJpbmdzIGV2ZXJ5IHRpbWUgd2Ugc2VlIGEgJzsnKSwgYW5kIHRoZW4gZmluZCB0aGUgbGFzdCAn
OicgaW4gZWFjaCBvZgo+ID4gPiB0aG9zZSBzdHJpbmdzIGFuZCBjb25zaWRlciBldmVyeXRoaW5n
IGJlZm9yZSB0aGF0IGxhc3QgJzonIHRvIGJlIHRoZSBNVEQKPiA+ID4gbmFtZS4gVGhhdCBzaG91
bGQgd29yayBldmVuIGlmIHRoZSBNVEQgbmFtZSBjb250YWlucyBvbmUgb3IgbW9yZSAnOicuCj4g
PiA+Cj4gPiA+IERvbid0IGdldCBtZSB3cm9uZywgSSdtIHBlcmZlY3RseSBmaW5lIHdpdGggaW50
ZWwgZW5jbG9zaW5nIHRoZSBQQ0kKPiA+ID4gYWRkcmVzcyBpbiBbXSB0byBtYWtlIGl0IGNsZWFy
ZXIsIGJ1dCBJIHNlZSB0aGF0IG90aGVyIGRyaXZlcnMgdXNlICc6Jwo+ID4gPiBpbiB0aGVpciBN
VEQgZGV2aWNlIG5hbWVzICh0aGUgYXRtZWwgcmF3IE5BTkQgY29udHJvbGxlciBkcml2ZXIgdG8g
bmFtZQo+ID4gPiBvbmUpLCBzbyBJIHRoaW5rIGl0J2QgYmUgZ29vZCB0byBtYWtlIHRoZSBtdGQg
cGFydCBwYXJzaW5nIHJvYnVzdCB0bwo+ID4gPiB0aGlzIHVzZSBjYXNlLiAgCj4gPgo+ID4gSSBq
dXN0IGdhdmUgaXQgYSB0cnkgYW5kIHRoZSBmb2xsb3dpbmcgcGF0Y2ggc2hvdWxkIHNvbHZlIHRo
ZSBwcm9ibGVtCj4gPiAob25seSBjb21waWxlLXRlc3RlZCkuIEFzIEkgc2FpZCBwcmV2aW91c2x5
LCBpdCBkb2Vzbid0IHByZXZlbnQgeW91IGZyb20KPiA+IGVuY2xvc2luZyB0aGUgUENJIGFkZHJl
c3MgaW4gW10gaWYgeW91IHRoaW5rIGl0J3MgY2xlYXJlciwgYnV0IEkgdGhpbmsKPiA+IHRoZSBw
cm9ibGVtIHNob3VsZCBiZSBhZGRyZXNzZWQgaW4gdGhlIGNtZGxpbmUgcGFyc2VyIGFueXdheS4K
PiA+ICAKPiA+IC0tLT44LS0tICAKPiA+IEZyb20gMDhiMzA1OTdkZDczZWZkOWM0YzhkMTkwNmFi
MDJhOTU0MDg3NTQxOSBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKPiA+IEZyb206IEJvcmlzIEJy
ZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gPiBEYXRlOiBNb24sIDI3
IEFwciAyMDIwIDExOjQ0OjUwICswMjAwCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIG10ZDogcGFyc2Vy
OiBjbWRsaW5lOiBTdXBwb3J0IE1URCBuYW1lcyBjb250YWluaW5nIG9uZSBvcgo+ID4gIG1vcmUg
Y29sb25zCj4gPgo+ID4gTG9va3MgbGlrZSBzb21lIGRyaXZlcnMgZGVmaW5lIE1URCBuYW1lcyB3
aXRoIGEgY29sb24gaW4gaXQsIHRodXMKPiA+IG1ha2luZyBtdGRwYXJ0PSBwYXJzaW5nIGltcG9z
c2libGUuIExldCdzIGZpeCB0aGUgcGFyc2VyIHRvIGdyYWNlZnVsbHkKPiA+IGhhbmRsZSB0aGF0
IGNhc2U6IHRoZSBsYXN0ICc6JyBpbiBhIHBhcnRpdGlvbiBkZWZpbml0aW9uIHNlcXVlbmNlIGlz
Cj4gPiBjb25zaWRlcmVkIGluc3RlYWQgb2YgdGhlIGZpcnN0IG9uZS4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9tdGQvcGFyc2Vycy9jbWRsaW5lcGFydC5jIHwgMjMgKysrKysr
KysrKysrKysrKysrKystLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvcGFyc2Vycy9j
bWRsaW5lcGFydC5jIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9jbWRsaW5lcGFydC5jCj4gPiBpbmRl
eCBjODZmMmRiOGM4ODIuLjA2MjViMjU2MjBjYSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbXRk
L3BhcnNlcnMvY21kbGluZXBhcnQuYwo+ID4gKysrIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9jbWRs
aW5lcGFydC5jCj4gPiBAQCAtMjE4LDEyICsyMTgsMjkgQEAgc3RhdGljIGludCBtdGRwYXJ0X3Nl
dHVwX3JlYWwoY2hhciAqcykKPiA+ICAgICAgICAgICAgICAgICBzdHJ1Y3QgY21kbGluZV9tdGRf
cGFydGl0aW9uICp0aGlzX210ZDsKPiA+ICAgICAgICAgICAgICAgICBzdHJ1Y3QgbXRkX3BhcnRp
dGlvbiAqcGFydHM7Cj4gPiAgICAgICAgICAgICAgICAgaW50IG10ZF9pZF9sZW4sIG51bV9wYXJ0
czsKPiA+IC0gICAgICAgICAgICAgICBjaGFyICpwLCAqbXRkX2lkOwo+ID4gKyAgICAgICAgICAg
ICAgIGNoYXIgKnAsICptdGRfaWQsICpzZW1pY29sOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICAg
IC8qCj4gPiArICAgICAgICAgICAgICAgICogUmVwbGFjZSB0aGUgZmlyc3QgJzsnIGJ5IGEgTlVM
TCBjaGFyIHNvIHN0cnJjaHIgY2FuIHdvcmsKPiA+ICsgICAgICAgICAgICAgICAgKiBwcm9wZXJs
eS4KPiA+ICsgICAgICAgICAgICAgICAgKi8KPiA+ICsgICAgICAgICAgICAgICBzZW1pY29sID0g
c3RyY2hyKHMsICc7Jyk7Cj4gPiArICAgICAgICAgICAgICAgaWYgKHNlbWljb2wpCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAqc2VtaWNvbCA9ICdcMCc7Cj4gPgo+ID4gICAgICAgICAgICAg
ICAgIG10ZF9pZCA9IHM7Cj4gPgo+ID4gLSAgICAgICAgICAgICAgIC8qIGZldGNoIDxtdGQtaWQ+
ICovCj4gPiAtICAgICAgICAgICAgICAgcCA9IHN0cmNocihzLCAnOicpOwo+ID4gKyAgICAgICAg
ICAgICAgIC8qCj4gPiArICAgICAgICAgICAgICAgICogZmV0Y2ggPG10ZC1pZD4uIFdlIHVzZSBz
dHJyY2hyIHRvIGlnbm9yZSBhbGwgJzonIHRoYXQgY291bGQKPiA+ICsgICAgICAgICAgICAgICAg
KiBiZSBwcmVzZW50IGluIHRoZSBNVEQgbmFtZSwgb25seSB0aGUgbGFzdCBvbmUgaXMgaW50ZXJw
cmV0ZWQKPiA+ICsgICAgICAgICAgICAgICAgKiBhcyBhbiA8bXRkLWlkPi88cGFydC1kZWZpbml0
aW9uPiBzZXBhcmF0b3IuCj4gPiArICAgICAgICAgICAgICAgICovCj4gPiArICAgICAgICAgICAg
ICAgcCA9IHN0cnJjaHIocywgJzonKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICAvKiBSZXN0
b3JlIHRoZSAnOycgbm93LiAqLwo+ID4gKyAgICAgICAgICAgICAgIGlmIChzZW1pY29sKQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgKnNlbWljb2wgPSAnOyc7Cj4gPiArCj4gPiAgICAgICAg
ICAgICAgICAgaWYgKCFwKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBwcl9lcnIoIm5v
IG10ZC1pZFxuIik7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsg
IAo+IAo+IAo+IFRlc3RlZC1ieTogcm1pbm5pY2hAZ29vZ2xlLmNvbQoKQWN0dWFsbHkgYXMgd2Ug
dXNlIHRvb2xzIHRvIGNvbGxlY3QgcGF0Y2hlcyB3ZSBuZWVkIHRoZW0gdG8gYmUgc2VudApwcm9w
ZXJseS4gSXQgbWVhbnM6IGNhbiB5b3UgcGxlYXNlIGNvcHkgdGhpcyBwYXRjaCBpbiBhIC50eHQg
ZmlsZSwgdGhlbgphcHBseSBpdCB3aXRoIGdpdCBhbSwgdGhlbiBhbWVuZCBpdCB3aXRoIHlvdXIg
c2lnbmVkLW9mZi1ieSBhbmQKZXZlbnR1YWxseSBhbHNvIGFkZCB5b3VyIFRlc3RlZC1ieSBpbiB0
aGlzIGNhc2UgYmVmb3JlIHNlbmRpbmcgaXQgdG8KdGhlIE1MLCBhcyB1c3VhbC4KCkJvcmlzIFNv
QiBzaG91bGQgYXBwZWFyIGZpcnN0IGluIHRoZSBsaXN0IGFzIGhlIGlzIHRoZSBhdXRob3IsIHRo
ZW4KeW91cnMgYXMgeW91IGFyZSB0aGUgc2VuZGVyLiBUaGVuIHlvdXIgVGVzdGVkLWJ5LgoKClRo
YW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
