Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BD7172F2A
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 04:09:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=stzL7cP9aIiVhZ9Kdt/bjUc5j6EouHGPp6rz9ejOGVg=; b=Dm3LzjHbtk6/jtZt8tW0ABuuN
	0+sYJEAzSmIdYUk1LUdZI6eb1pIAZUCikrj70p9BnDEQw/kv+uU4lz3MihAAACbcfWfCorBv7jeRW
	TbG+tC78cXHW28YWtIlEW3jZR/R4Iq/ghwciT7uw6mrHsa3uZimke5LBLXC8AdcHiX5RL97VhLQd8
	rW3VA2BbyLugxZh6FlKYxTcBMN9kuwBkyPnVFAQodPB7QB3brriFIKa543upXrwzUrdxVunHE/Y2x
	G/s0bWrMRbL53QY52POGUGPj8wDBqJfX6fztBqHCZSazBf9m/FwG5vh2vSKwvufJW/EY6TtgKWsxf
	f6UVf0mcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7W1d-0002wj-26; Fri, 28 Feb 2020 03:09:17 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7W1V-0002vz-4v
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 03:09:10 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 19:09:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="232410956"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 27 Feb 2020 19:09:06 -0800
Received: from [10.226.38.23] (unknown [10.226.38.23])
 by linux.intel.com (Postfix) with ESMTP id 9638158045A;
 Thu, 27 Feb 2020 19:09:00 -0800 (PST)
Subject: Re: [PATCH v11 1/2] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
To: Rob Herring <robh@kernel.org>
References: <20200227062708.21544-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200227062708.21544-2-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200227170748.GA19661@bogus>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <3ec7c41f-f074-3b0a-25c6-1ac04f524bbb@linux.intel.com>
Date: Fri, 28 Feb 2020 11:08:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200227170748.GA19661@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_190909_254793_9B89B0A0 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, tudor.ambarus@gmail.com, vigneshr@ti.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 cyrille.pitchen@atmel.com, marex@denx.de, boris.brezillon@free-electrons.com,
 tien.fong.chee@intel.com, richard@nod.at, simon.k.r.goldschmidt@gmail.com,
 devicetree@vger.kernel.org, cheol.yong.kim@intel.com, robh+dt@kernel.org,
 qi-ming.wu@intel.com, david.oberhollenzer@sigma-star.at,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, dinguyen@kernel.org,
 broonie@kernel.org, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gMjgvMi8yMDIwIDE6MDcgQU0sIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFRo
dSwgMjcgRmViIDIwMjAgMTQ6Mjc6MDcgKzA4MDAsICJSYW11dGhldmFyLFZhZGl2ZWwgTXVydWdh
blgiIHdyb3RlOgo+PiBGcm9tOiBSYW11dGhldmFyIFZhZGl2ZWwgTXVydWdhbiA8dmFkaXZlbC5t
dXJ1Z2FueC5yYW11dGhldmFyQGxpbnV4LmludGVsLmNvbT4KPj4KPj4gQWRkIGR0LWJpbmRpbmdz
IGRvY3VtZW50YXRpb24gZm9yIENhZGVuY2UtUVNQSSBjb250cm9sbGVyIHRvIHN1cHBvcnQKPj4g
c3BpIGJhc2VkIGZsYXNoIG1lbW9yaWVzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSYW11dGhldmFy
IFZhZGl2ZWwgTXVydWdhbiA8dmFkaXZlbC5tdXJ1Z2FueC5yYW11dGhldmFyQGxpbnV4LmludGVs
LmNvbT4KPj4gLS0tCj4+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2NhZGVuY2UtcXVh
ZHNwaS50eHQgICAgfCAgNjcgLS0tLS0tLS0tLQo+PiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3NwaS9jZG5zLHFzcGktbm9yLnlhbWwgICAgIHwgMTQyICsrKysrKysrKysrKysrKysrKysrKwo+
PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTQyIGluc2VydGlvbnMoKyksIDY3IGRlbGV0aW9ucygtKQo+
PiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bXRkL2NhZGVuY2UtcXVhZHNwaS50eHQKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9jZG5zLHFzcGktbm9yLnlhbWwKPj4KPiBNeSBi
b3QgZm91bmQgZXJyb3JzIHJ1bm5pbmcgJ21ha2UgZHRfYmluZGluZ19jaGVjaycgb24geW91ciBw
YXRjaDoKClRoYW5rcyEswqAgU29ycnkgZm9yIHRoZSB0cm91YmxlICwgbmV4dCB0aW1lIHdpbGwg
cnVuIGFuZCBmaXggaXQgdXAuCgpSZWdhcmRzClZhZGl2ZWwKPgo+IHdhcm5pbmc6IG5vIHNjaGVt
YSBmb3VuZCBpbiBmaWxlOiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL2Nk
bnMscXNwaS1ub3IueWFtbAo+IC9idWlsZHMvcm9iaGVycmluZy9saW51eC1kdC1yZXZpZXcvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9jZG5zLHFzcGktbm9yLnlhbWw6IGln
bm9yaW5nLCBlcnJvciBpbiBzY2hlbWE6IHBhdHRlcm5Qcm9wZXJ0aWVzOiBjZG5zLHJlYWQtZGVs
YXkKPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9zaW1wbGUtZnJh
bWVidWZmZXIuZXhhbXBsZS5kdHM6MjEuMTYtMzcuMTE6IFdhcm5pbmcgKGNob3Nlbl9ub2RlX2lz
X3Jvb3QpOiAvZXhhbXBsZS0wL2Nob3NlbjogY2hvc2VuIG5vZGUgbXVzdCBiZSBhdCByb290IG5v
ZGUKPiAvYnVpbGRzL3JvYmhlcnJpbmcvbGludXgtZHQtcmV2aWV3L0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zcGkvY2Rucyxxc3BpLW5vci55YW1sOiBwYXR0ZXJuUHJvcGVydGll
czpjZG5zLHJlYWQtZGVsYXk6IHsnZGVzY3JpcHRpb24nOiAnRGVsYXkgaW4gNCBtaWNyb3NlY29u
ZHMsIHJlYWQgY2FwdHVyZSBsb2dpYywgaW4gY2xvY2sgY3ljbGVzLid9IGlzIG5vdCB2YWxpZCB1
bmRlciBhbnkgb2YgdGhlIGdpdmVuIHNjaGVtYXMgKFBvc3NpYmxlIGNhdXNlcyBvZiB0aGUgZmFp
bHVyZSk6Cj4gCS9idWlsZHMvcm9iaGVycmluZy9saW51eC1kdC1yZXZpZXcvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9jZG5zLHFzcGktbm9yLnlhbWw6IHBhdHRlcm5Qcm9w
ZXJ0aWVzOmNkbnMscmVhZC1kZWxheTogJ25vdCcgaXMgYSByZXF1aXJlZCBwcm9wZXJ0eQo+Cj4g
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL01ha2VmaWxlOjEyOiByZWNpcGUgZm9y
IHRhcmdldCAnRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9jZG5zLHFzcGkt
bm9yLmV4YW1wbGUuZHRzJyBmYWlsZWQKPiBtYWtlWzFdOiAqKiogW0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zcGkvY2Rucyxxc3BpLW5vci5leGFtcGxlLmR0c10gRXJyb3IgMQo+
IE1ha2VmaWxlOjEyNjM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkdF9iaW5kaW5nX2NoZWNrJyBmYWls
ZWQKPiBtYWtlOiAqKiogW2R0X2JpbmRpbmdfY2hlY2tdIEVycm9yIDIKPgo+IFNlZSBodHRwczov
L3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEyNDU1NTkKPiBQbGVhc2UgY2hlY2sgYW5kIHJl
LXN1Ym1pdC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
