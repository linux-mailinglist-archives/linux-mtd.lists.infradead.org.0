Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6EF42C9A
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Jun 2019 18:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/wjbgv1yeex8II/DtrVROO1ravpUTmbrXM3fbWG8OE=; b=ly/kGEjYm+y6q2
	rcketO9nQNRx8HrovLQle/iXxupggxxWq4Fc5X86xlhpL6Z33Pp8i2xg7IfdCfB3tWxRmluGEPX8u
	QcReaAWPuhjSvsnSwjac8RUUIgSRB5gfd6V20PBK68KF4m4wBGSQSW4o1/WQV8z4NM0KU54tw3Nj5
	3cdwKGO6GYgF80yYFBeSX+2BNKnO5/+9qgZKlOb6alvjszAe72U0AeZIQ6P0Bd2pp3cH0xF+TFUwd
	8iWxtOtvBGb+o9h9JsFy05KiJYSvaf9lXrkMkIrDqydnp6ZhpyOsaOwmdTY+41syAvJQX8hFbL5UO
	zc6qXlYOKDvvRM9UY+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6Ow-0004bi-Fm; Wed, 12 Jun 2019 16:47:07 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6Of-0004b2-9v
 for linux-mtd@lists.infradead.org; Wed, 12 Jun 2019 16:46:51 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5CGkY4I022541;
 Wed, 12 Jun 2019 11:46:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560357995;
 bh=CaFpyRIxwj6cSdQsuOwsIHmqQ2IfrMQIaYQ3U++Z27Q=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=NEc+RJH0WXZmtXRbOLhjG2JqN41tESDGPuCyRM8XwQk/lPZrhycD910fTQKg+KlBS
 zEU6YfZKpJc1aVutG1Rm0unrAT8aEUSEJ9qGskp7jz48qAzCktcLwcLGkSM7bN979k
 vIdHg52D4VOWIg5ANgDvODV8s308J++ZJSTqEPmA=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5CGkYv0089896
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 12 Jun 2019 11:46:34 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 12
 Jun 2019 11:46:34 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 12 Jun 2019 11:46:34 -0500
Received: from [10.250.133.146] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5CGkUaW012618;
 Wed, 12 Jun 2019 11:46:31 -0500
Subject: Re: [PATCH] mtd: spi-nor: use 16-bit WRR command when QE is set on
 spansion flashes
To: <Tudor.Ambarus@microchip.com>, <geert@linux-m68k.org>,
 <marek.vasut+renesas@gmail.com>, <marek.vasut@gmail.com>,
 <jonas@norrbonn.se>
References: <c57fe97b-ad4a-874e-663f-7f3a737824c9@microchip.com>
 <20190610062351.24405-1-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <d2cf93a3-4fab-1d0e-6006-7b58d3bdd272@ti.com>
Date: Wed, 12 Jun 2019 22:16:30 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610062351.24405-1-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_094649_447800_A7A6010E 
X-CRM114-Status: GOOD (  30.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: richard@nod.at, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGksCgpPbiAxMC1KdW4tMTkgMTE6NTQgQU0sIFR1ZG9yLkFtYmFydXNAbWljcm9jaGlwLmNvbSB3
cm90ZToKPiBGcm9tOiBUdWRvciBBbWJhcnVzIDx0dWRvci5hbWJhcnVzQG1pY3JvY2hpcC5jb20+
Cj4gCj4gU1BJIG1lbW9yeSBkZXZpY2VzIGZyb20gZGlmZmVyZW50IG1hbnVmYWN0dXJlcnMgaGF2
ZSB3aWRlbHkKPiBkaWZmZXJlbnQgY29uZmlndXJhdGlvbnMgZm9yIFN0YXR1cywgQ29udHJvbCBh
bmQgQ29uZmlndXJhdGlvbgo+IHJlZ2lzdGVycy4gSkVERUMgMjE2QyBkZWZpbmVzIGEgbmV3IG1h
cCBmb3IgdGhlc2UgY29tbW9uIHJlZ2lzdGVyCj4gYml0cyBhbmQgdGhlaXIgZnVuY3Rpb25zLCBh
bmQgZGVzY3JpYmVzIGhvdyB0aGUgaW5kaXZpZHVhbCBiaXRzIG1heQo+IGJlIGFjY2Vzc2VkIGZv
ciBhIHNwZWNpZmljIGRldmljZS4gRm9yIHRoZSBKRURFQyAyMTZCIGNvbXBsaWFudAo+IGZsYXNo
ZXMsIHdlIGNhbiBwYXJ0aWFsbHkgZGVkdWNlIFN0YXR1cyBhbmQgQ29uZmlndXJhdGlvbiByZWdp
c3RlcnMKPiBmdW5jdGlvbnMgYnkgaW5zcGVjdGluZyB0aGUgMTZ0aCBEV09SRCBvZiBCRlBULiBP
bGRlciBmbGFzaGVzIHRoYXQKPiBkb24ndCBkZWNsYXJlIHRoZSBTRkRQIHRhYmxlcyAoU1BBTlNJ
T04gRkw1MTJTQUlGRzEgMzExUVEwNjMgQSDCqTExCj4gU1BBTlNJT04pIGxldCB0aGUgc29mdHdh
cmUgZGVjaWRlIGhvdyB0byBpbnRlcmFjdCB3aXRoIHRoZXNlIHJlZ2lzdGVycy4KPiAKPiBUaGUg
Y29tbWl0IGRjYjRiMjJlZWFmNCAoInNwaS1ub3I6IHMyNWZsNTEycyBzdXBwb3J0cyByZWdpb24g
bG9ja2luZyIpCj4gdW5jb3ZlcmVkIGEgcHJvYmUgZXJyb3IgZm9yIHMyNWZsNTEycywgd2hlbiB0
aGUgUVVBRCBiaXQgQ1JbMV0gd2FzIHNldAo+IGluIHRoZSBib290bG9hZGVyLiBXaGVuIHRoaXMg
Yml0IGlzIHNldCwgb25seSB0aGUgV3JpdGUgUmVnaXN0ZXIKPiBXUlIgY29tbWFuZCBmb3JtYXQg
d2l0aCAxNiBkYXRhIGJpdHMgbWF5IGJlIHVzZWQsIFdSUiB3aXRoIDggYml0cwo+IGlzIG5vdCBy
ZWNvZ25pemVkIGFuZCBoZW5jZSB0aGUgZXJyb3Igd2hlbiB0cnlpbmcgdG8gY2xlYXIgdGhlIGJs
b2NrCj4gcHJvdGVjdGlvbiBiaXRzLgo+IAoKSSBzZWUgYWJvdmUgdGV4dCBpbiBzMjVmbDUxMnMg
ZGF0YXNoZWV0WzFdIGFzIHdlbGwuIFNvIHRoZSBwYXRjaCBpcwppbmRlZWQgbmVlZGVkOgoKUmV2
aWV3ZWQtYnk6IFZpZ25lc2ggUmFnaGF2ZW5kcmEgPHZpZ25lc2hyQHRpLmNvbT4KCkFsc28sIEkg
d2FzIGFibGUgdG8gcmVwcm9kdWNlIGFib3ZlIHNjZW5hcmlvIHdpdGggVEkncyBLMkcgRVZNIHdp
dGgKczI1Zmw1MTJzIGZsYXNoIGFuZCBjYW4gY29uZmlybSB0aGF0IHRoaXMgcGF0Y2ggZml4ZXMg
dGhlIGlzc3VlOgoKVGVzdGVkLWJ5OiBWaWduZXNoIFJhZ2hhdmVuZHJhIDx2aWduZXNockB0aS5j
b20+CgpSZWdhcmRzClZpZ25lc2gKClsxXSBodHRwczovL3d3dy5jeXByZXNzLmNvbS9maWxlLzE3
Nzk3MS9kb3dubG9hZCA5LjMuNyBXcml0ZSBSZWdpc3RlcnMKPiBGaXggdGhlIGFib3ZlIGJ5IHVz
aW5nIDE2LWJpdHMgV1JSIGNvbW1hbmQgd2hlbiBRdWFkIGJpdCBpcyBzZXQuCj4gCj4gQmFja3dh
cmQgY29tcGF0aWJpbGl0eSBzaG91bGQgYmUgZmluZS4gVGhlIG5ld2x5IGludHJvZHVjZWQKPiBz
cGlfbm9yX3NwYW5zaW9uX2NsZWFyX3NyX2JwKCkgaXMgdGlnaHRseSBjb3VwbGVkIHdpdGggdGhl
Cj4gc3BhbnNpb25fcXVhZF9lbmFibGUoKSBmdW5jdGlvbi4gQm90aCBhc3N1bWUgdGhhdCB0aGUg
V3JpdGUgUmVnaXN0ZXIKPiB3aXRoIDE2IGJpdHMsIHRvZ2V0aGVyIHdpdGggdGhlIFJlYWQgQ29u
ZmlndXJhdGlvbiBSZWdpc3RlciAoMzVoKQo+IGluc3RydWN0aW9ucyBhcmUgc3VwcG9ydGVkLgo+
IAo+IFJlcG9ydGVkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3Jn
Pgo+IFNpZ25lZC1vZmYtYnk6IFR1ZG9yIEFtYmFydXMgPHR1ZG9yLmFtYmFydXNAbWljcm9jaGlw
LmNvbT4KPiAtLS0KPiBHZWVydCwgSm9uYXMsCj4gCj4gVGhpcyBwYXRjaCBpcyBjb21waWxlLXRl
c3RlZCBvbmx5LiBJIGRvbid0IGhhdmUgdGhlIGZsYXNoLCBJIG5lZWQgeW91cgo+IGhlbHAgZm9y
IHRlc3RpbmcgdGhpcy4KPiAKPiBUaGFua3MsCj4gdGEKPiAKPiAgZHJpdmVycy9tdGQvc3BpLW5v
ci9zcGktbm9yLmMgfCAxMTYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tCj4gIGluY2x1ZGUvbGludXgvbXRkL3NwaS1ub3IuaCAgIHwgICAxICsKPiAgMiBmaWxlcyBj
aGFuZ2VkLCAxMDYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jIGIvZHJpdmVycy9tdGQvc3BpLW5vci9z
cGktbm9yLmMKPiBpbmRleCBjMGE4ODM3YzA1NzUuLmFmOWFjN2YwOWNjMiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL210ZC9zcGktbm9yL3NwaS1ub3IuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL3NwaS1u
b3Ivc3BpLW5vci5jCj4gQEAgLTE2MzYsNiArMTYzNiw5MiBAQCBzdGF0aWMgaW50IHNyMl9iaXQ3
X3F1YWRfZW5hYmxlKHN0cnVjdCBzcGlfbm9yICpub3IpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAK
PiArLyoqCj4gKyAqIHNwaV9ub3JfY2xlYXJfc3JfYnAoKSAtIGNsZWFyIHRoZSBTdGF0dXMgUmVn
aXN0ZXIgQmxvY2sgUHJvdGVjdGlvbiBiaXRzLgo+ICsgKiBAbm9yOiAgICAgICAgcG9pbnRlciB0
byBhICdzdHJ1Y3Qgc3BpX25vcicKPiArICoKPiArICogUmVhZC1tb2RpZnktd3JpdGUgZnVuY3Rp
b24gdGhhdCBjbGVhcnMgdGhlIEJsb2NrIFByb3RlY3Rpb24gYml0cyBmcm9tIHRoZQo+ICsgKiBT
dGF0dXMgUmVnaXN0ZXIgd2l0aG91dCBhZmZlY3Rpbmcgb3RoZXIgYml0cy4KPiArICoKPiArICog
UmV0dXJuOiAwIG9uIHN1Y2Nlc3MsIC1lcnJubyBvdGhlcndpc2UuCj4gKyAqLwo+ICtzdGF0aWMg
aW50IHNwaV9ub3JfY2xlYXJfc3JfYnAoc3RydWN0IHNwaV9ub3IgKm5vcikKPiArewo+ICsJaW50
IHJldDsKPiArCXU4IG1hc2sgPSBTUl9CUDIgfCBTUl9CUDEgfCBTUl9CUDA7Cj4gKwo+ICsJcmV0
ID0gcmVhZF9zcihub3IpOwo+ICsJaWYgKHJldCA8IDApIHsKPiArCQlkZXZfZXJyKG5vci0+ZGV2
LCAiZXJyb3Igd2hpbGUgcmVhZGluZyBzdGF0dXMgcmVnaXN0ZXJcbiIpOwo+ICsJCXJldHVybiBy
ZXQ7Cj4gKwl9Cj4gKwo+ICsJd3JpdGVfZW5hYmxlKG5vcik7Cj4gKwo+ICsJcmV0ID0gd3JpdGVf
c3Iobm9yLCByZXQgJiB+bWFzayk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2Vycihub3ItPmRl
diwgIndyaXRlIHRvIHN0YXR1cyByZWdpc3RlciBmYWlsZWRcbiIpOwo+ICsJCXJldHVybiByZXQ7
Cj4gKwl9Cj4gKwo+ICsJcmV0ID0gc3BpX25vcl93YWl0X3RpbGxfcmVhZHkobm9yKTsKPiArCWlm
IChyZXQpCj4gKwkJZGV2X2Vycihub3ItPmRldiwgInRpbWVvdXQgd2hpbGUgd3JpdGluZyBzdGF0
dXMgcmVnaXN0ZXJcbiIpOwo+ICsJcmV0dXJuIHJldDsKPiArfQo+ICsKPiArLyoqCj4gKyAqIHNw
aV9ub3Jfc3BhbnNpb25fY2xlYXJfc3JfYnAoKSAtIGNsZWFyIHRoZSBTdGF0dXMgUmVnaXN0ZXIg
QmxvY2sgUHJvdGVjdGlvbgo+ICsgKiBiaXRzIG9uIHNwYW5zaW9uIGZsYXNoZXMuCj4gKyAqIEBu
b3I6ICAgICAgICBwb2ludGVyIHRvIGEgJ3N0cnVjdCBzcGlfbm9yJwo+ICsgKgo+ICsgKiBSZWFk
LW1vZGlmeS13cml0ZSBmdW5jdGlvbiB0aGF0IGNsZWFycyB0aGUgQmxvY2sgUHJvdGVjdGlvbiBi
aXRzIGZyb20gdGhlCj4gKyAqIFN0YXR1cyBSZWdpc3RlciB3aXRob3V0IGFmZmVjdGluZyBvdGhl
ciBiaXRzLiBUaGUgZnVuY3Rpb24gaXMgdGlnaHRseQo+ICsgKiBjb3VwbGVkIHdpdGggdGhlIHNw
YW5zaW9uX3F1YWRfZW5hYmxlKCkgZnVuY3Rpb24uIEJvdGggYXNzdW1lIHRoYXQgdGhlIFdyaXRl
Cj4gKyAqIFJlZ2lzdGVyIHdpdGggMTYgYml0cywgdG9nZXRoZXIgd2l0aCB0aGUgUmVhZCBDb25m
aWd1cmF0aW9uIFJlZ2lzdGVyICgzNWgpCj4gKyAqIGluc3RydWN0aW9ucyBhcmUgc3VwcG9ydGVk
Cj4gKyAqCj4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLCAtZXJybm8gb3RoZXJ3aXNlLgo+ICsg
Ki8KPiArc3RhdGljIGludCBzcGlfbm9yX3NwYW5zaW9uX2NsZWFyX3NyX2JwKHN0cnVjdCBzcGlf
bm9yICpub3IpCj4gK3sKPiArCWludCByZXQ7Cj4gKwl1OCBtYXNrID0gU1JfQlAyIHwgU1JfQlAx
IHwgU1JfQlAwOwo+ICsJdTggc3JfY3JbMl0gPSB7MH07Cj4gKwo+ICsJLyogQ2hlY2sgY3VycmVu
dCBRdWFkIEVuYWJsZSBiaXQgdmFsdWUuICovCj4gKwlyZXQgPSByZWFkX2NyKG5vcik7Cj4gKwlp
ZiAocmV0IDwgMCkgewo+ICsJCWRldl9lcnIobm9yLT5kZXYsCj4gKwkJCSJlcnJvciB3aGlsZSBy
ZWFkaW5nIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXJcbiIpOwo+ICsJCXJldHVybiByZXQ7Cj4gKwl9
Cj4gKwo+ICsJLyoKPiArCSAqIFdoZW4gdGhlIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXIgUVVBRCBi
aXQgQ1JbMV0gaXMgMSwgb25seQo+ICsJICogdGhlIFdSUiBjb21tYW5kIGZvcm1hdCB3aXRoIDE2
IGRhdGEgYml0cyBtYXkgYmUgdXNlZC4KPiArCSAqLwo+ICsJaWYgKHJldCAmIENSX1FVQURfRU5f
U1BBTikgewo+ICsJCXNyX2NyWzFdID0gcmV0Owo+ICsKPiArCQlyZXQgPSByZWFkX3NyKG5vcik7
Cj4gKwkJaWYgKHJldCA8IDApIHsKPiArCQkJZGV2X2Vycihub3ItPmRldiwKPiArCQkJCSJlcnJv
ciB3aGlsZSByZWFkaW5nIHN0YXR1cyByZWdpc3RlclxuIik7Cj4gKwkJCXJldHVybiByZXQ7Cj4g
KwkJfQo+ICsJCXNyX2NyWzBdID0gcmV0ICYgfm1hc2s7Cj4gKwo+ICsJCXJldCA9IHdyaXRlX3Ny
X2NyKG5vciwgc3JfY3IpOwo+ICsJCWlmIChyZXQpCj4gKwkJCWRldl9lcnIobm9yLT5kZXYsICIx
Ni1iaXQgd3JpdGUgcmVnaXN0ZXIgZmFpbGVkXG4iKTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+
ICsKPiArCS8qIElmIHF1YWQgYml0IGlzIG5vdCBzZXQsIHVzZSA4LWJpdCBXUlIgY29tbWFuZC4g
Ki8KPiArCXJldHVybiBzcGlfbm9yX2NsZWFyX3NyX2JwKG5vcik7Cj4gK30KPiArCj4gIC8qIFVz
ZWQgd2hlbiB0aGUgIl9leHRfaWQiIGlzIHR3byBieXRlcyBhdCBtb3N0ICovCj4gICNkZWZpbmUg
SU5GTyhfamVkZWNfaWQsIF9leHRfaWQsIF9zZWN0b3Jfc2l6ZSwgX25fc2VjdG9ycywgX2ZsYWdz
KQlcCj4gIAkJLmlkID0gewkJCQkJCQlcCj4gQEAgLTM2NjMsNiArMzc0OSw4IEBAIHN0YXRpYyBp
bnQgc3BpX25vcl9pbml0X3BhcmFtcyhzdHJ1Y3Qgc3BpX25vciAqbm9yLAo+ICAJCWRlZmF1bHQ6
Cj4gIAkJCS8qIEtlcHQgb25seSBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eSBwdXJwb3NlLiAq
Lwo+ICAJCQlwYXJhbXMtPnF1YWRfZW5hYmxlID0gc3BhbnNpb25fcXVhZF9lbmFibGU7Cj4gKwkJ
CWlmIChub3ItPmNsZWFyX3NyX2JwKQo+ICsJCQkJbm9yLT5jbGVhcl9zcl9icCA9IHNwaV9ub3Jf
c3BhbnNpb25fY2xlYXJfc3JfYnA7Cj4gIAkJCWJyZWFrOwo+ICAJCX0KPiAgCj4gQEAgLTM5MTUs
MTcgKzQwMDMsMTMgQEAgc3RhdGljIGludCBzcGlfbm9yX2luaXQoc3RydWN0IHNwaV9ub3IgKm5v
cikKPiAgewo+ICAJaW50IGVycjsKPiAgCj4gLQkvKgo+IC0JICogQXRtZWwsIFNTVCwgSW50ZWwv
TnVtb255eCwgYW5kIG90aGVycyBzZXJpYWwgTk9SIHRlbmQgdG8gcG93ZXIgdXAKPiAtCSAqIHdp
dGggdGhlIHNvZnR3YXJlIHByb3RlY3Rpb24gYml0cyBzZXQKPiAtCSAqLwo+IC0JaWYgKEpFREVD
X01GUihub3ItPmluZm8pID09IFNOT1JfTUZSX0FUTUVMIHx8Cj4gLQkgICAgSkVERUNfTUZSKG5v
ci0+aW5mbykgPT0gU05PUl9NRlJfSU5URUwgfHwKPiAtCSAgICBKRURFQ19NRlIobm9yLT5pbmZv
KSA9PSBTTk9SX01GUl9TU1QgfHwKPiAtCSAgICBub3ItPmluZm8tPmZsYWdzICYgU1BJX05PUl9I
QVNfTE9DSykgewo+IC0JCXdyaXRlX2VuYWJsZShub3IpOwo+IC0JCXdyaXRlX3NyKG5vciwgMCk7
Cj4gLQkJc3BpX25vcl93YWl0X3RpbGxfcmVhZHkobm9yKTsKPiArCWlmIChub3ItPmNsZWFyX3Ny
X2JwKSB7Cj4gKwkJZXJyID0gbm9yLT5jbGVhcl9zcl9icChub3IpOwo+ICsJCWlmIChlcnIpIHsK
PiArCQkJZGV2X2Vycihub3ItPmRldiwKPiArCQkJCSJmYWlsIHRvIGNsZWFyIGJsb2NrIHByb3Rl
Y3Rpb24gYml0c1xuIik7Cj4gKwkJCXJldHVybiBlcnI7Cj4gKwkJfQo+ICAJfQo+ICAKPiAgCWlm
IChub3ItPnF1YWRfZW5hYmxlKSB7Cj4gQEAgLTQwNTAsNiArNDEzNCwxNiBAQCBpbnQgc3BpX25v
cl9zY2FuKHN0cnVjdCBzcGlfbm9yICpub3IsIGNvbnN0IGNoYXIgKm5hbWUsCj4gIAlpZiAoaW5m
by0+ZmxhZ3MgJiBTUElfUzNBTikKPiAgCQlub3ItPmZsYWdzIHw9ICBTTk9SX0ZfUkVBRFlfWFNS
X1JEWTsKPiAgCj4gKwkvKgo+ICsJICogQXRtZWwsIFNTVCwgSW50ZWwvTnVtb255eCwgYW5kIG90
aGVycyBzZXJpYWwgTk9SIHRlbmQgdG8gcG93ZXIgdXAKPiArCSAqIHdpdGggdGhlIHNvZnR3YXJl
IHByb3RlY3Rpb24gYml0cyBzZXQuCj4gKwkgKi8KPiArCWlmIChKRURFQ19NRlIobm9yLT5pbmZv
KSA9PSBTTk9SX01GUl9BVE1FTCB8fAo+ICsJICAgIEpFREVDX01GUihub3ItPmluZm8pID09IFNO
T1JfTUZSX0lOVEVMIHx8Cj4gKwkgICAgSkVERUNfTUZSKG5vci0+aW5mbykgPT0gU05PUl9NRlJf
U1NUIHx8Cj4gKwkgICAgbm9yLT5pbmZvLT5mbGFncyAmIFNQSV9OT1JfSEFTX0xPQ0spCj4gKwkJ
bm9yLT5jbGVhcl9zcl9icCA9IHNwaV9ub3JfY2xlYXJfc3JfYnA7Cj4gKwo+ICAJLyogUGFyc2Ug
dGhlIFNlcmlhbCBGbGFzaCBEaXNjb3ZlcmFibGUgUGFyYW1ldGVycyB0YWJsZS4gKi8KPiAgCXJl
dCA9IHNwaV9ub3JfaW5pdF9wYXJhbXMobm9yLCAmcGFyYW1zKTsKPiAgCWlmIChyZXQpCj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbXRkL3NwaS1ub3IuaCBiL2luY2x1ZGUvbGludXgvbXRk
L3NwaS1ub3IuaAo+IGluZGV4IGIzZDM2MGIwZWUzZC4uNTY2YmQ1MDEwYmM4IDEwMDY0NAo+IC0t
LSBhL2luY2x1ZGUvbGludXgvbXRkL3NwaS1ub3IuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvbXRk
L3NwaS1ub3IuaAo+IEBAIC00MTAsNiArNDEwLDcgQEAgc3RydWN0IHNwaV9ub3Igewo+ICAJaW50
ICgqZmxhc2hfdW5sb2NrKShzdHJ1Y3Qgc3BpX25vciAqbm9yLCBsb2ZmX3Qgb2ZzLCB1aW50NjRf
dCBsZW4pOwo+ICAJaW50ICgqZmxhc2hfaXNfbG9ja2VkKShzdHJ1Y3Qgc3BpX25vciAqbm9yLCBs
b2ZmX3Qgb2ZzLCB1aW50NjRfdCBsZW4pOwo+ICAJaW50ICgqcXVhZF9lbmFibGUpKHN0cnVjdCBz
cGlfbm9yICpub3IpOwo+ICsJaW50ICgqY2xlYXJfc3JfYnApKHN0cnVjdCBzcGlfbm9yICpub3Ip
Owo+ICAKPiAgCXZvaWQgKnByaXY7Cj4gIH07Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bXRkLwo=
