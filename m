Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE99FC37F
	for <lists+linux-mtd@lfdr.de>; Thu, 14 Nov 2019 11:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nS3gPTZvrzcFCq8cBbEboGJwSr/N6g+hILVtke0BWTw=; b=OI1FDzI4kDxlZs
	w36ffEYF3HI72IeDgVUgyYX/PdOwkZxWjV+h8ORkvOHAj3s5IIhtvl9qo4Uz6+Wrsn+dZ3bUK6Enf
	2al6Be6rOG0u5jYvAxvaQQfC0LpQrSDHC9WfDCkFxHjMwBwhug9o1CFCJnaOgiku4pp4T2+9PpXpP
	04T5mdj7LmtQAc7yJSjHKoe/s/G+qsNoHJssNZaSgei6dmr19krdXC9gUol04u1tj7NcRDxxq9gr5
	lSK/l9XjIc2J+5x/i0a/NHdrZ9o5hmJdO/168kFmm8Ewe5VSHjqE484hfWR4pRF/39+6JUHXHaysg
	/ingLXvViMeNhS9NBnvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBwB-0001SP-Tc; Thu, 14 Nov 2019 10:01:15 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBw3-0001Rx-6v
 for linux-mtd@lists.infradead.org; Thu, 14 Nov 2019 10:01:08 +0000
Received: from xps13 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr
 [86.206.246.123]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id B1ABC24000E;
 Thu, 14 Nov 2019 10:00:54 +0000 (UTC)
Date: Thu, 14 Nov 2019 11:00:53 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] ubi: remove unused variable 'err'
Message-ID: <20191114110053.4fbeb918@xps13>
In-Reply-To: <20191114072236.15104-1-yuehaibing@huawei.com>
References: <20191114072236.15104-1-yuehaibing@huawei.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_020107_387180_4822D9A0 
X-CRM114-Status: UNSURE (   5.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgWXVlLAoKWXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29tPiB3cm90ZSBvbiBUaHUs
IDE0IE5vdiAyMDE5IDE1OjIyOjM2CiswODAwOgoKPiBkcml2ZXJzL210ZC91YmkvZGVidWcuYzo1
MTI6Njogd2FybmluZzogdW51c2VkIHZhcmlhYmxlICdlcnInIFstV3VudXNlZC12YXJpYWJsZV0K
PiAKPiBjb21taXQgMzQyN2RkMjEzMjU5ICgibXRkOiBubyBuZWVkIHRvIGNoZWNrIHJldHVybiB2
YWx1ZQo+IG9mIGRlYnVnZnNfY3JlYXRlIGZ1bmN0aW9ucyIpIGxlYXZlIHRoaXMgdmFyaWFibGUg
bm90IHVzZWQuCgpUaGFua3MgZm9yIHRoZSBmaXggYnV0IEkgYWxyZWFkeSBmaXhlZCB0aGlzIHRy
aXZpYWwgaXNzdWUsIEkganVzdApkaWQgbm90IGhhZCB0aW1lIHllc3RlcmRheSBuaWdodCB0byBw
dXNoIGl0LCBub3cgaXQgaXMgZG9uZS4gSXQgd2lsbApiZSBwYXJ0IG9mIHRvbW9ycm93J3MgbGlu
dXgtbmV4dCByZWxlYXNlLgoKQ2hlZXJzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFp
bGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbXRkLwo=
