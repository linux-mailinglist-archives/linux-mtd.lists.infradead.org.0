Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56F7B8B47
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 08:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/+IZU7UiYWTW4y5brBqIw5xNrD3kTJhJ4iCKd+lEOTM=; b=R4QKVvOJlug83gcBxJpBB8Aeu
	hdgqIlK5SIP2tVUZHvWpf+Q6rXSVYKF08kEXMy1cLFMlU1FyPtXwgICN2R52M3GVPHPqiCTeNQxnr
	078SB1RY76lTE5Hh7FP6ZH0m7g2w5BktvckaU6WrYk/PeEd9StELwerz7R8xJAgPDqm5HBq87ZAs6
	rJKZn6Fnhle+BzBDipwx9D64RHpdMpENI2B6AioJYdH4XbG54VGkhWMg+bDB1L9ZEkbVUkdWZtXt6
	Ie1xNowoZ84IaFapkYW8KzXcrSIBPlDyIwsihYxaA6/1M0Ztilz8rbyOchoKtcPlJKCG0W5LmJiX3
	wa+Wxmq1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBCpC-00038n-73; Fri, 20 Sep 2019 06:55:26 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBCop-0001kQ-Ci
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 06:55:05 +0000
Received: from [192.168.100.95] (unknown [95.138.208.137])
 by first.geanix.com (Postfix) with ESMTPSA id F2D9868674;
 Fri, 20 Sep 2019 06:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1568962493; bh=Ji2NF3yrTXQa++7SSHWJ/2RbARzDLhiYXgO1QwrcxDc=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To;
 b=lhfmtyZfWP29KHPG1VhFhRsrlPET5f29FX0CmD+T85Oo2Pt6w9RTBV2APMNGFiJw6
 95Ol81GM/jpM/rGwCfZpwY+HQafqZCA+GTHBc7F7n0ai/WZrz1iHG4hXJmqbgAo7Ai
 Nx+g+/slJFPwaBPW0dL0DNRc8RqSuzfQmIDt58oFHWLU+rKE9XNbZtSpUg/yAMEAGa
 ZKme94gHWpwMNWMX+IiTOb7r0fiN35Q25Q1xaA1AWKNCtzYAc0yz1zI+6IPDjF1Sct
 ht5mDwBcAuEWdm3pLOHkJDe2NnKKXOYtAi5+7nInUKj6YOocwR2Ik3b8FyhXSJ5Hzj
 dxTUqNI+OO7ew==
Subject: Re: [Bug] mtd: rawnand: gpmi
From: Sean Nyekjaer <sean@geanix.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <6a333d0f-09b2-d0d1-a3a5-955b31b6291e@geanix.com>
 <20190910095515.yjg6zcoqrtwylyg3@pengutronix.de>
 <a0f518e3-2465-8e64-418b-cac27cde98de@geanix.com>
 <20190910104807.7r3x2crdhpcteomn@pengutronix.de>
 <b26d583f-454f-fbf1-280d-f1753cc13896@geanix.com>
 <20190910110833.5ngkqpgdps4y3t2v@pengutronix.de>
 <3a1a0bf1-4dd0-9be1-23bd-a2e1f2bc6783@geanix.com>
 <a4a68ef3-3f66-3e5e-b0d9-cf5d5e898b40@geanix.com>
 <20190919132719.3ca48967@xps13>
 <6c0a1fdb-45cc-87aa-d1fb-f07f7e21a4a5@geanix.com>
Message-ID: <d68f60e9-282a-55f1-332d-208ad50508d5@geanix.com>
Date: Fri, 20 Sep 2019 08:54:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <6c0a1fdb-45cc-87aa-d1fb-f07f7e21a4a5@geanix.com>
Content-Language: en-US-large
X-Spam-Status: No, score=-3.1 required=4.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLOCKED
 autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on b8b5098bc1bc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_235503_793624_DFDDE43E 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mkl@pengutronix.de, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin@geanix.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

CgpPbiAxOS8wOS8yMDE5IDE0LjE1LCBTZWFuIE55ZWtqYWVyIHdyb3RlOgo+IAo+Pj4gSGkgU2Fz
Y2hhCj4+Pgo+Pj4gUGxlYXNlIGxldCBtZSBrbm93IHdoZW4geW91IGhhdmUgc29tZSB0aW1lIHRv
IGxvb2sgaW50byB0aGlzIDotKQo+Pj4gSSBkb3Nlbid0IHNlZW0gcmlnaHQgdGhhdCBpdCB3cml0
ZXMgdGhlIGJidCBvbiBhIDQuMTkgc2VyaWVzIGtlcm5lbCAKPj4+IHR3aWNlCj4+Pgo+Pgo+PiBG
b3IgbWUgdGhlIGRpc3R1cmJpbmcgcGFydCBpczoKPj4KPj4+Pj4+IFvCoMKgwqAgNC4xNzU5MThd
IEJhZCBibG9jayB0YWJsZSBub3QgZm91bmQgZm9yIGNoaXAgMAo+Pj4+Pj4gW8KgwqDCoCA0LjE4
NDA1OV0gQmFkIGJsb2NrIHRhYmxlIG5vdCBmb3VuZCBmb3IgY2hpcCAwCj4+Cj4+IFdyaXRpbmcg
dGhlIEJCVCB0d2ljZSBpcyBleHBlY3RlZC4KPj4KPj4gVGhhbmtzLAo+PiBNaXF1w6hsCj4+Cj4g
Cj4gSGksCj4gCj4gVHJpZWQgdGhpczoKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFu
ZC9yYXcvbmFuZF9iYnQuYyAKPiBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmJ0LmMKPiBp
bmRleCAzOWRiMzUyZjg3NTcuLmIwMzM3ZjhhMGRhNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210
ZC9uYW5kL3Jhdy9uYW5kX2JidC5jCj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9i
YnQuYwo+IEBAIC0xMjAwLDYgKzEyMDAsOCBAQCBzdGF0aWMgaW50IG5hbmRfc2Nhbl9iYnQoc3Ry
dWN0IG10ZF9pbmZvICptdGQsIAo+IHN0cnVjdCBuYW5kX2JidF9kZXNjciAqYmQpCj4gIMKgwqDC
oMKgwqDCoMKgIGlmIChyZXMpCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3Rv
IGVycjsKPiAKPiArwqDCoMKgwqDCoMKgIHNlYXJjaF9yZWFkX2JidHMobXRkLCBidWYsIHRkLCBt
ZCk7Cj4gKwo+ICDCoMKgwqDCoMKgwqDCoCAvKiBQcmV2ZW50IHRoZSBiYnQgcmVnaW9ucyBmcm9t
IGVyYXNpbmcgLyB3cml0aW5nICovCj4gIMKgwqDCoMKgwqDCoMKgIG1hcmtfYmJ0X3JlZ2lvbiht
dGQsIHRkKTsKPiAgwqDCoMKgwqDCoMKgwqAgaWYgKG1kCj4gCj4gUmVzdWx0IGlzOgo+IAo+IFvC
oMKgwqAgMi4xOTE0MTJdIG5hbmQ6IGRldmljZSBmb3VuZCwgTWFudWZhY3R1cmVyIElEOiAweDk4
LCBDaGlwIElEOiAweGRjCj4gCj4gW8KgwqDCoCAyLjE5ODA5NV0gbmFuZDogVG9zaGliYSBOQU5E
IDUxMk1pQiAzLDNWIDgtYml0Cj4gW8KgwqDCoCAyLjIwMjg0OF0gbmFuZDogNTEyIE1pQiwgU0xD
LCBlcmFzZSBzaXplOiAyNTYgS2lCLCBwYWdlIHNpemU6IDQwOTYsIAo+IE9PQiBzaXplOiAxMjgK
PiBbwqDCoMKgIDIuMjE3MzM3XSBCYWQgYmxvY2sgdGFibGUgbm90IGZvdW5kIGZvciBjaGlwIDAK
PiAKPiBbwqDCoMKgIDIuMjI1NTM1XSBCYWQgYmxvY2sgdGFibGUgbm90IGZvdW5kIGZvciBjaGlw
IDAKPiAKPiBbwqDCoMKgIDIuMjMwNDc1XSBTY2FubmluZyBkZXZpY2UgZm9yIGJhZCBibG9ja3MK
PiAKPiBbwqDCoMKgIDIuNzQ5ODMyXSBCYWQgZXJhc2VibG9jayA3OTggYXQgMHgwMDAwMGM3ODAw
MDAKPiBbwqDCoMKgIDMuMjMwNzEyXSBCYWQgZXJhc2VibG9jayAxNTM2IGF0IDB4MDAwMDE4MDAw
MDAwCj4gW8KgwqDCoCAzLjIzNjI2M10gQmFkIGVyYXNlYmxvY2sgMTUzNyBhdCAweDAwMDAxODA0
MDAwMAo+IFvCoMKgwqAgMy41NzQxMjJdIEJhZCBibG9jayB0YWJsZSB3cml0dGVuIHRvIDB4MDAw
MDFmZmMwMDAwLCB2ZXJzaW9uIDB4MDEKPiBbwqDCoMKgIDMuNTg0ODc0XSBCYWQgYmxvY2sgdGFi
bGUgd3JpdHRlbiB0byAweDAwMDAxZmY4MDAwMCwgdmVyc2lvbiAweDAxCj4gW8KgwqDCoCAzLjU5
MjMwNl0gQmFkIGJsb2NrIHRhYmxlIGZvdW5kIGF0IHBhZ2UgMTMxMDA4LCB2ZXJzaW9uIDB4MDEK
PiAKPiBbwqDCoMKgIDMuNjAwMDU5XSBCYWQgYmxvY2sgdGFibGUgZm91bmQgYXQgcGFnZSAxMzA5
NDQsIHZlcnNpb24gMHgwMQo+IFvCoMKgwqAgMy42MDcxMjldIDMgZml4ZWQtcGFydGl0aW9ucyBw
YXJ0aXRpb25zIGZvdW5kIG9uIE1URCBkZXZpY2UgZ3BtaS1uYW5kCj4gW8KgwqDCoCAzLjYxNDEw
NV0gQ3JlYXRpbmcgMyBNVEQgcGFydGl0aW9ucyBvbiAiZ3BtaS1uYW5kIjoKPiBbwqDCoMKgIDMu
NjE5NTQwXSAweDAwMDAwMDAwMDAwMC0weDAwMDAwMDgwMDAwMCA6ICJib290Igo+IFvCoMKgwqAg
My42MzU0MzddIDB4MDAwMDAwODAwMDAwLTB4MDAwMDFjYTAwMDAwIDogInViaSIKPiBbwqDCoMKg
IDQuMDE4MTgzXSAweDAwMDAxY2EwMDAwMC0weDAwMDAyMDAwMDAwMCA6ICJ0ZXN0aW5nIgo+IAo+
IFvCoMKgwqAgNC4wNzA3MzRdIGdwbWktbmFuZCAxODA2MDAwLmdwbWktbmFuZDogZHJpdmVyIHJl
Z2lzdGVyZWQuCj4gCj4gU2VlbXMgbGlrZSBpdCdzIFUtYm9vdCB0aGF0IGlzIGNvcnJ1cHRpbmcg
dGhlIHRhYmxlLgo+IAo+IEJ1dCBJIGRvbid0IHRoaW5rIGl0J3MgcmVsYXRlZCB0byB0aGUgb3Jp
Z2luYWwgaXNzdWUgd2l0aCBjb21taXQKPiBlZjM0N2MwY2ZkNjE5YTkyNTFlNWEyZjlmZjcyZTMz
NjUwYTliY2NiCj4gCj4gL1NlYW4KCkVuYWJsZWQgQkJUIGluIHVib290IDotKQoKWyAgICAyLjA4
OTU3Ml0gbmFuZDogZGV2aWNlIGZvdW5kLCBNYW51ZmFjdHVyZXIgSUQ6IDB4OTgsIENoaXAgSUQ6
IDB4ZGMKWyAgICAyLjA5NjA5OF0gbmFuZDogVG9zaGliYSBOQU5EIDUxMk1pQiAzLDNWIDgtYml0
ClsgICAgMi4xMDEwODhdIG5hbmQ6IDUxMiBNaUIsIFNMQywgZXJhc2Ugc2l6ZTogMjU2IEtpQiwg
cGFnZSBzaXplOiA0MDk2LCAKT09CIHNpemU6IDEyOApbICAgIDIuMTExNzA0XSBCYWQgYmxvY2sg
dGFibGUgZm91bmQgYXQgcGFnZSAxMzEwMDgsIHZlcnNpb24gMHgwMQpbICAgIDIuMTE4NTg5XSBC
YWQgYmxvY2sgdGFibGUgZm91bmQgYXQgcGFnZSAxMzA5NDQsIHZlcnNpb24gMHgwMQpbICAgIDIu
MTI0ODQ2XSBuYW5kX3JlYWRfYmJ0OiBiYWQgYmxvY2sgYXQgMHgwMDAwMGM3ODAwMDAKWyAgICAy
LjEzMDI3OV0gbmFuZF9yZWFkX2JidDogYmFkIGJsb2NrIGF0IDB4MDAwMDE4MDAwMDAwClsgICAg
Mi4xMzU1MTddIG5hbmRfcmVhZF9iYnQ6IGJhZCBibG9jayBhdCAweDAwMDAxODA0MDAwMApbICAg
IDIuMTQyMDgxXSAzIGZpeGVkLXBhcnRpdGlvbnMgcGFydGl0aW9ucyBmb3VuZCBvbiBNVEQgZGV2
aWNlIGdwbWktbmFuZAoKQnV0IG15IGd1dCBmZWVsaW5nIHdhcyByaWdodCwgd2Ugc3RpbGwgaGF2
ZSB0aGUgaXNzdWU6CgpbICAzMDQuMTkyMzExXSBVQklGUyBlcnJvciAodWJpMDo4IHBpZCAyNjQp
OiB1Ymlmc19yZWFkX25vZGU6IGJhZCBub2RlIAp0eXBlICgwIGJ1dCBleHBlY3RlZCA5KSAKIAog
CgpbICAzMDQuMjAxMjc5XSBVQklGUyBlcnJvciAodWJpMDo4IHBpZCAyNjQpOiB1Ymlmc19yZWFk
X25vZGU6IGJhZCBub2RlIAphdCBMRUIgNzA6MTQxMDE2LCBMRUIgbWFwcGluZyBzdGF0dXMgMSAK
IAogCgpbICAzMDQuMjExMTQxXSBOb3QgYSBub2RlLCBmaXJzdCAyNCBieXRlczogCiAKClsgIDMw
NC4yMTExNjNdIDAwMDAwMDAwOiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiA2MiAy
YiAwNyAwMCAwMCAKMDAgMDAgMDAgNmMgMDAgMDAgMDAgMDkgCi4uLi4uLi4uLi4uYisuLi4uLi5s
Li4uLiAKIAoKWyAgMzA0LjIyODAzOF0gQ1BVOiAwIFBJRDogMjY0IENvbW06IHJtIE5vdCB0YWlu
dGVkIDUuMy4wICMxOTAgCiAKClsgIDMwNC4yMzM2NDRdIEhhcmR3YXJlIG5hbWU6IEZyZWVzY2Fs
ZSBpLk1YNiBVbHRyYWxpdGUgKERldmljZSBUcmVlKSAKIAoKWyAgMzA0LjIzOTg3OF0gWzxjMDEx
MTg0Yz5dICh1bndpbmRfYmFja3RyYWNlKSBmcm9tIFs8YzAxMGNjMjQ+XSAKKHNob3dfc3RhY2sr
MHgxMC8weDE0KSAKIAogCgpbICAzMDQuMjQ3NjYyXSBbPGMwMTBjYzI0Pl0gKHNob3dfc3RhY2sp
IGZyb20gWzxjMDg5NzY3ND5dIAooZHVtcF9zdGFjaysweGQ0LzB4MTA4KSAKIAogCgpbICAzMDQu
MjU1MDEwXSBbPGMwODk3Njc0Pl0gKGR1bXBfc3RhY2spIGZyb20gWzxjMDNjMTcxMD5dIAoodWJp
ZnNfcmVhZF9ub2RlKzB4MjJjLzB4MjY4KSAKIAogCgpbICAzMDQuMjYyODgzXSBbPGMwM2MxNzEw
Pl0gKHViaWZzX3JlYWRfbm9kZSkgZnJvbSBbPGMwM2RkM2EwPl0gCih1Ymlmc19sb2FkX3pub2Rl
KzB4ODAvMHg0NTQpIAogCiAKClsgIDMwNC4yNzExOTFdIFs8YzAzZGQzYTA+XSAodWJpZnNfbG9h
ZF96bm9kZSkgZnJvbSBbPGMwM2M0NjAwPl0gCih1Ymlmc19sb29rdXBfbGV2ZWwwKzB4ZDgvMHgy
MDgpIAogCiAKClsgIDMwNC4yNzk4NDRdIFs8YzAzYzQ2MDA+XSAodWJpZnNfbG9va3VwX2xldmVs
MCkgZnJvbSBbPGMwM2M2MDU4Pl0gCih1Ymlmc190bmNfbmV4dF9lbnQrMHg2MC8weDFjOCkgCiAK
IAoKWyAgMzA0LjI4ODY2OF0gWzxjMDNjNjA1OD5dICh1Ymlmc190bmNfbmV4dF9lbnQpIGZyb20g
WzxjMDNjZDE5OD5dIAoodWJpZnNfYWRkX29ycGhhbisweGMwLzB4ZjApIAogCiAKClsgIDMwNC4y
OTcxMzldIFs8YzAzY2QxOTg+XSAodWJpZnNfYWRkX29ycGhhbikgZnJvbSBbPGMwM2IzMDAwPl0g
Cih1Ymlmc19qbmxfdXBkYXRlKzB4MjA4LzB4NjcwKSAKIAogCgpbICAzMDQuMzA1NjE2XSBbPGMw
M2IzMDAwPl0gKHViaWZzX2pubF91cGRhdGUpIGZyb20gWzxjMDNiODdiND5dIAoodWJpZnNfdW5s
aW5rKzB4MWJjLzB4MmIwKSAKIAogCgpbICAzMDQuMzEzNzQ0XSBbPGMwM2I4N2I0Pl0gKHViaWZz
X3VubGluaykgZnJvbSBbPGMwMjk1NGIwPl0gCih2ZnNfdW5saW5rKzB4MTBjLzB4MjI0KSAKIAog
CgpbICAzMDQuMzIxMzQ5XSBbPGMwMjk1NGIwPl0gKHZmc191bmxpbmspIGZyb20gWzxjMDI5OTZl
MD5dIAooZG9fdW5saW5rYXQrMHgxODAvMHgyODApIAogCiAKClsgIDMwNC4zMjg4NjZdIFs8YzAy
OTk2ZTA+XSAoZG9fdW5saW5rYXQpIGZyb20gWzxjMDEwMTAwMD5dIAoocmV0X2Zhc3Rfc3lzY2Fs
bCsweDAvMHgyOCkgCiAKIAoKWyAgMzA0LjMzNjYzNV0gRXhjZXB0aW9uIHN0YWNrKDB4YzhjYTNm
YTggdG8gMHhjOGNhM2ZmMCkgCiAKClsgIDMwNC4zNDE3MTddIDNmYTA6ICAgICAgICAgICAgICAg
ICAgIGJlZTUyZjEzIDAwMDAwMDAwIGJlZTUyZjEzIAowMDAwMDAwMiAwMDAwMDAwMCAwMDAwODAw
MCAKIAogCgpbICAzMDQuMzQ5OTI1XSAzZmMwOiBiZWU1MmYxMyAwMDAwMDAwMCAwMDAwMDAwMCAw
MDAwMDAwYSBiZWU1MmUxNCAKMDAwMDAwMDAgYjZmNWFmYTQgMDAwODc2NjQgCiAKIAoKWyAgMzA0
LjM1ODEyN10gM2ZlMDogYjZlMzNlMTEgYmVlNTJiZmMgMDAwNjUyNWYgYjZlMzNlMTgKCi9TZWFu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
