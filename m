Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92FC848DA
	for <lists+linux-mtd@lfdr.de>; Wed,  7 Aug 2019 11:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wcl9zLoqDX+dDHvnM8Nm+dY0zJjeaHc/3sMOyU4Ll70=; b=sT7UXU3s8KJUjj
	DAF26NvBhpPJoz0qORas7qKutD1LPaL6h11zzD1S49OPSq9SmVQWuqoXQV+MR827qk92AXpHzbm5g
	W0c39YgX3orcS84P739l+wb2WUgUARjqzULUPbzjtv1vFyleERCv4yuJQW3yiUEKVmKtnPzeZEGaL
	v/l9ZoV41KrdKrlmhYZ+6ec0aSFczMNfJU4jtX81fc4j8ieqDYc7vOqIeDzHtc7GeWh++KPKT0u4R
	qeTA6ME5zbo2uqBG3ld5ZHmr5yR3PAr6xFvOpZIH01aydzDO4SotVfN1DlneRvEtVg7cEnyFvEn1n
	yJK6GGgJpAvx3I8534Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIZM-0002Ys-Tj; Wed, 07 Aug 2019 09:49:21 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIZ7-0002Th-Rz
 for linux-mtd@lists.infradead.org; Wed, 07 Aug 2019 09:49:10 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A879D24000B;
 Wed,  7 Aug 2019 09:48:56 +0000 (UTC)
Date: Wed, 7 Aug 2019 11:48:55 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: shiva.linuxworks@gmail.com
Subject: Re: [PATCH 4/8] mtd: spinand: enabled parameter page support
Message-ID: <20190807114855.35f26229@xps13>
In-Reply-To: <20190722055621.23526-5-sshivamurthy@micron.com>
References: <20190722055621.23526-1-sshivamurthy@micron.com>
 <20190722055621.23526-5-sshivamurthy@micron.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_024906_224633_887224F7 
X-CRM114-Status: GOOD (  31.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chuanhong Guo <gch981213@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 liaoweixiong <liaoweixiong@allwinnertech.com>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Jeff Kletsky <git-commits@allycomm.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Shivamurthy Shastri <sshivamurthy@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2hpdmEsCgpzaGl2YS5saW51eHdvcmtzQGdtYWlsLmNvbSB3cm90ZSBvbiBNb24sIDIyIEp1
bCAyMDE5IDA3OjU2OjE3ICswMjAwOgoKIm10ZDogc3BpbmFuZDogZW5hYmxlIHBhcmFtZXRlciBw
YWdlIHN1cHBvcnQiCgo+IEZyb206IFNoaXZhbXVydGh5IFNoYXN0cmkgPHNzaGl2YW11cnRoeUBt
aWNyb24uY29tPgo+IAo+IFNvbWUgb2YgdGhlIFNQSSBOQU5EIGRldmljZXMgaGFzIHBhcmFtZXRl
ciBwYWdlLCB3aGljaCBpcyBzaW1pbGFyIHRvCiAgICAgICAgICAgICAgICAgLSAgICAgICAgICAg
ICBoYXZlIGEKPiBPTkZJIHRhYmxlLgogIHJlZ3VsYXIgcmF3IE5BTkQgT05GSSB0YWJsZXMuCgo+
IAo+IEJ1dCwgaXQgbWF5IG5vdCBiZSBzZWxmIHN1ZmZpY2llbnQgdG8gcHJvcGFnYXRlIGFsbCB0
aGUgcmVxdWlyZWQKICBBcyBpdCBtYXkgbm90IGJlCj4gcGFyYW1ldGVycy4gRml4dXAgZnVuY3Rp
b24gaGFzIGJlZW4gYWRkZWQgaW4gc3RydWN0IG1hbnVmYWN0dXJlciB0bwogICAgICAgICAgICAs
IGEgZml4dXAgICAgICAgIGlzIGJlaW5nIGFkZGVkIGluIHRoZSBtYW51ZmFjdHVyZXIgc3RydWN0
dXJlCj4gYWNjb21tb2RhdGUgdGhpcy4KClRoZSBmaXh1cCBmdW5jdGlvbiBzZW50ZW5jZSBzaG91
bGQgYmUgZHJvcHBlZCBmcm9tIHRoZSBjb21taXQgbWVzc2FnZSwKc2VlIGJlbG93LgoKPiAKPiBT
aWduZWQtb2ZmLWJ5OiBTaGl2YW11cnRoeSBTaGFzdHJpIDxzc2hpdmFtdXJ0aHlAbWljcm9uLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9tdGQvbmFuZC9zcGkvY29yZS5jIHwgMTM0ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L210ZC9zcGluYW5kLmgg
fCAgIDMgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEzNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvc3BpL2NvcmUuYyBiL2RyaXZlcnMvbXRkL25hbmQvc3Bp
L2NvcmUuYwo+IGluZGV4IDg5ZjZiZWVmYjAxYy4uN2FlNzZkYWI5MTQxIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbXRkL25hbmQvc3BpL2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvc3Bp
L2NvcmUuYwo+IEBAIC00MDAsNiArNDAwLDEzMSBAQCBzdGF0aWMgaW50IHNwaW5hbmRfbG9ja19i
bG9jayhzdHJ1Y3Qgc3BpbmFuZF9kZXZpY2UgKnNwaW5hbmQsIHU4IGxvY2spCj4gIAlyZXR1cm4g
c3BpbmFuZF93cml0ZV9yZWdfb3Aoc3BpbmFuZCwgUkVHX0JMT0NLX0xPQ0ssIGxvY2spOwo+ICB9
Cj4gIAo+ICsvKioKPiArICogc3BpbmFuZF9yZWFkX3BhcmFtX3BhZ2Vfb3AgLSBSZWFkIHBhcmFt
ZXRlciBwYWdlIG9wZXJhdGlvbgoKQWdhaW4sIHRoZSBuYW1lIGluIHRoZSBkb2MgZG9lcyBub3Qg
Zml0IHRoZSBmdW5jdGlvbiB5b3UgZGVzY3JpYmUKCj4gKyAqIEBzcGluYW5kOiB0aGUgc3BpbmFu
ZAogICAgICAgICAgICAgICAgICAgIFNQSS1OQU5EIGNoaXAKClNoaXZhLCB0aGVyZSBhcmUgd2F5
IHRvbyBtdWNoIHR5cG9zIGFuZCBzaG9ydGN1dHMgaW4geW91ciBzZXJpZXMuClBsZWFzZSBiZSBt
b3JlIGNhcmVmdWwgb3RoZXJ3aXNlIHdlIGNhbid0IGZvY3VzIG9uIHRoZSB0ZWNobmljYWwKYXNw
ZWN0cy4gSSBhbSBub3QgYSBuYXRpdmUgRW5nbGlzaCBzcGVha2VyIGF0IGFsbCBidXQgcGxlYXNl
LCBwbGFpbgpFbmdsaXNoIGlzIG5vdCBDIGNvZGUuIFdlIHRhbGsgU1BJLU5BTkQgYW5kIG5vdCBz
cGluYW5kLCB3ZSBzYXkKc3RydWN0dXJlIGFuZCBub3Qgc3RydWN0LCBhY3JvbnltcyBhcmUgdXBw
ZXJjYXNlLCBldGMuCgo+ICsgKiBAcGFnZTogcGFnZSBudW1iZXIgd2hlcmUgcGFyYW1ldGVyIHBh
Z2UgdGFibGVzIGNhbiBiZSBmb3VuZAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeIHRo
ZQo+ICsgKiBAYnVmOiBidWZmZXIgdXNlZCB0byBzdG9yZSB0aGUgcGFyYW1ldGVyIHBhZ2UKPiAr
ICogQGxlbjogbGVuZ3RoIG9mIHRoZSBidWZmZXIKPiArICoKPiArICogUmVhZCBwYXJhbWV0ZXIg
cGFnZQogICAgICAgICAgdGhlCj4gKyAqCj4gKyAqIFJldHVybnMgMCBvbiBzdWNjZXNzLCBhIG5l
Z2F0aXZlIGVycm9yIGNvZGUgb3RoZXJ3aXNlLgo+ICsgKi8KPiArc3RhdGljIGludCBzcGluYW5k
X3BhcmFtZXRlcl9wYWdlX3JlYWQoc3RydWN0IHNwaW5hbmRfZGV2aWNlICpzcGluYW5kLAo+ICsJ
CQkJICAgICAgIHU4IHBhZ2UsIHZvaWQgKmJ1ZiwgdW5zaWduZWQgaW50IGxlbikKPiArewo+ICsJ
c3RydWN0IHNwaV9tZW1fb3AgcHJlYWRfb3AgPSBTUElOQU5EX1BBR0VfUkVBRF9PUChwYWdlKTsK
PiArCXN0cnVjdCBzcGlfbWVtX29wIHByZWFkX2NhY2hlX29wID0KPiArCQkJCVNQSU5BTkRfUEFH
RV9SRUFEX0ZST01fQ0FDSEVfT1AoZmFsc2UsCj4gKwkJCQkJCQkJMCwKPiArCQkJCQkJCQkxLAo+
ICsJCQkJCQkJCWJ1ZiwKPiArCQkJCQkJCQlsZW4pOwoKVGhhdCdzIG9rIGlmIHlvdSBjcm9zcyB0
aGUgODAgY2hhcmFjdGVycyBib3VuZGFyeSBoZXJlLiBZb3UgbWF5IHB1dCAiMCwKMSwiIG9uIHRo
ZSBmaXJzdCBsaW5lIGFuZCAiYnVmLCBsZW4pOyIgb24gdGhlIHNlY29uZC4KCj4gKwl1OCBmZWF0
dXJlOwo+ICsJdTggc3RhdHVzOwo+ICsJaW50IHJldDsKPiArCj4gKwlpZiAobGVuICYmICFidWYp
Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJcmV0ID0gc3BpbmFuZF9yZWFkX3JlZ19vcChz
cGluYW5kLCBSRUdfQ0ZHLAo+ICsJCQkJICAmZmVhdHVyZSk7Cj4gKwlpZiAocmV0KQo+ICsJCXJl
dHVybiByZXQ7Cj4gKwo+ICsJLyogQ0ZHX09UUF9FTkFCTEUgaXMgdXNlZCB0byBlbmFibGUgcGFy
YW1ldGVyIHBhZ2UgYWNjZXNzICovCj4gKwlmZWF0dXJlIHw9IENGR19PVFBfRU5BQkxFOwo+ICsK
PiArCXNwaW5hbmRfd3JpdGVfcmVnX29wKHNwaW5hbmQsIFJFR19DRkcsIGZlYXR1cmUpOwo+ICsK
PiArCXJldCA9IHNwaV9tZW1fZXhlY19vcChzcGluYW5kLT5zcGltZW0sICZwcmVhZF9vcCk7Cj4g
KwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJcmV0ID0gc3BpbmFuZF93YWl0KHNw
aW5hbmQsICZzdGF0dXMpOwo+ICsJaWYgKHJldCA8IDApCj4gKwkJcmV0dXJuIHJldDsKPiArCj4g
KwlyZXQgPSBzcGlfbWVtX2V4ZWNfb3Aoc3BpbmFuZC0+c3BpbWVtLCAmcHJlYWRfY2FjaGVfb3Ap
Owo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCXJldCA9IHNwaW5hbmRfcmVh
ZF9yZWdfb3Aoc3BpbmFuZCwgUkVHX0NGRywKPiArCQkJCSAgJmZlYXR1cmUpOwo+ICsJaWYgKHJl
dCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCWZlYXR1cmUgJj0gfkNGR19PVFBfRU5BQkxFOwo+
ICsKPiArCXNwaW5hbmRfd3JpdGVfcmVnX29wKHNwaW5hbmQsIFJFR19DRkcsIGZlYXR1cmUpOwo+
ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwpBZGQgdGhlIGtlcm5lbCBkb2MgcGxlYXNlCgpDaGFu
Z2UgdGhlIGJlbG93IGZ1bmN0aW9uIHNvIHRoYXQgaXQgcmV0dXJucyAxIGlmIHRoZSBwYWdlIHdh
cwpkZXRlY3RlZCwgMCBpZiBpdCBkaWQgbm90LCBhbiBuZWdhdGl2ZSBlcnJvciBjb2RlIG90aGVy
d2lzZS4KCj4gK3N0YXRpYyBpbnQgc3BpbmFuZF9wYXJhbV9wYWdlX2RldGVjdChzdHJ1Y3Qgc3Bp
bmFuZF9kZXZpY2UgKnNwaW5hbmQpCj4gK3sKPiArCXN0cnVjdCBtdGRfaW5mbyAqbXRkID0gc3Bp
bmFuZF90b19tdGQoc3BpbmFuZCk7Cj4gKwlzdHJ1Y3QgbmFuZF9tZW1vcnlfb3JnYW5pemF0aW9u
ICptZW1vcmc7Cj4gKwlzdHJ1Y3QgbmFuZF9vbmZpX3BhcmFtcyAqcDsKPiArCXN0cnVjdCBuYW5k
X2RldmljZSAqYmFzZSA9IHNwaW5hbmRfdG9fbmFuZChzcGluYW5kKTsKPiArCWludCBpLCByZXQ7
Cj4gKwo+ICsJbWVtb3JnID0gbmFuZGRldl9nZXRfbWVtb3JnKGJhc2UpOwo+ICsKPiArCS8qIEFs
bG9jYXRlIGJ1ZmZlciB0byBob2xkIHBhcmFtZXRlciBwYWdlICovCj4gKwlwID0ga3phbGxvYygo
c2l6ZW9mKCpwKSAqIDMpLCBHRlBfS0VSTkVMKTsKPiArCWlmICghcCkKPiArCQlyZXR1cm4gLUVO
T01FTTsKPiArCj4gKwlyZXQgPSBzcGluYW5kX3BhcmFtZXRlcl9wYWdlX3JlYWQoc3BpbmFuZCwg
MHgwMSwgcCwgc2l6ZW9mKCpwKSAqIDMpOwo+ICsJaWYgKHJldCkgewo+ICsJCXJldCA9IDA7CgpO
bywgeW91IHNob3VsZCByZXR1cm4gdGhlIGVycm9yIGluIGNhc2Ugb2YgZXJyb3IuIFlvdSB3aWxs
IGxhdGVyIGhhbmRsZQp0aGUgZmFjdCB0aGF0IHRoZXJlIGlzIG5vIHBhcmFtZXRlciBwYWdlLgoK
PiArCQlnb3RvIGZyZWVfcGFyYW1fcGFnZTsKPiArCX0KPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwg
MzsgaSsrKSB7Cj4gKwkJaWYgKG9uZmlfY3JjMTYoT05GSV9DUkNfQkFTRSwgKHU4ICopJnBbaV0s
IDI1NCkgPT0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBeCklmIHlvdSBmb3JjZSB0aGUgcGFyYW1ldGVyIHBhZ2UgdG8gYmUgMjU0IGJ5
dGVzIGxvbmcgaXQgbWVhbnMgeW91IGxpbWl0CnlvdXJzZWxmIHRvIE9ORkkgc3RhbmRhcmQuIFRo
YXQncyBub3QgYSBwcm9ibGVtLCBidXQgdGhlbiB5b3Ugc2hvdWxkCm1lbnRpb24gaXQgaW4gdGhl
IGZ1bmN0aW9uIG5hbWUuCgo+ICsJCQkJbGUxNl90b19jcHUocC0+Y3JjKSkgewo+ICsJCQlpZiAo
aSkKPiArCQkJCW1lbWNweShwLCAmcFtpXSwgc2l6ZW9mKCpwKSk7Cj4gKwkJCWJyZWFrOwo+ICsJ
CX0KPiArCX0KPiArCj4gKwlpZiAoaSA9PSAzKSB7Cj4gKwkJY29uc3Qgdm9pZCAqc3JjYnVmc1sz
XSA9IHtwLCBwICsgMSwgcCArIDJ9Owo+ICsKPiArCQlwcl93YXJuKCJDb3VsZCBub3QgZmluZCBh
IHZhbGlkIE9ORkkgcGFyYW1ldGVyIHBhZ2UsIHRyeWluZyBiaXQtd2lzZSBtYWpvcml0eSB0byBy
ZWNvdmVyIGl0XG4iKTsKPiArCQluYW5kX2JpdF93aXNlX21ham9yaXR5KHNyY2J1ZnMsIEFSUkFZ
X1NJWkUoc3JjYnVmcyksIHAsCj4gKwkJCQkgICAgICAgc2l6ZW9mKCpwKSk7Cj4gKwo+ICsJCWlm
IChvbmZpX2NyYzE2KE9ORklfQ1JDX0JBU0UsICh1OCAqKXAsIDI1NCkgIT0KPiArCQkJCWxlMTZf
dG9fY3B1KHAtPmNyYykpIHsKPiArCQkJcHJfZXJyKCJPTkZJIHBhcmFtZXRlciByZWNvdmVyeSBm
YWlsZWQsIGFib3J0aW5nXG4iKTsKPiArCQkJZ290byBmcmVlX3BhcmFtX3BhZ2U7Cj4gKwkJfQo+
ICsJfQoKVGhlIHdob2xlIGZvci1sb29wIGFuZCB0aGUgaWYgKGk9PTMpIGNvbmRpdGlvbiBpcyBl
eGFjdGx5IHRoZSBzYW1lIGFzCmZvciByYXcgTkFORHMgYW5kIG11c3QgYmUgZXh0cmFjdGVkIGlu
IGEgZ2VuZXJpYyBmdW5jdGlvbjoKMS8gZXh0cmFjdCB0aGUgZnVuY3Rpb24gZnJvbSBuYW5kL3Jh
dy9uYW5kX29uZmkuYyBhbmQgcHV0IGl0IGluCm5hbmQvb25maS5jLgoyLyB0aGVuIHVzZSBpdCBp
biB0aGlzIHBhdGNoLgoKPiArCj4gKwlwYXJzZV9vbmZpX3BhcmFtcyhtZW1vcmcsIHApOwo+ICsK
PiArCW10ZC0+d3JpdGVzaXplID0gbWVtb3JnLT5wYWdlc2l6ZTsKPiArCW10ZC0+ZXJhc2VzaXpl
ID0gbWVtb3JnLT5wYWdlc19wZXJfZXJhc2VibG9jayAqIG1lbW9yZy0+cGFnZXNpemU7Cj4gKwlt
dGQtPm9vYnNpemUgPSBtZW1vcmctPm9vYnNpemU7CgpUaGlzIHdpbGwgYmUgaGFuZGxlZCBieSBu
YW5kZGV2X2luaXQsIHNob3VsZCBiZSByZW1vdmVkLgoKPiArCj4gKwkvKiBNYW51ZmFjdHVyZXJz
IG1heSBpbnRlcnByZXQgdGhlIHBhcmFtZXRlciBwYWdlIGRpZmZlcmVudGx5ICovCj4gKwlpZiAo
c3BpbmFuZC0+bWFudWZhY3R1cmVyLT5vcHMtPmZpeHVwX3BhcmFtX3BhZ2UpCj4gKwkJc3BpbmFu
ZC0+bWFudWZhY3R1cmVyLT5vcHMtPmZpeHVwX3BhcmFtX3BhZ2Uoc3BpbmFuZCwgcCk7CgpUaGUg
d2hvbGUgIm1hbnVmYWN0dXJlciBmaXh1cCIgc2hvdWxkIGJlIGRvbmUgc2VwYXJhdGVseS4KCj4g
Kwo+ICsJLyogSWRlbnRpZmljYXRpb24gZG9uZSwgZnJlZSB0aGUgZnVsbCBwYXJhbWV0ZXIgcGFn
ZSBhbmQgZXhpdCAqLwo+ICsJcmV0ID0gMTsKPiArCj4gK2ZyZWVfcGFyYW1fcGFnZToKPiArCWtm
cmVlKHApOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgc3BpbmFu
ZF9jaGVja19lY2Nfc3RhdHVzKHN0cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFuZCwgdTggc3Rh
dHVzKQo+ICB7Cj4gIAlzdHJ1Y3QgbmFuZF9kZXZpY2UgKm5hbmQgPSBzcGluYW5kX3RvX25hbmQo
c3BpbmFuZCk7Cj4gQEAgLTkxMSw2ICsxMDM2LDE1IEBAIHN0YXRpYyBpbnQgc3BpbmFuZF9kZXRl
Y3Qoc3RydWN0IHNwaW5hbmRfZGV2aWNlICpzcGluYW5kKQo+ICAJCXJldHVybiByZXQ7Cj4gIAl9
Cj4gIAo+ICsJaWYgKCFzcGluYW5kLT5iYXNlLm1lbW9yZy5wYWdlc2l6ZSkgewo+ICsJCXJldCA9
IHNwaW5hbmRfcGFyYW1fcGFnZV9kZXRlY3Qoc3BpbmFuZCk7Cj4gKwkJaWYgKHJldCA8PSAwKSB7
Cj4gKwkJCWRldl9lcnIoZGV2LCAibm8gcGFyYW1ldGVyIHBhZ2UgZm9yICUqcGhOXG4iLAoKTm90
IHN1cmUgYXQgdGhpcyBzdGFnZSBkZXYgd2lsbCBnaXZlIHNvbWV0aGluZyBtZWFuaW5nZnVsLiBB
bnl3YXkgSQpkb24ndCB0aGluayB3ZSBzaG91bGQgc2NyZWFtIGF0IHRoZSB1c2VyIGlmIGhpcyBO
QU5EIGlzIG5vdCBhbiBPTkZJIG9uZQpzbyBwbGVhc2UgcmV0dXJuIGFuIGVycm9yIG9ubHkgaWYg
cmV0IDwgMC4gSWYgcmV0ID09IDAgb3IgcmV0ID09IDEsCmRvbid0IHdhcm4gdGhlIHVzZXIuCgo+
ICsJCQkJU1BJTkFORF9NQVhfSURfTEVOLCBzcGluYW5kLT5pZC5kYXRhKTsKPiArCQkJcmV0dXJu
IC1FTk9ERVY7Cj4gKwkJfQo+ICsJfQo+ICsKPiAgCWlmIChuYW5kLT5tZW1vcmcubnRhcmdldHMg
PiAxICYmICFzcGluYW5kLT5zZWxlY3RfdGFyZ2V0KSB7Cj4gIAkJZGV2X2VycihkZXYsCj4gIAkJ
CSJTUEkgTkFORHMgd2l0aCBtb3JlIHRoYW4gb25lIGRpZSBtdXN0IGltcGxlbWVudCAtPnNlbGVj
dF90YXJnZXQoKVxuIik7Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbXRkL3NwaW5hbmQu
aCBiL2luY2x1ZGUvbGludXgvbXRkL3NwaW5hbmQuaAo+IGluZGV4IDRlYTU1OGJkM2M0Ni4uZmVh
ODIwYTIwYmM5IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvbXRkL3NwaW5hbmQuaAo+ICsr
KyBiL2luY2x1ZGUvbGludXgvbXRkL3NwaW5hbmQuaAo+IEBAIC0xNSw2ICsxNSw3IEBACj4gICNp
bmNsdWRlIDxsaW51eC9tdGQvbmFuZC5oPgo+ICAjaW5jbHVkZSA8bGludXgvc3BpL3NwaS5oPgo+
ICAjaW5jbHVkZSA8bGludXgvc3BpL3NwaS1tZW0uaD4KPiArI2luY2x1ZGUgPGxpbnV4L210ZC9v
bmZpLmg+Cj4gIAo+ICAvKioKPiAgICogU3RhbmRhcmQgU1BJIE5BTkQgZmxhc2ggb3BlcmF0aW9u
cwo+IEBAIC0yMDksNiArMjEwLDggQEAgc3RydWN0IHNwaW5hbmRfbWFudWZhY3R1cmVyX29wcyB7
Cj4gIAlpbnQgKCpkZXRlY3QpKHN0cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFuZCk7Cj4gIAlp
bnQgKCppbml0KShzdHJ1Y3Qgc3BpbmFuZF9kZXZpY2UgKnNwaW5hbmQpOwo+ICAJdm9pZCAoKmNs
ZWFudXApKHN0cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFuZCk7Cj4gKwl2b2lkICgqZml4dXBf
cGFyYW1fcGFnZSkoc3RydWN0IHNwaW5hbmRfZGV2aWNlICpzcGluYW5kLAo+ICsJCQkJIHN0cnVj
dCBuYW5kX29uZmlfcGFyYW1zICpwKTsKClBsZWFzZSBkbyB0aGlzIGluIGEgc2VwYXJhdGUgcGF0
Y2guCgo+ICB9Owo+ICAKPiAgLyoqCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lv
biBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1tdGQvCg==
