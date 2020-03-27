Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BF5195AF1
	for <lists+linux-mtd@lfdr.de>; Fri, 27 Mar 2020 17:19:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VW96H9OFXznpbVw6emip+9yDA7BAP97gazJOm3tJDSI=; b=ZqpoJkGugXQTPQ
	oGqnXwBxxApNadFcOWCJgoWElcVzqoKwCKlhUMyhgcX6tkxKQnvf9E4RS2IR6OKc1gToFPTLj0DE7
	5bI5xo79LxVvvOnrHUWQdyzuBiLmG+GJ9ni/ZvBahJknqDHf42sAVMRFmlUoiIxzObvoUiJGUJoBy
	OGID0EzZCRRDAOFg3rsLIeHE7iD5uCy0H1loHClMGf1NVOLzqio6u6WknPeXfEuFGWvk0jDnfo0ws
	kgjT8sMnt74Jvq0S4hhFDvJhtxULCuTm3T5R3qYaY2b0lM+aXW9Mq2ZZ8I+GusLo2T2eXKiHZb4Fd
	xBdgamiBEizvOr9Ve1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrhd-0007K2-82; Fri, 27 Mar 2020 16:19:25 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrhX-0007Jc-CK
 for linux-mtd@lists.infradead.org; Fri, 27 Mar 2020 16:19:20 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id DAA6520009;
 Fri, 27 Mar 2020 16:19:08 +0000 (UTC)
Date: Fri, 27 Mar 2020 17:19:07 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
Message-ID: <20200327171907.7a7ffc73@xps13>
In-Reply-To: <20200327155608.GM2564@lahna.fi.intel.com>
References: <CAP6exYJ3xk46PODgT=5WAdiLDNY=9MggxyaEwov6qyDQstLj7g@mail.gmail.com>
 <CAP6exY+W+zTtEB1LmHYDnhEnPj26Y97Ld9TBAxsgX3vGDb4LnQ@mail.gmail.com>
 <CAP6exYKrAs_OpC_qkoW2cH0MxpqxDrgP2nhJGkp=2BX-6kAWbQ@mail.gmail.com>
 <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
 <CAP6exYJ_jzrB0D=RLXMNeegu4BwQq8raXVOMugkqzX2ZP_JSqw@mail.gmail.com>
 <20200327155608.GM2564@lahna.fi.intel.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_091919_548834_D551E084 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
Cc: ron minnich <rminnich@gmail.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlrYSwKCk1pa2EgV2VzdGVyYmVyZyA8bWlrYS53ZXN0ZXJiZXJnQGxpbnV4LmludGVsLmNv
bT4gd3JvdGUgb24gRnJpLCAyNyBNYXIKMjAyMCAxNzo1NjowOCArMDIwMDoKCj4gSGksCj4gCj4g
SSBkb24ndCB0aGluayBpdCBpcyBnb29kIGlkZWEgdG8gY2hhbmdlIFBDSSBkZXZpY2UgbmFtZSBs
aWtlIHRoYXQuCj4gCj4gSW5zdGVhZCB0aGUgTVREIGNtZGxpbmUgcGFyc2VyIHNob3VsZCBiZSB0
ZWFjaCB0byBoYW5kbGUgbmFtZXMgbGlrZSB0aGlzCj4gcHJvcGVybHkuCgpJdCBpcyBhIGJpdCBt
b3JlIGNvbXBsaWNhdGVkIHRoYW4gdGhhdCBzaW5jZSBwYXJzZXJzIGhhdmUgYmVlbiB1c2luZwp0
aGlzIHN5bnRheCBmb3IgYSBsb25nIHRpbWUgYW5kLCBtb3JlIGltcG9ydGFudGx5LCBpdCBtZWFu
cwpwb3RlbnRpYWxseSB1cGRhdGluZyBhbGwgYm9vdGxvYWRlcnMuCgpJIGFtIG5vdCBhZ2FpbnN0
IHVwZGF0aW5nIHRoZSBwYXJzZXIsIGJ1dCB0aGUgcy86L3wvIHNvbHV0aW9uIHByb3Bvc2VkCmJl
Zm9yZSBpcyByYXRoZXIgdW5kZXNjcmlwdGl2ZSBhbmQgaXQgaXMgaGFyZCB0byBmaW5kIGFuIGFs
dGVybmF0aXZlCmNoYXJhY3RlciB0aGF0IHdvdWxkIGhhdmUgYSBtZWFuaW5nIGhlcmUuCgpUaGFu
a3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
