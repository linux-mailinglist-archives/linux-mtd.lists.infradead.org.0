Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E3178BA1
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 14:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uCzLARo1hIz2QzByZ7TUBiwtMn8PeGrrDHZvR2lXXhY=; b=B84JX0PbbKDOH9lAddxHkn5Zc
	2cc9mo6Z4xZ8O1Np/oBTQ8wAZT5wb6FkstGUD17CRwCKi+eXbLfN0yvosr9mp3y314iQolBPi2Vlm
	lDHia7cAYMDD7GoG5TFEpr6gKUPoqKQyPrcTcPRWwgpTMPeHFIYVVXcHj4r1/2XeJpAEJ6jgLfduu
	zesGsNRfUBpuaU/P4z+12O8aX2nvEp1DVCH3/56/pQI+os01ew34qRUbGmgirkuOyIRN4chPrDjNI
	/MBUnp0KqGEb+REciPEKkEww7Nc+YHK31VQLj0i1fh1afglhj2b+A/8E82RzyynRA2iugPaaGadn5
	3QeCH6ZBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4cd-0001uj-Bt; Mon, 29 Jul 2019 12:19:23 +0000
Received: from icp-osb-irony-out6.external.iinet.net.au ([203.59.1.106])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4cP-0001dH-Go
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 12:19:12 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ACAACZ4z5d/zXSMGcNWRkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgVUCAQEBAQELAYMDgS6EHpFlAQEBAQEGgQkIJYNkhX6?=
 =?us-ascii?q?PHxSBZwkBAQEBAQEBAQEtCgEBhEACgw42Bw4BAwEBAQQBAQEBBQGFUjmFVgE?=
 =?us-ascii?q?BAQECASMECwEFQQULCw0LAgImAgJXBgEMBgIBAReDBwGBdgUeqxFxfzMahS6?=
 =?us-ascii?q?DLoFCBoEMKAGBYoMPhwV4gQeBEScMgl8+hBEBEgGDKoJYBIw7njwJghyGW40?=
 =?us-ascii?q?zBhuCLoclg3oDij6NO4dKkgsIgRBxMxoIKAiDJ4JLAxeDToplYAGMJ4JDAQE?=
X-IPAS-Result: =?us-ascii?q?A2ACAACZ4z5d/zXSMGcNWRkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgVUCAQEBAQELAYMDgS6EHpFlAQEBAQEGgQkIJYNkhX6PHxSBZwkBAQEBA?=
 =?us-ascii?q?QEBAQEtCgEBhEACgw42Bw4BAwEBAQQBAQEBBQGFUjmFVgEBAQECASMECwEFQ?=
 =?us-ascii?q?QULCw0LAgImAgJXBgEMBgIBAReDBwGBdgUeqxFxfzMahS6DLoFCBoEMKAGBY?=
 =?us-ascii?q?oMPhwV4gQeBEScMgl8+hBEBEgGDKoJYBIw7njwJghyGW40zBhuCLoclg3oDi?=
 =?us-ascii?q?j6NO4dKkgsIgRBxMxoIKAiDJ4JLAxeDToplYAGMJ4JDAQE?=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="178702336"
Received: from unknown (HELO [10.44.0.193]) ([103.48.210.53])
 by icp-osb-irony-out6.iinet.net.au with ESMTP; 29 Jul 2019 20:18:57 +0800
Subject: Re: GPMI iMX6ull timeout on DMA
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
References: <89ae32a0-9b19-4735-90eb-4ffa22aad704@kernel.org>
 <20190729103655.095297a2@xps13>
 <CAOf5uwk+iWmEk07b+RW3W1b1c0vjfhZVJwKpV_LZJofLNtBsug@mail.gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <ec14d017-1274-c7ea-f0b2-6c20dc07360e@kernel.org>
Date: Mon, 29 Jul 2019 22:18:36 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOf5uwk+iWmEk07b+RW3W1b1c0vjfhZVJwKpV_LZJofLNtBsug@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_051910_102953_AB1FF5BA 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.106 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: s.hauer@pengutronix.de, linux-mtd@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWljaGFlbCwKCk9uIDI5LzcvMTkgNjo0MiBwbSwgTWljaGFlbCBOYXp6YXJlbm8gVHJpbWFy
Y2hpIHdyb3RlOgo+IEhpIGFsbAo+IAo+IE9uIE1vbiwgSnVsIDI5LCAyMDE5IGF0IDEwOjM2IEFN
IE1pcXVlbCBSYXluYWwKPiA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4+Cj4+
IEhpIEdyZWcsCj4+Cj4+IE9uZSBxdWVzdGlvbiBiZWxvdy4KPj4KPj4gK01pY2hhZWwKPj4gK1Nh
c2NoYQo+Pgo+PiBIZWxsbyBNaWNoYWVsLCBoZXJlIGlzIGEgc2ltaWxhciBpc3N1ZSB0byB5b3Vy
cywgSSBrbm93IHlvdSBkaWQgbm90Cj4+IGhhdmUgZW5vdWdoIHRpbWUgdG8gc2hhcmUgeW91ciBz
b2x1dGlvbiBidXQgaGVyZSB3ZSBoYXZlIHNvbWVvbmUgZWxzZQo+PiByZXByb2R1Y2luZyB0aGUg
aXNzdWUsIHdvdWxkIHlvdSBtaW5kIHNoYXJpbmcgYSBicmFuY2ggb3IgYSBwYXRjaCwgZXZlbgo+
PiBhIFdJUCBvbmUsIGp1c3QgdG8gaGVscCBkZWJ1Z2dpbmc/Cj4+Cj4gCj4gSSBoYXZlIHBhdGNo
ZXMgcmV2ZXJ0ZWQgYXMgSSBtZW50aW9uIGluIHRoZSBlbWFpbC4gVGhlIHN0ZXAgdG8KPiByZXBy
b2R1Y2UgaXMgc2ltcGxlLgo+IAo+IEp1c3QgcmVib290IGV2ZXJ5IHN1Y2Nlc3NmdWwgYm9vdC4K
ClRlc3RpbmcgbGlrZSB0aGlzIGhvdyBvZnRlbiBkb2VzIGl0IG9jY3VyPwoKUmVnYXJkcwpHcmVn
CgoKPiBNaWNoYWVsCj4gCj4+IEdyZWcgVW5nZXJlciA8Z2VyZ0BrZXJuZWwub3JnPiB3cm90ZSBv
biBNb24sIDI5IEp1bCAyMDE5IDE2OjQxOjUxICsxMDAwOgo+Pgo+Pj4gSGkgTWlxdWVsLAo+Pj4K
Pj4+IEkgYW0gZXhwZXJpZW5jaW5nIGEgcHJvYmxlbSB3aXRoIE5BTkQgZmxhc2ggRE1BIHRpbWVv
dXRzIG9uCj4+PiBpTVg2dWxsIGJhc2VkIGJvYXJkcy4gVGhlIHByb2JsZW0gaXMgdmVyeSBzaW1p
bGFyIHRvIHRoYXQKPj4+IGRlc2NyaWJlZCBpbjoKPj4+Cj4+PiAgICAgaHR0cHM6Ly9saW51eC1t
dGQuaW5mcmFkZWFkLm5hcmtpdmUuY29tL0pJVXVsZkZCL2dwbWktaW14NnVsbC10aW1lb3V0LW9u
LWRtYQo+Pj4KPj4+IFRoYXQgZGlkbid0IGNvbWUgdG8gYW55IHNwZWNpZmljIHJlc29sdXRpb24g
dGhhdCBJIGNvdWxkIHNlZQo+Pj4gaW4gdGhhdCB0aHJlYWQuCj4+Pgo+Pj4gVGhlIGJvb3QgdHJh
Y2Ugb24gdGhlIGNvbnNvbGUgZm9yIG1lIGxvb2tzIGxpa2UgdGhpczoKPj4+Cj4+PiBuYW5kOiBk
ZXZpY2UgZm91bmQsIE1hbnVmYWN0dXJlciBJRDogMHgyYywgQ2hpcCBJRDogMHhkYQo+Pj4gbmFu
ZDogTWljcm9uIE1UMjlGMkcwOEFCQUVBV1AKPj4+IG5hbmQ6IDI1NiBNaUIsIFNMQywgZXJhc2Ug
c2l6ZTogMTI4IEtpQiwgcGFnZSBzaXplOiAyMDQ4LCBPT0Igc2l6ZTogNjQKPj4+IGdwbWktbmFu
ZCAxODA2MDAwLmdwbWktbmFuZDogRE1BIHRpbWVvdXQsIGxhc3QgRE1BCj4+PiBncG1pLW5hbmQg
MTgwNjAwMC5ncG1pLW5hbmQ6IFNob3cgR1BNSSByZWdpc3RlcnMgOgo+Pj4gZ3BtaS1uYW5kIDE4
MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQgMHgwMDAgOiAweDIwODMwMDAyCj4+PiBncG1pLW5hbmQg
MTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNldCAweDAxMCA6IDB4MDAwMDAwMDAKPj4+IGdwbWktbmFu
ZCAxODA2MDAwLmdwbWktbmFuZDogb2Zmc2V0IDB4MDIwIDogMHgwMDAwMDAwMAo+Pj4gZ3BtaS1u
YW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQgMHgwMzAgOiAweDAwMDAwMDAwCj4+PiBncG1p
LW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNldCAweDA0MCA6IDB4MDAwMDAwMDAKPj4+IGdw
bWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogb2Zmc2V0IDB4MDUwIDogMHgwMDAwMDAwMAo+Pj4g
Z3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQgMHgwNjAgOiAweDAxYzY4MDBjCj4+
PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNldCAweDA3MCA6IDB4MDAwMTAxMDEK
Pj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogb2Zmc2V0IDB4MDgwIDogMHhlMDAwMDAw
MAo+Pj4gZ3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQgMHgwOTAgOiAweDIzMDIz
MzM2Cj4+PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNldCAweDBhMCA6IDB4MDAw
MDAxZWUKPj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogb2Zmc2V0IDB4MGIwIDogMHhm
ZjAwMDAwMQo+Pj4gZ3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQgMHgwYzAgOiAw
eDAwMDAwMDAxCj4+PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNldCAweDBkMCA6
IDB4MDUwMjAwMDAKPj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogU2hvdyBCQ0ggcmVn
aXN0ZXJzIDoKPj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogb2Zmc2V0IDB4MDAwIDog
MHgwMDAwMDEwMAo+Pj4gZ3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQgMHgwMTAg
OiAweDAwMDAwMDEwCj4+PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNldCAweDAy
MCA6IDB4MDAwMDAwMDAKPj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogb2Zmc2V0IDB4
MDMwIDogMHgwMDAwMDAwMAo+Pj4gZ3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQg
MHgwNDAgOiAweDAwMDAwMDAwCj4+PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNl
dCAweDA1MCA6IDB4MDAwMDAwMDAKPj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogb2Zm
c2V0IDB4MDYwIDogMHgwMDAwMDAwMAo+Pj4gZ3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBv
ZmZzZXQgMHgwNzAgOiAweDAwMDAwMDAwCj4+PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6
IG9mZnNldCAweDA4MCA6IDB4MDMwYTIwODAKPj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFu
ZDogb2Zmc2V0IDB4MDkwIDogMHgwODNlMjA4MAo+Pj4gZ3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1u
YW5kOiBvZmZzZXQgMHgwYTAgOiAweDA3MGE0MDgwCj4+PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1p
LW5hbmQ6IG9mZnNldCAweDBiMCA6IDB4MTBkYTQwODAKPj4+IGdwbWktbmFuZCAxODA2MDAwLmdw
bWktbmFuZDogb2Zmc2V0IDB4MGMwIDogMHgwNzBhNDA4MAo+Pj4gZ3BtaS1uYW5kIDE4MDYwMDAu
Z3BtaS1uYW5kOiBvZmZzZXQgMHgwZDAgOiAweDEwZGE0MDgwCj4+PiBncG1pLW5hbmQgMTgwNjAw
MC5ncG1pLW5hbmQ6IG9mZnNldCAweDBlMCA6IDB4MDcwYTQwODAKPj4+IGdwbWktbmFuZCAxODA2
MDAwLmdwbWktbmFuZDogb2Zmc2V0IDB4MGYwIDogMHgxMGRhNDA4MAo+Pj4gZ3BtaS1uYW5kIDE4
MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQgMHgxMDAgOiAweDAwMDAwMDAwCj4+PiBncG1pLW5hbmQg
MTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNldCAweDExMCA6IDB4MDAwMDAwMDAKPj4+IGdwbWktbmFu
ZCAxODA2MDAwLmdwbWktbmFuZDogb2Zmc2V0IDB4MTIwIDogMHgwMDAwMDAwMAo+Pj4gZ3BtaS1u
YW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQgMHgxMzAgOiAweDAwMDAwMDAwCj4+PiBncG1p
LW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNldCAweDE0MCA6IDB4MDAwMDAwMDAKPj4+IGdw
bWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogb2Zmc2V0IDB4MTUwIDogMHgyMDQ4NDM0Mgo+Pj4g
Z3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBvZmZzZXQgMHgxNjAgOiAweDAxMDAwMDAwCj4+
PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IG9mZnNldCAweDE3MCA6IDB4MDAwMDAwMDAK
Pj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogQkNIIEdlb21ldHJ5IDoKPj4+IEdGIGxl
bmd0aCAgICAgICAgICAgICAgOiAxMwo+Pj4gRUNDIFN0cmVuZ3RoICAgICAgICAgICA6IDgKPj4+
IFBhZ2UgU2l6ZSBpbiBCeXRlcyAgICAgOiAyMTEwCj4+PiBNZXRhZGF0YSBTaXplIGluIEJ5dGVz
IDogMTAKPj4+IEVDQyBDaHVuazAgU2l6ZSBpbiBCeXRlczogNTEyCj4+PiBFQ0MgQ2h1bmtuIFNp
emUgaW4gQnl0ZXM6IDUxMgo+Pj4gRUNDIENodW5rIENvdW50ICAgICAgICA6IDQKPj4+IFBheWxv
YWQgU2l6ZSBpbiBCeXRlcyAgOiAyMDQ4Cj4+PiBBdXhpbGlhcnkgU2l6ZSBpbiBCeXRlczogMTYK
Pj4+IEF1eGlsaWFyeSBTdGF0dXMgT2Zmc2V0OiAxMgo+Pj4gQmxvY2sgTWFyayBCeXRlIE9mZnNl
dCA6IDE5OTkKPj4+IEJsb2NrIE1hcmsgQml0IE9mZnNldCAgOiAwCj4+PiBncG1pLW5hbmQgMTgw
NjAwMC5ncG1pLW5hbmQ6IENoaXA6IDAsIEVycm9yIC0xMTAKPj4+IG5hbmQ6IHRpbWluZyBtb2Rl
IDUgbm90IGFja25vd2xlZGdlZCBieSB0aGUgTkFORCBjaGlwCj4+Cj4+IFdoYXQgaXMgdGhlIGZp
bmFsIHRpbWluZyBtb2RlIHVzZWQ/IE1vc3Qgb2YgdXMgdGVzdGVkIGluIG1vZGUgNSBJCj4+IGd1
ZXNzLCBtYXliZSBtb2RlIDQgaXMgYnJva2VuIChkb24ndCBrbm93IGlmIHRoaXMgaXMgdGhlIG9u
ZSB1c2VkIGhlcmUsCj4+IG5laXRoZXIgd2h5IG1vZGUgNSBpcyByZWZ1c2VkKS4gQ2FuIHlvdSBw
bGVhc2UgdHJ5IGJ5IGxpbWl0aW5nIHRoZSBtb2RlCj4+IHRvIDAsIDEsIDIuLi4gdW50aWwsIGhv
cGVmdWxseSwgd2UgbmFycm93IGRvd24gdG8gdGhlIGZhaWxpbmcgbW9kZS4KPj4KPj4+IGdwbWkt
bmFuZCAxODA2MDAwLmdwbWktbmFuZDogQ2hpcDogMCwgRXJyb3IgLTIyCj4+PiBTY2FubmluZyBk
ZXZpY2UgZm9yIGJhZCBibG9ja3MKPj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogQ2hp
cDogMCwgRXJyb3IgLTIyCj4+PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IENoaXA6IDAs
IEVycm9yIC0yMgo+Pj4gZ3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBDaGlwOiAwLCBFcnJv
ciAtMjIKPj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogQ2hpcDogMCwgRXJyb3IgLTIy
Cj4+PiAuLi4uCj4+PiBncG1pLW5hbmQgMTgwNjAwMC5ncG1pLW5hbmQ6IENoaXA6IDAsIEVycm9y
IC0yMgo+Pj4gZ3BtaS1uYW5kIDE4MDYwMDAuZ3BtaS1uYW5kOiBDaGlwOiAwLCBFcnJvciAtMjIK
Pj4+IGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogQ2hpcDogMCwgRXJyb3IgLTIyCj4+PiA1
IGZpeGVkLXBhcnRpdGlvbnMgcGFydGl0aW9ucyBmb3VuZCBvbiBNVEQgZGV2aWNlIGdwbWktbmFu
ZAo+Pj4gQ3JlYXRpbmcgNSBNVEQgcGFydGl0aW9ucyBvbiAiZ3BtaS1uYW5kIjoKPj4+IDB4MDAw
MDAwMDAwMDAwLTB4MDAwMDAwNTAwMDAwIDogInUtYm9vdCIKPj4+IDB4MDAwMDAwNTAwMDAwLTB4
MDAwMDAwNjAwMDAwIDogInUtYm9vdC1lbnYiCj4+PiAweDAwMDAwMDYwMDAwMC0weDAwMDAwMDgw
MDAwMCA6ICJsb2ciCj4+PiAweDAwMDAwMDgwMDAwMC0weDAwMDAxMDAwMDAwMCA6ICJmbGFzaCIK
Pj4+IDB4MDAwMDAwMDAwMDAwLTB4MDAwMDEwMDAwMDAwIDogImFsbCIKPj4+IGdwbWktbmFuZCAx
ODA2MDAwLmdwbWktbmFuZDogZHJpdmVyIHJlZ2lzdGVyZWQuCj4+Pgo+Pj4KPj4+IFRoaXMgaXMg
dXNpbmcgYSBsaW51eCBrZXJuZWwgdjUuMS4xNC4gSSBoYXZlIHNlZW4gdGhpcyBoYXBwZW4gb24K
Pj4+IGEgbnVtYmVyIG9mIGJvYXJkcyBJIGhhdmUgaGVyZSAtIGJ1dCBpdCBpcyBvbmx5IG9jY2Fz
aW9uYWwuIEl0Cj4+PiBvbmx5IGhhcHBlbnMgb25jZSBpbiBhIHdoaWxlIG9uIGJvb3QsIG1heWJl
IDEgaW4gNDAgb3IgbW9yZSB0aW1lcy4KPj4+IFNvIGl0IGNhbiB0YWtlIHF1aXRlIGEgd2hpbGUg
dG8gcmVwcm9kdWNlICh1c2luZyBhIGJvb3QgbG9vcCBzZXR1cCkuCj4+Cj4+IFRoYXQncyBzdHJh
bmdlLi4uIEkgZG9uJ3QgZ2V0IHdoYXQgd291bGQgcHJvZHVjZSBzdWNoIHVuc3RhYmxlIGlzc3Vl
Lgo+Pgo+Pj4KPj4+IEFzIHBlciB0aGUgZW1haWwgdGhyZWFkIEkgcG9pbnRlZCB0byBhYm92ZSBJ
IGxvb2tlZCBhdCByZXZlcnRpbmcKPj4+IHRob3NlIHBhdGNoZXMsIGJ1dCB0aGF0IHdhcyBub3Qg
YXQgYWxsIGVhc3kgZ2l2ZW4gaG93IG11Y2ggdGhlIGdwbWkKPj4+IGRyaXZlciBjb2RlIGhhZCBt
b3ZlZC4gU28gaW5zdGVhZCBJIG1vZGlmaWVkIHRoZSBjb2RlIHdpdGggdGhpczoKPj4+Cj4+PiAt
LS0gYS9saW51eC9kcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1saWIuYwo+Pj4g
KysrIGIvbGludXgvZHJpdmVycy9tdGQvbmFuZC9yYXcvZ3BtaS1uYW5kL2dwbWktbGliLmMKPj4+
IEBAIC00ODEsNiArNDgxLDcgQEAgc3RhdGljIHZvaWQgZ3BtaV9uZmNfY29tcHV0ZV90aW1pbmdz
KHN0cnVjdCBncG1pX25hbmRfZGF0YSAqdGhpcywKPj4+ICAgICAgdm9pZCBncG1pX25mY19hcHBs
eV90aW1pbmdzKHN0cnVjdCBncG1pX25hbmRfZGF0YSAqdGhpcykKPj4+ICAgIHsKPj4+ICsjaWYg
MAo+Pj4gICAgICAgICAgIHN0cnVjdCBncG1pX25mY19oYXJkd2FyZV90aW1pbmcgKmh3ID0gJnRo
aXMtPmh3Owo+Pj4gICAgICAgICAgIHN0cnVjdCByZXNvdXJjZXMgKnIgPSAmdGhpcy0+cmVzb3Vy
Y2VzOwo+Pj4gICAgICAgICAgIHZvaWQgX19pb21lbSAqZ3BtaV9yZWdzID0gci0+Z3BtaV9yZWdz
Owo+Pj4gQEAgLTUwNSw2ICs1MTIsNyBAQCB2b2lkIGdwbWlfbmZjX2FwcGx5X3RpbWluZ3Moc3Ry
dWN0IGdwbWlfbmFuZF9kYXRhICp0aGlzKQo+Pj4gICAgICAgICAgICAgLyogV2FpdCBmb3IgdGhl
IERMTCB0byBzZXR0bGUuICovCj4+PiAgICAgICAgICAgdWRlbGF5KGRsbF93YWl0X3RpbWVfdXMp
Owo+Pj4gKyNlbmRpZgo+Pj4gICAgfQo+Pj4gICAgICBpbnQgZ3BtaV9zZXR1cF9kYXRhX2ludGVy
ZmFjZShzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLCBpbnQgY2hpcG5yLAo+Pj4KPj4+IFNvIGZhciBh
ZnRlciBhIGNvdXBsZSBvZiBkYXlzIG9mIHRlc3Rpbmcgd2l0aCB0aGlzIEkgbm8gbG9uZ2VyCj4+
PiBzZWUgdGhlIERNQSB0aW1lb3V0Lgo+Pj4KPj4+IEFueSB0aG91Z2h0cz8KPj4+Cj4+PiBSZWdh
cmRzCj4+PiBHcmVnCj4+Pgo+Pgo+PiBUaGFua3MsCj4+IE1pcXXDqGwKPiAKPiAKPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
