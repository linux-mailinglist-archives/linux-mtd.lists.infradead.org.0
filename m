Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 966DA14CBF9
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Jan 2020 15:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKregyjQQwBdXAbITIwCMjYP2Q7KCYpDPQphf9Rs+sU=; b=iDGMfGZDFUhuj7
	+uWuW2pRrfYxf4ZIyDj5E1EhzDzyvhX2Hx9YNfyAxc539QBCJlu2aZ/6TbGVMOJ0zY5LWA6e6u+L3
	53l9D2Z60UzGh5Ori2ZETz2mN3Bxr0J0RxDYM2eMRxm2onBoqMXlCFXVMJBqDtDWyJOSxMl0I/eJy
	PrbdZSdtYiA9/ysbZIdVfHy7sciGDrWyhFICi07UujnOnq+Y4UFjDeE/WLbVAc2Q3CcvXbLxp6Tef
	12Fl+eIcZ1KmSlqnSWjke40LVAAaTqy1dJLzTnvJQAMzwHmjG23eibeEXMBxFCh1SwqjWUPh3SuR7
	92lkfmAHb7UfG+D+TyUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnt9-0003dA-MJ; Wed, 29 Jan 2020 14:00:15 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnsv-00039f-Hi
 for linux-mtd@lists.infradead.org; Wed, 29 Jan 2020 14:00:03 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 197D2FF80F;
 Wed, 29 Jan 2020 13:59:51 +0000 (UTC)
Date: Wed, 29 Jan 2020 14:59:50 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: How to handle write-protect pin of NAND device ?
Message-ID: <20200129145950.2a324acf@xps13>
In-Reply-To: <20200129145336.66f840ea@collabora.com>
References: <CAK7LNAR0FemABUg5uN5fhy5LRsOm7n5GhmFVVHE8T57knDM9Ug@mail.gmail.com>
 <20200127153559.60a83e76@xps13>
 <20200127164554.34a21177@collabora.com>
 <20200127164755.29183962@xps13>
 <20200128075833.129902f6@collabora.com>
 <CAK7LNAQyK+jy4pm5M5z58uD5Zdv95Day6C6D3Gwvpv2C4Vh53Q@mail.gmail.com>
 <20200129143639.7f80addb@xps13>
 <20200129145336.66f840ea@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_060001_861800_BC5FCFAE 
X-CRM114-Status: GOOD (  39.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBXZWQsIDI5IEphbgoyMDIwIDE0OjUzOjM2ICswMTAwOgoKPiBPbiBXZWQsIDI5
IEphbiAyMDIwIDE0OjM2OjM5ICswMTAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBIZWxsbywKPiA+IAo+ID4gTWFzYWhpcm8gWWFtYWRh
IDxtYXNhaGlyb3lAa2VybmVsLm9yZz4gd3JvdGUgb24gV2VkLCAyOSBKYW4gMjAyMAo+ID4gMTk6
MDY6NDYgKzA5MDA6Cj4gPiAgIAo+ID4gPiBPbiBUdWUsIEphbiAyOCwgMjAyMCBhdCAzOjU4IFBN
IEJvcmlzIEJyZXppbGxvbgo+ID4gPiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IHdy
b3RlOiAgICAKPiA+ID4gPgo+ID4gPiA+IE9uIE1vbiwgMjcgSmFuIDIwMjAgMTY6NDc6NTUgKzAx
MDAKPiA+ID4gPiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90
ZToKPiA+ID4gPiAgICAgIAo+ID4gPiA+ID4gSGkgSGVsbG8sCj4gPiA+ID4gPgo+ID4gPiA+ID4g
Qm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGUgb24g
TW9uLCAyNyBKYW4KPiA+ID4gPiA+IDIwMjAgMTY6NDU6NTQgKzAxMDA6Cj4gPiA+ID4gPiAgICAg
IAo+ID4gPiA+ID4gPiBPbiBNb24sIDI3IEphbiAyMDIwIDE1OjM1OjU5ICswMTAwCj4gPiA+ID4g
PiA+IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdyb3RlOgo+ID4g
PiA+ID4gPiAgICAgIAo+ID4gPiA+ID4gPiA+IEhpIE1hc2FoaXJvLAo+ID4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+ID4gTWFzYWhpcm8gWWFtYWRhIDxtYXNhaGlyb3lAa2VybmVsLm9yZz4gd3JvdGUg
b24gTW9uLCAyNyBKYW4gMjAyMAo+ID4gPiA+ID4gPiA+IDIxOjU1OjI1ICswOTAwOgo+ID4gPiA+
ID4gPiA+ICAgICAgCj4gPiA+ID4gPiA+ID4gPiBIaS4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+ID4gPiBJIGhhdmUgYSBxdWVzdGlvbiBhYm91dCB0aGUKPiA+ID4gPiA+ID4gPiA+IFdQX24g
cGluIG9mIGEgTkFORCBjaGlwLgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gPiBBcyBmYXIgYXMgSSBzZWUsIHRoZSBOQU5EIGZyYW1ld29yayBkb2VzIG5vdAo+
ID4gPiA+ID4gPiA+ID4gaGFuZGxlIGl0LiAgICAgIAo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
ID4gVGhlcmUgaXMgYSBuYW5kX2NoZWNrX3dwKCkgd2hpY2ggcmVhZHMgdGhlIHN0YXR1cyBvZiB0
aGUgcGluIGJlZm9yZQo+ID4gPiA+ID4gPiA+IGVyYXNpbmcvd3JpdGluZy4KPiA+ID4gPiA+ID4g
PiAgICAgIAo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+IEluc3RlYWQsIGl0IGlzIGhh
bmRsZWQgaW4gYSBkcml2ZXIgbGV2ZWwuCj4gPiA+ID4gPiA+ID4gPiBJIHNlZSBzb21lIERULWJp
bmRpbmdzIHRoYXQgaGFuZGxlIHRoZSBXUF9uIHBpbi4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+ID4gPiAkIGdpdCBncmVwIHdwIC0tIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tdGQvCj4gPiA+ID4gPiA+ID4gPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bXRkL2JyY20sYnJjbW5hbmQudHh0Oi0KPiA+ID4gPiA+ID4gPiA+IGJyY20sbmFuZC1oYXMtd3Ag
ICAgICAgICAgOiBTb21lIHZlcnNpb25zIG9mIHRoaXMgSVAgaW5jbHVkZSBhCj4gPiA+ID4gPiA+
ID4gPiB3cml0ZS1wcm90ZWN0ICAgICAgCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBKdXN0
IGNoZWNrZWQ6IGJyY21uYW5kIGRlLWFzc2VydCBXUCB3aGVuIHdyaXRpbmcvZXJhc2luZyBhbmQg
YXNzZXJ0cyBpdAo+ID4gPiA+ID4gPiA+IG90aGVyd2lzZS4gSU1ITyB0aGlzIHN3aXRjaGluZyBp
cyB1c2VsZXNzLgo+ID4gPiA+ID4gPiA+ICAgICAgCj4gPiA+ID4gPiA+ID4gPiBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2luZ2VuaWMsano0NzgwLW5hbmQudHh0Oi0KPiA+
ID4gPiA+ID4gPiA+IHdwLWdwaW9zOiBHUElPIHNwZWNpZmllciBmb3IgdGhlIHdyaXRlIHByb3Rl
Y3QgcGluLgo+ID4gPiA+ID4gPiA+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L210ZC9pbmdlbmljLGp6NDc4MC1uYW5kLnR4dDoKPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgIHdw
LWdwaW9zID0gPCZncGYgMjIgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ID4gPiA+ID4gPiA+IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbnZpZGlhLXRlZ3JhMjAtbmFuZC50eHQ6
LQo+ID4gPiA+ID4gPiA+ID4gd3AtZ3Bpb3M6IEdQSU8gc3BlY2lmaWVyIGZvciB0aGUgd3JpdGUg
cHJvdGVjdCBwaW4uCj4gPiA+ID4gPiA+ID4gPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbXRkL252aWRpYS10ZWdyYTIwLW5hbmQudHh0Ogo+ID4gPiA+ID4gPiA+ID4gICAgICAg
ICAgd3AtZ3Bpb3MgPSA8JmdwaW8gVEVHUkFfR1BJTyhTLCAwKSBHUElPX0FDVElWRV9MT1c+OyAg
ICAgIAo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gSW4gYm90aCBjYXNlcywgdGhlIFdQIEdQ
SU8gaXMgdW51c2VkIGluIHRoZSBjb2RlLCBqdXN0IGRlLWFzc2VydGVkIGF0Cj4gPiA+ID4gPiA+
ID4gYm9vdCB0aW1lIGxpa2Ugd2hhdCB5b3UgZG8gaW4gdGhlIHBhdGNoIGJlbG93Lgo+ID4gPiA+
ID4gPiA+ICAgICAgCj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+ID4gPiBJIHdyb3RlIGEgcGF0Y2ggdG8gYXZvaWQgcmVhZC1vbmx5IGlz
c3VlIGluIHNvbWUgY2FzZXM6Cj4gPiA+ID4gPiA+ID4gPiBodHRwOi8vcGF0Y2h3b3JrLm96bGFi
cy5vcmcvcGF0Y2gvMTIyOTc0OS8KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBHZW5l
cmFsbHkgc3BlYWtpbmcsIHdlIGV4cGVjdCBOQU5EIGRldmljZXMKPiA+ID4gPiA+ID4gPiA+IGFy
ZSB3cml0YWJsZSBpbiBMaW51eC4gU28sIEkgdGhpbmsgbXkgcGF0Y2ggaXMgT0suICAgICAgCj4g
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBJIHRoaW5rIHRoZSBwYXRjaCBpcyBmaW5lLgo+ID4g
PiA+ID4gPiA+ICAgICAgCj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gPiA+IEhvd2V2ZXIsIEkgYXNrZWQgdGhpcyBteXNlbGY6Cj4gPiA+ID4gPiA+ID4gPiBJcyB0
aGVyZSBhIHVzZWZ1bCBjYXNlIHRvIGFzc2VydCB0aGUgd3JpdGUgcHJvdGVjdAo+ID4gPiA+ID4g
PiA+ID4gcGluIGluIG9yZGVyIHRvIG1ha2UgdGhlIE5BTkQgY2hpcCByZWFsbHkgcmVhZC1vbmx5
Pwo+ID4gPiA+ID4gPiA+ID4gRm9yIGV4YW1wbGUsIHRoZSBzeXN0ZW0gcmVjb3ZlcnkgaW1hZ2Ug
aXMgc3RvcmVkIGluCj4gPiA+ID4gPiA+ID4gPiBhIHJlYWQtb25seSBkZXZpY2UsIGFuZCB0aGUg
d3JpdGUtcHJvdGVjdCBwaW4gaXMKPiA+ID4gPiA+ID4gPiA+IGtlcHQgYXNzZXJ0ZWQgdG8gYXNz
dXJlIG5vYm9keSBhY2NpZGVudGFsbHkgY29ycnVwdHMgaXQuICAgICAgCj4gPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPiBJdCBpcyB2ZXJ5IGxpa2VseSB0aGF0IHRoZSBzYW1lIGRldmljZSBpcyB1
c2VkIGZvciBSTyBhbmQgUlcgc3RvcmFnZSBzbwo+ID4gPiA+ID4gPiA+IGluIG1vc3QgY2FzZXMg
dGhpcyBpcyBub3QgcG9zc2libGUuIFdlIGFscmVhZHkgaGF2ZSBzcXVhc2hmcyB3aGljaCBpcwo+
ID4gPiA+ID4gPiA+IGFjdHVhbGx5IHJlYWQtb25seSBhdCBmaWxlc3lzdGVtIGxldmVsLCBJJ20g
bm90IHN1cmUgaXQgaXMgbmVlZGVkIHRvCj4gPiA+ID4gPiA+ID4gZW5mb3JjZSB0aGlzIGF0IGEg
bG93ZXIgbGV2ZWwuLi4gQW55d2F5IGlmIHRoZXJlIGlzIGFjdHVhbGx5IGEgcGluIGZvcgo+ID4g
PiA+ID4gPiA+IHRoYXQsIG9uZSBtaWdodCB3YW50IHRvIGhhbmRsZSB0aGUgcGluIGRpcmVjdGx5
IGFzIGEgR1BJTywgd2hhdCBkbyB5b3UKPiA+ID4gPiA+ID4gPiB0aGluaz8gICAgICAKPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gRldJVywgSSd2ZSBhbHdheXMgY29uc2lkZXJlZCB0aGUgV1AgcGlu
IGFzIGEgd2F5IHRvIHByb3RlY3QgYWdhaW5zdAo+ID4gPiA+ID4gPiBzcHVyaW91cyBkZXN0cnVj
dGl2ZSBjb21tYW5kIGVtaXNzaW9uLCB3aGljaCBpcyBtb3N0IGxpa2VseSB0byBoYXBwZW4KPiA+
ID4gPiA+ID4gZHVyaW5nIHRyYW5zaXRpb24gcGhhc2VzIChib290bG9hZGVyIC0+IGxpbnV4LCBs
aW51eCAtPiBrZXhlY2VkLWxpbnV4LAo+ID4gPiA+ID4gPiBwbGF0Zm9ybSByZXNldCwgLi4uLCBv
ciBhbnkgb3RoZXIgdHJhbnNpdGlvbiB3aGVyZSB0aGUgcGluIHN0YXRlIG1pZ2h0Cj4gPiA+ID4g
PiA+IGJlIHVuZGVmaW5lZCBhdCBzb21lIHBvaW50KS4gVGhpcyBiZWluZyBzYWlkLCBpZiB5b3Un
cmUgd29ycmllZCBhYm91dAo+ID4gPiA+ID4gPiBvdGhlciBzb3VyY2VzIG9mIHNwdXJpb3VzIGNt
ZHMgKHNheSB5b3VyIGJ1cyBpcyBzaGFyZWQgYmV0d2Vlbgo+ID4gPiA+ID4gPiBkaWZmZXJlbnQg
a2luZCBvZiBtZW1vcnkgZGV2aWNlcywgYW5kIHRoZSBDUyBwaW4gaXMgdW5yZWxpYWJsZSksIHlv
dQo+ID4gPiA+ID4gPiBtaWdodCB3YW50IHRvIGxlYXZlIHRoZSBOQU5EIGluIGEgd3JpdGUtcHJv
dGVjdGVkIHN0YXRlIGRlLWFzc2VydGluZyBXUAo+ID4gPiA+ID4gPiBvbmx5IHdoZW4gZXhwbGlj
aXRseSBpc3N1aW5nIGEgZGVzdHJ1Y3RpdmUgY29tbWFuZCAocHJvZ3JhbSBwYWdlLCBlcmFzZQo+
ID4gPiA+ID4gPiBibG9jaykuICAgICAgCj4gPiA+ID4gPgo+ID4gPiA+ID4gT2sgc28gd2l0aCB0
aGlzIGluIG1pbmQsIG9ubHkgdGhlIGJyY21uYW5kIGRyaXZlciBkb2VzIGEgdXNlZnVsIHVzZSBv
Zgo+ID4gPiA+ID4gdGhlIFdQIG91dHB1dC4gICAgICAKPiA+ID4gPgo+ID4gPiA+IFdlbGwsIEkn
ZCBqdXN0IHNheSB0aGF0IGJyY21uYW5kIGlzIG1vcmUgcGFyYW5vaWQsIHdoaWNoIGlzIGEgZ29v
ZAo+ID4gPiA+IHRoaW5nIEkgZ3Vlc3MsIGJ1dCB0aGF0IGRvZXNuJ3QgbWFrZSBvdGhlciBzb2x1
dGlvbnMgdXNlbGVzcywganVzdCBsZXNzCj4gPiA+ID4gc2FmZS4gV2UgY291bGQgcHJvYmFibHkg
ZmxhZyBvcGVyYXRpb25zIGFzICdkZXN0cnVjdGl2ZScgYXQgdGhlCj4gPiA+ID4gbmFuZF9vcGVy
YXRpb24gbGV2ZWwsIHNvIGRyaXZlcnMgY2FuIGFzc2VydC9kZS1hc3NlcnQgdGhlIHBpbiBvbiBh
Cj4gPiA+ID4gcGVyLW9wZXJhdGlvbiBiYXNpcy4gICAgICAKPiA+ID4gCj4gPiA+IFNvdW5kcyBh
IGdvb2QgaWRlYS4KPiA+ID4gCj4gPiA+IElmIGl0IGlzIHN1cHBvcnRlZCBpbiB0aGUgTkFORCBm
cmFtZXdvcmssCj4gPiA+IEkgd2lsbCBiZSBoYXBweSB0byBpbXBsZW1lbnQgaW4gdGhlIERlbmFs
aSBOQU5EIGRyaXZlci4KPiA+ID4gICAgIAo+ID4gCj4gPiBUaGVyZSBpcyBjdXJyZW50bHkgbm8g
c3VjaCB0aGluZyBhdCBOQU5EIGxldmVsIGJ1dCBJIGRvdWJ0IHRoZXJlIGlzCj4gPiBtb3JlIHRo
YW4gZXJhc2UgYW5kIHdyaXRlIG9wZXJhdGlvbiBkdXJpbmcgd2hpY2ggaXQgd291bGQgYmUgbmVl
ZGVkCj4gPiB0byBhc3NlcnQvZGVhc3NlcnQgV1AuIEkgZG9uJ3Qgc2VlIHdoeSBoYXZpbmcgdGhp
cyBmbGFnIHdvdWxkIGhlbHAKPiA+IHRoZSBjb250cm9sbGVyIGRyaXZlcnM/ICAKPiAKPiBCZWNh
dXNlIC0+ZXhlY19vcCgpIHdhcyBkZXNpZ25lZCB0byBhdm9pZCBsZWF2aW5nIHN1Y2ggZGVjaXNp
b25zIHRvIHRoZQo+IE5BTkQgY29udHJvbGxlciBkcml2ZXJzIDpQLiBJZiB5b3Ugbm93IGFzayBk
cml2ZXJzIHRvIGxvb2sgYXQgdGhlCj4gb3Bjb2RlIGFuZCBndWVzcyB3aGVuIHRoZXkgc2hvdWxk
IGRlLWFzc2VydCB0aGUgV1AgcGluLCB5b3UncmUganVzdAo+IGdvaW5nIGJhY2sgdG8gdGhlIC0+
Y21kZnVuYygpIG1lc3MuCgpJIHdhcyBhY3R1YWxseSB0aGlua2luZyB0byB0aGUgLT53cml0ZV9w
YWdlKF9yYXcpKCkgaGVscGVycywgYnV0CnllYWgsIGluIHRoZSBjYXNlIG9mIC0+ZXhlY19vcCgp
IGl0J3MgZGlmZmVyZW50LiBIb3dldmVyLCBmb3IgdGhlc2UKaGVscGVycyBhcyBkb24ndCB1c2Ug
LT5leGVjX29wKCksIHdlIG5lZWQgYW5vdGhlciB3YXkgdG8gZmxhZyB0aGUKb3BlcmF0aW9uIGFz
IGRlc3RydWN0aXZlLgoKQnV0IGFjdHVhbGx5IHdlIGNvdWxkIGxldCB0aGUgZHJpdmVyIHRvZ2ds
ZSB0aGUgcGluIGZvciBhbnkgb3BlcmF0aW9uLgpJZiB3ZSB3YW50IHRvIGJlIHByb3RlY3RlZCBh
Z2FpbnN0IHNwdXJpb3VzIGFjY2Vzcywgbm90IGRpcmVjdGx5IG9yZGVyZWQKYnkgdGhlIGNvbnRy
b2xsZXIgZHJpdmVyIGl0c2VsZiwgdGhlbiB3ZSBkb24ndCBjYXJlIGlmIHRoZSBvcGVyYXRpb24g
aXMKYWN0dWFsbHkgZGVzdHJ1Y3RpdmUgb3Igbm90IGFzIGxvbmcgYXMgdGhlIHBpbiBpcyBkZWFz
c2VydGVkIGR1cmluZyBvdXIKb3BlcmF0aW9ucyBhbmQgYXNzZXJ0ZWQgb3RoZXJ3aXNlLgoKTWlx
dcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
