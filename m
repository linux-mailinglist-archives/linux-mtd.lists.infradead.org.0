Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5939D1BAB0C
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 19:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLH3uVPlraaLMnMzRtOTBr5MLQPJYFao8bJD3wZ4i6E=; b=BBxxgDjohDDInE
	3VowCDDK2UVB0SdsCrKh0cGz87v9sAGocIx2u4nPONjyPosxwQ/t/H1kcRcaUsUbXo4BoUNHnnfQb
	LFwryiQCIl2NLexeGTjQ/a2ZTPOID+F2rqfpO8vlTEcE+tmqCbElRGKORJVXnSAIDx77YXd5z7l8f
	nyGRY8pXm0Ua9i1+qkz81wDcXqsMWgdvI8jnt4b2RgT4qNcUfQKPajPTgHIhto5884PcQih87Hley
	JEK32p0JnyHhM5hCdC9Q4TPhdAoPsgUSgNJjp9y4PfwqZ7YyWsUagvIHPQQsvAH+0PqEM58xHmvqX
	4yFJSvmIUrbavS99j6Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7Q8-0006wh-2p; Mon, 27 Apr 2020 17:19:52 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7Pi-0006lS-GI
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 17:19:33 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 18FA9240006;
 Mon, 27 Apr 2020 17:19:23 +0000 (UTC)
Date: Mon, 27 Apr 2020 19:19:22 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 6/9] mtd: rawnand: bcm47xx: Get rid of the legacy
 implementation
Message-ID: <20200427191922.0202180c@xps13>
In-Reply-To: <20200419125140.1307309-7-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-7-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_101932_015188_4EFA23DB 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTdW4sIDE5IEFwcgoyMDIwIDE0OjUxOjM3ICswMjAwOgoKPiBOb3cgdGhhdCBl
eGVjX29wKCkgaXMgaW1wbGVtZW50ZWQgd2UgZG9uJ3QgbmVlZCB0byBpbXBsZW1lbnQgYWxsIHRo
b3NlCj4gbGVnYWN5IGhvb2tzLCB3aGljaCBzaW1wbGlmaWVzIHRoZSBjb2RlIHF1aXRlIGEgYml0
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNv
bGxhYm9yYS5jb20+Cj4gLS0tCj4gIC4uLi9uYW5kL3Jhdy9iY200N3h4bmZsYXNoL2JjbTQ3eHhu
Zmxhc2guaCAgICB8ICAgNiAtCj4gIC4uLi9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFzaC9vcHNf
YmNtNDcwNi5jICB8IDMxNSAtLS0tLS0tLS0tLS0tLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAz
MjEgZGVsZXRpb25zKC0pCgpMb3ZlIHRoZSBkaWZmc3RhdCEKClJldmlld2VkLWJ5OiBNaXF1ZWwg
UmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKVGhhbmtzLApNaXF1w6hsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgg
TVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
