Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9334FE55
	for <lists+linux-mtd@lfdr.de>; Mon, 24 Jun 2019 03:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ureXVDKUblWrmcLIamQSSbOyU8kwqVvbDMvMRcNjepU=; b=SDfmR4Qr55Og6O
	2lkmSe5YbyBpPK2nzP9EvZfXyH0XtAICvGM201yfvrMav7FsU3iiB4aRgrDZUPKOsX0aNjYIvObYi
	hHZpCfKdBgWICBMS5oZmv2x1t7AI6nM6Fw4iO4ZJEiUdDFRmvNNKnyylPIj8UwvGzJdfxQM+npt5L
	rzaRabOUMMNpPdVZuWN5mhxt7Y2EOw3JC937wRJytsn38APinv4/WHHu++kgRyvEzioACJhO0JKpi
	SloJUYLL5inXX9LOcMBqTk9VaiWwsc7aNg579cOU5d8WABKjGOXi2dmARq+Rjp988Xag8znoqUpIb
	c/QK+hzUBt3HrQ+h7WJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfDZ4-0007G1-DM; Mon, 24 Jun 2019 01:14:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfDYh-0007EV-5R; Mon, 24 Jun 2019 01:14:14 +0000
X-UUID: 8b0df9d15d224ecba0e8ca5ab45033d2-20190623
X-UUID: 8b0df9d15d224ecba0e8ca5ab45033d2-20190623
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1266232117; Sun, 23 Jun 2019 17:14:01 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 23 Jun 2019 18:14:00 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n1.mediatek.inc
 (172.21.101.15) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 24 Jun 2019 09:13:58 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 24 Jun 2019 09:13:57 +0800
Message-ID: <1561338837.19057.14.camel@mhfsdcap03>
Subject: Re: [PATCH] mtd: rawnand: mtk: Re-license MTK NAND driver as Dual
 MIT/GPL
From: xiaolei li <xiaolei.li@mediatek.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 24 Jun 2019 09:13:57 +0800
In-Reply-To: <CAK7LNASu5FdAcSY49EGGdKU46KYBvWKzA8BeZNk9nTKmsKHy0A@mail.gmail.com>
References: <20190620015812.16519-1-xiaolei.li@mediatek.com>
 <CAK7LNASu5FdAcSY49EGGdKU46KYBvWKzA8BeZNk9nTKmsKHy0A@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_181411_215143_9F66F07D 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 srv_heupstream@mediatek.com, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Wen Yang <yellowriver2010@hotmail.com>,
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>,
 Jorge Ramirez Ortiz <jorge.ramirez-ortiz@linaro.org>, rogercc.lin@mediatek.com,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzYWhpcm8sCgoKT24gRnJpLCAyMDE5LTA2LTIxIGF0IDIxOjM3ICswOTAwLCBNYXNhaGly
byBZYW1hZGEgd3JvdGU6Cj4gT24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMTA6NTggQU0gPHhpYW9s
ZWkubGlAbWVkaWF0ZWsuY29tPiB3cm90ZToKPiA+Cj4gPiBGcm9tOiBYaWFvbGVpIExpIDx4aWFv
bGVpLmxpQG1lZGlhdGVrLmNvbT4KPiA+Cj4gPiBJdCBpcyB3YW50ZWQgdG8gdXNlIE1USyBOQU5E
IGRyaXZlciB3aXRoIEdQTC0yLjAgb3IgTUlUIGxpY2Vuc2UuCj4gPiBCdXQgbm93IGl0IGlzIG9u
bHkgbGljZW5zZWQgYXMgR1BMLTIuMC4KPiA+IFNvIHJlLWxpY2Vuc2UgaXQgYXMgZHVhbCBNSVQv
R1BMIGFuZCByZXBsYWNlIGxpY2Vuc2UgdGV4dCB3aXRoCj4gPiBTUERYIHRhZy4KPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBYaWFvbGVpIExpIDx4aWFvbGVpLmxpQG1lZGlhdGVrLmNvbT4KPiA+IEFj
a2VkLWJ5OiBKb3JnZSBSYW1pcmV6LU9ydGl6IDxqb3JnZS5yYW1pcmV6LW9ydGl6QGxpbmFyby5v
cmc+Cj4gPiBBY2tlZC1ieTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgo+ID4g
QWNrZWQtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiA+IEFja2VkLWJ5
OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+ID4gQWNrZWQtYnk6
IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gPiBBY2tl
ZC1ieTogV2VuIFlhbmcgPHllbGxvd3JpdmVyMjAxMEBob3RtYWlsLmNvbT4KPiA+IEFja2VkLWJ5
OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+Cj4gPiBBY2tlZC1ieTog
QXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiA+IEFja2VkLWJ5OiBNYXNhaGlybyBZYW1h
ZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9t
dGQvbmFuZC9yYXcvbXRrX2VjYy5jICB8IDEyICsrLS0tLS0tLS0tLQo+ID4gIGRyaXZlcnMvbXRk
L25hbmQvcmF3L210a19lY2MuaCAgfCAgNCArLS0tCj4gPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcv
bXRrX25hbmQuYyB8IDEyICsrLS0tLS0tLS0tLQo+IAo+IAo+IAo+IAo+IAo+IGh0dHBzOi8vd3d3
LmdudS5vcmcvbGljZW5zZXMvaWRlbnRpZnktbGljZW5zZXMtY2xlYXJseS5odG1sCj4gc2F5czoK
PiAiQnV0IHRyb3VibGUgd2lsbCBoYXBwZW4gZXZlbiBkdXJpbmcgeW91ciBsaWZldGltZS4gV2hh
dCBpZiB3ZSByZWxlYXNlCj4gR05VIEdQTCB2ZXJzaW9uIDQKPiB0ZW4geWVhcnMgZnJvbSBub3cs
IGFuZCBieSB0aGF0IHRpbWUgNTAgb3RoZXJzIGhhdmUgYWRkZWQgdG8geW91cgo+IHByb2dyYW0s
IHJlbGVhc2luZwo+IHRoZWlyIGFkZGVkIGNvZGUgdW5kZXIgR1BMLTMuMC1vbmx5IHNpbXBseSBi
ZWNhdXNlIHlvdSBkaWQ/IFlvdSBjb3VsZAo+IGFwcHJvdmUgR1BMIDQgZm9yCj4gdGhlIHByb2dy
YW0geW91IGluaXRpYWxseSByZWxlYXNlZCwgYnV0IGl0IHdvdWxkIGJlIGEgYmlnIGpvYiB0bwo+
IGNvbnRhY3QgdGhlIDUwIHN1YnNlcXVlbnQKPiBkZXZlbG9wZXJzIGF0IHRoYXQgdGltZSB0byBn
ZXQgdGhlaXIgcGVybWlzc2lvbiBmb3IgR1BMIDQgdXNhZ2Ugb2YKPiB0aGVpciBhZGRpdGlvbnMu
Igo+IAo+IAo+IFRoaXMgaW1wbGllcyB0aGUgcmUtbGljZW5zaW5nIGlzIHJlYWxseSBkaWZmaWN1
bHQKPiBvbmNlIHlvdSBtYWtlIGl0IGF2YWlsYWJsZSBpbiBvcGVuIHNvdXJjZS4KPiAKPiAKPiBZ
b3Ugc2hvdWxkIG1ha2Ugc3VyZSBpZiB3ZSBoYXZlIGNvdmVyZWQgYWxsIHRoZSBjb250cmlidXRv
cnMuCj4gKFByb2JhYmx5LCB0Z2x4IGlzIE9LLCBoZSBqdXN0IGNvbnZlcnRlZCBTUERYLikKPiAK
PiAKPiBDb250cmlidXRvcnMgdG8gbXRrX2VjYy5jOgo+ICQgZ2l0IGxvZyAgLS1mb2xsb3cgLS1w
cmV0dHk9Zm9ybWF0OiclYW4nCj4gZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX2VjYy5jIHwgc29y
dCB8IHVuaXEKPiBBcm5kIEJlcmdtYW5uCj4gQm9yaXMgQnJlemlsbG9uCj4gRGFuIENhcnBlbnRl
cgo+IEd1c3Rhdm8gQS4gUi4gU2lsdmEKPiBKb3JnZSBSYW1pcmV6LU9ydGl6Cj4gUm9nZXJDQyBM
aW4KPiBSeWRlciBMZWUKPiBUaG9tYXMgR2xlaXhuZXIKPiBXZW4gWWFuZwo+IFhpYW9sZWkgTGkK
PiAKPiAKPiBDb250cmlidXRvcnMgdG8gbXRrX2VjYy5oOgo+ICQgZ2l0IGxvZyAgLS1mb2xsb3cg
LS1wcmV0dHk9Zm9ybWF0OiclYW4nCj4gZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX2VjYy5oIHwg
c29ydCB8IHVuaXEKPiBCb3JpcyBCcmV6aWxsb24KPiBKb3JnZSBSYW1pcmV6LU9ydGl6Cj4gUm9n
ZXJDQyBMaW4KPiBYaWFvbGVpIExpCj4gCj4gCj4gQ29udHJpYnV0b3JzIHRvIG10a19uYW5kLmM6
Cj4gJCBnaXQgbG9nICAtLWZvbGxvdyAtLXByZXR0eT1mb3JtYXQ6JyVhbicKPiBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jIHwgc29ydCB8IHVuaXEKPiBCb3JpcyBCcmV6aWxsb24KPiBK
b3JnZSBSYW1pcmV6LU9ydGl6Cj4gTWFzYWhpcm8gWWFtYWRhCj4gTWlxdWVsIFJheW5hbAo+IFJh
ZmHFgiBNacWCZWNraQo+IFJvZ2VyQ0MgTGluCj4gUnlkZXIgTGVlCj4gVGhvbWFzIEdsZWl4bmVy
Cj4gV2VpIFlvbmdqdW4KPiBYaWFvbGVpIExpCj4gCj4gCj4gCj4gRm9yIGV4YW1wbGUsIGhvdyBh
Ym91dCB0aGUgYXV0aG9yIG9mIHRoZSBmb2xsb3dpbmcgY29tbWl0Pwo+IAo+IEhlIHdvcmtzIGZv
ciB0aGUgc2FtZSBjb21wYW55LCBzbyBqdXN0IGFzayBoaW0uCj4gCj4gCj4gY29tbWl0IGI0NWVl
NTUwMWVkZTlhMzY5ZTliYzIwZWRjYTUwODE5M2I4NDhkMjUKPiBBdXRob3I6IFJvZ2VyQ0MgTGlu
IDxyb2dlcmNjLmxpbkBtZWRpYXRlay5jb20+Cj4gRGF0ZTogICBUaHUgTm92IDMwIDIyOjEwOjQ0
IDIwMTcgKzA4MDAKPiAKPiAgICAgbXRkOiBuYW5kOiBtdGs6IFN1cHBvcnQgZGlmZmVyZW50IE1U
SyBOQU5EIGZsYXNoIGNvbnRyb2xsZXIgSVAKPiAKPiAKClRoYW5rcyBmb3IgeW91ciByZW1pbmRp
bmcuClJvZ2VyIGhhcyBhbHJlYWR5IHNlbnQgQUNLIGZvciB0aGlzIHBhdGNoLiBJdCBpcyBteSBm
YXVsdC4gSSBmb3Jnb3QgdG8KYWRkIGhpbSBpbiBBY2tlZC1ieSBsaXN0LgoKQWN0dWFsbHksIHdl
IGhhdmUgc3BlbnQgdG9vIG11Y2ggdGltZSB0byBhc2sgZm9yIHJlc3BvbnNlIGZyb20gYWxsIE1U
SwpOQU5EIGRyaXZlciBjb250cmlidXRvcnMuIFRoYW5rcyBmb3IgUmFmYWwncyB3b3JrLCBoZSBo
ZWxwZWQgbWUgZmluZCBhbGwKY29udHJpYnV0b3JzIGFzIHlvdSBkaWQgaGVyZS4KClVwIHRvIG5v
dywgYWxsIG1ham9yIGNvbnRyaWJ1dG9ycyBzZW50IEFDS3MgZm9yIHRoaXMgcGF0Y2guIFNvLCBJ
IHNlbnQKZm9ybWFsIHBhdGNoIHRvIGZpbmlzaCB0aGlzIHJlLWxpY2Vuc2UgY2hhbmdlLgoKVGhh
bmtzLApYaWFvbGVpCgo+IAo+IAo+IAo+IAo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCAyMyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
bmFuZC9yYXcvbXRrX2VjYy5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX2VjYy5jCj4gPiBp
bmRleCAwNWIwYzE5ZDcyZDkuLjc0NTk1YjY0NGI3YyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
bXRkL25hbmQvcmF3L210a19lY2MuYwo+ID4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRr
X2VjYy5jCj4gPiBAQCAtMSwxNyArMSw5IEBACj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAgT1IgTUlUCj4gPiAgLyoKPiA+ICAgKiBNVEsgRUNDIGNvbnRyb2xsZXIgZHJp
dmVyLgo+ID4gICAqIENvcHlyaWdodCAoQykgMjAxNiAgTWVkaWFUZWsgSW5jLgo+ID4gICAqIEF1
dGhvcnM6ICAgIFhpYW9sZWkgTGkgICAgICAgICAgICAgIDx4aWFvbGVpLmxpQG1lZGlhdGVrLmNv
bT4KPiA+ICAgKiAgICAgICAgICAgICBKb3JnZSBSYW1pcmV6LU9ydGl6ICAgICA8am9yZ2UucmFt
aXJlei1vcnRpekBsaW5hcm8ub3JnPgo+ID4gLSAqCj4gPiAtICogVGhpcyBwcm9ncmFtIGlzIGZy
ZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKPiA+IC0g
KiBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIHZl
cnNpb24gMiBhcwo+ID4gLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0
aW9uLgo+ID4gLSAqCj4gPiAtICogVGhpcyBwcm9ncmFtIGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBo
b3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwsCj4gPiAtICogYnV0IFdJVEhPVVQgQU5ZIFdBUlJB
TlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKPiA+IC0gKiBNRVJDSEFO
VEFCSUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICBTZWUgdGhlCj4g
PiAtICogR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4KPiA+ICAg
Ki8KPiA+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4gQEAgLTYw
NCw0ICs1OTYsNCBAQCBtb2R1bGVfcGxhdGZvcm1fZHJpdmVyKG10a19lY2NfZHJpdmVyKTsKPiA+
Cj4gPiAgTU9EVUxFX0FVVEhPUigiWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+
Iik7Cj4gPiAgTU9EVUxFX0RFU0NSSVBUSU9OKCJNVEsgTmFuZCBFQ0MgRHJpdmVyIik7Cj4gPiAt
TU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwo+ID4gK01PRFVMRV9MSUNFTlNFKCJEdWFsIE1JVC9HUEwi
KTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfZWNjLmggYi9kcml2
ZXJzL210ZC9uYW5kL3Jhdy9tdGtfZWNjLmgKPiA+IGluZGV4IGE0NTVkZjA4MDk1Mi4uMGU0OGMz
NmU2Y2EwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX2VjYy5oCj4g
PiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfZWNjLmgKPiA+IEBAIC0xLDEyICsxLDEw
IEBACj4gPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgT1IgTUlUICovCj4g
PiAgLyoKPiA+ICAgKiBNVEsgU0RHMSBFQ0MgY29udHJvbGxlcgo+ID4gICAqCj4gPiAgICogQ29w
eXJpZ2h0IChjKSAyMDE2IE1lZGlhdGVrCj4gPiAgICogQXV0aG9yczogICAgWGlhb2xlaSBMaSAg
ICAgICAgICAgICAgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPgo+ID4gICAqICAgICAgICAgICAg
IEpvcmdlIFJhbWlyZXotT3J0aXogICAgIDxqb3JnZS5yYW1pcmV6LW9ydGl6QGxpbmFyby5vcmc+
Cj4gPiAtICogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmli
dXRlIGl0IGFuZC9vciBtb2RpZnkgaXQKPiA+IC0gKiB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdO
VSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIHZlcnNpb24gMiBhcyBwdWJsaXNoZWQKPiA+IC0gKiBi
eSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLgo+ID4gICAqLwo+ID4KPiA+ICAjaWZuZGVm
IF9fRFJJVkVSU19NVERfTkFORF9NVEtfRUNDX0hfXwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bXRkL25hbmQvcmF3L210a19uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5j
Cj4gPiBpbmRleCA2MTdmOTY1NmEwNDUuLjM3M2Q0N2QxYmE0YyAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvbXRkL25hbmQvcmF3L210a19uYW5kLmMKPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQv
cmF3L210a19uYW5kLmMKPiA+IEBAIC0xLDE3ICsxLDkgQEAKPiA+ICsvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMCBPUiBNSVQKPiA+ICAvKgo+ID4gICAqIE1USyBOQU5EIEZsYXNo
IGNvbnRyb2xsZXIgZHJpdmVyLgo+ID4gICAqIENvcHlyaWdodCAoQykgMjAxNiBNZWRpYVRlayBJ
bmMuCj4gPiAgICogQXV0aG9yczogICAgWGlhb2xlaSBMaSAgICAgICAgICAgICAgPHhpYW9sZWku
bGlAbWVkaWF0ZWsuY29tPgo+ID4gICAqICAgICAgICAgICAgIEpvcmdlIFJhbWlyZXotT3J0aXog
ICAgIDxqb3JnZS5yYW1pcmV6LW9ydGl6QGxpbmFyby5vcmc+Cj4gPiAtICoKPiA+IC0gKiBUaGlz
IHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29y
IG1vZGlmeQo+ID4gLSAqIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVi
bGljIExpY2Vuc2UgdmVyc2lvbiAyIGFzCj4gPiAtICogcHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNv
ZnR3YXJlIEZvdW5kYXRpb24uCj4gPiAtICoKPiA+IC0gKiBUaGlzIHByb2dyYW0gaXMgZGlzdHJp
YnV0ZWQgaW4gdGhlIGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwKPiA+IC0gKiBidXQgV0lU
SE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgo+
ID4gLSAqIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9T
RS4gIFNlZSB0aGUKPiA+IC0gKiBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBk
ZXRhaWxzLgo+ID4gICAqLwo+ID4KPiA+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNl
Lmg+Cj4gPiBAQCAtMTY1Myw2ICsxNjQ1LDYgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2
ZXIgbXRrX25mY19kcml2ZXIgPSB7Cj4gPgo+ID4gIG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIobXRr
X25mY19kcml2ZXIpOwo+ID4KPiA+IC1NT0RVTEVfTElDRU5TRSgiR1BMIik7Cj4gPiArTU9EVUxF
X0xJQ0VOU0UoIkR1YWwgTUlUL0dQTCIpOwo+ID4gIE1PRFVMRV9BVVRIT1IoIlhpYW9sZWkgTGkg
PHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiIpOwo+ID4gIE1PRFVMRV9ERVNDUklQVElPTigiTVRL
IE5hbmQgRmxhc2ggQ29udHJvbGxlciBEcml2ZXIiKTsKPiA+IC0tCj4gPiAyLjE4LjAKPiA+Cj4g
Pgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiBMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKPiA+IGh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo+IAo+IAo+IAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
