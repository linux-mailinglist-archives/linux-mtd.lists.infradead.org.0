Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DDD1F9240
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jun 2020 10:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oqDj8n/cuLYbHEuMw93ja9P1n7/u1QKqvRu2gKkNi4=; b=KUu6YRUAQNI3KX
	GGaf4wnZvJnkZ+c1XNM1/wQMvC8qwSZUxox/K0lbl+4cUGQ7PcTDpm1D2xHl3NeBe4BhOxMZPyBkh
	nH4uKM+mfLXZih77IOCRzE3YxTPNz69/sxBcG1eTuscG6LUWcjLkucYHuUwh5NNSDqjPXNTQNHWta
	6Safg66HUEHwg8inagtWBh3acsSkRX7VR9GVJ9EtVQHaM7FtyOMEI4bPJ+sJbgLuPmyhTNnGPbiup
	GkE00QuYErc6zRhOOxdW4HpWqSaUrOSqVZPWTVZGthjUTaOD+jzmleJap0F4DjvxH5WzjSgMPvEBt
	CdKmjRKUUIQYXA93MXOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkqH-0006F3-1D; Mon, 15 Jun 2020 08:51:45 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkoW-0002ac-5e
 for linux-mtd@lists.infradead.org; Mon, 15 Jun 2020 08:49:57 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id DAED9240013;
 Mon, 15 Jun 2020 08:49:45 +0000 (UTC)
Date: Mon, 15 Jun 2020 10:49:43 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sivaprakash Murugesan <sivaprak@codeaurora.org>
Subject: Re: [PATCH V4 1/2] mtd: rawnand: qcom: avoid write to unavailable
 register
Message-ID: <20200615104943.16b1b8db@xps13>
In-Reply-To: <1591948696-16015-2-git-send-email-sivaprak@codeaurora.org>
References: <1591948696-16015-1-git-send-email-sivaprak@codeaurora.org>
 <1591948696-16015-2-git-send-email-sivaprak@codeaurora.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014956_360778_70C66178 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, peter.ujfalusi@ti.com, boris.brezillon@collabora.com,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2l2YXByYWthc2gsCgpTaXZhcHJha2FzaCBNdXJ1Z2VzYW4gPHNpdmFwcmFrQGNvZGVhdXJv
cmEub3JnPiB3cm90ZSBvbiBGcmksIDEyIEp1bgoyMDIwIDEzOjI4OjE1ICswNTMwOgoKPiBTRkxB
U0hDX0JVUlNUX0NGRyBpcyBvbmx5IGF2YWlsYWJsZSBvbiBvbGRlciBpcHEgbmFuZCBwbGF0Zm9y
bXMsIHRoaXMKPiByZWdpc3RlciBoYXMgYmVlbiByZW1vdmVkIHdoZW4gdGhlIE5BTkQgY29udHJv
bGxlciBpcyBtb3ZlZCBhcyBwYXJ0IG9mIHFwaWMKPiBjb250cm9sbGVyLgo+IAo+IEF2b2lkIHdy
aXRpbmcgdGhpcyByZWdpc3RlciBvbiBkZXZpY2VzIHdoaWNoIGFyZSBiYXNlZCBvbiBxcGljIE5B
TkQKPiBjb250cm9sbGVyLgo+IAo+IEZpeGVzOiBkY2U4NDc2MCAobXRkOiBuYW5kOiBxY29tOiBT
dXBwb3J0IGZvciBJUFE4MDc0IFFQSUMgTkFORCBjb250cm9sbGVyKQoKVGhlIEZpeGVzIGxpbmUg
aXMgbm90IHByb3Blcmx5IGZvcm1lZDogdGhlIG51bWJlciBvZiBkaWdlc3QgZGlnaXRzIG11c3QK
YmUgMTIgYW5kIHRoZSB0aXRsZSBzaG91bGQgYmUgZW5jbG9zZWQgd2l0aCAiIi4gSSB3aWxsIGZp
eCB3aGVuCmFwcGx5aW5nLgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFp
bGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbXRkLwo=
