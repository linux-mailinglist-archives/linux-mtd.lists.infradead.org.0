Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 903DB193273
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 22:17:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmOAUlAB32s/EEFOWbnOTJuoB3LfQp/W7vA7CcWa+jk=; b=Bhoz8+JD5enDNE
	AY7O+VS0jNYi/NyPj2u15Ujk9GSgVIn4aPwMbj5BeB2+WbIMvQ6SWQLkta2ozTDs+K1Z9IgcMJXEd
	gBjGC7zSxl9PniAqdCIx3+6kna+DHVzV6i4B5k2UW8I2cIxt2a0U2Iz/8WsDPPjoQ/ECom14diroY
	H43Th4WL+mWyHbiaGJGdPEhEWd9SrMMb5PbETczuUSD2iiZKvveTLV4BjsMVZ0JjteORarcN9jVu9
	0faVOarUsm34r1PZ8WQfLgKWnWmhIxlwDvN0jRJ6rTJhhFxGtPWDk7shz+uUuj1S78TE15PG7qkgz
	JJQ++24unSLFCGtEwSug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDOY-0008Kr-E5; Wed, 25 Mar 2020 21:17:02 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDOQ-0008KM-Gh
 for linux-mtd@lists.infradead.org; Wed, 25 Mar 2020 21:16:55 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6D261240004;
 Wed, 25 Mar 2020 21:16:50 +0000 (UTC)
Date: Wed, 25 Mar 2020 22:16:49 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH] MAINTAINERS: Add the IRC channel to the MTD related
 subsystems
Message-ID: <20200325221649.41236908@xps13>
In-Reply-To: <20200325094319.35841-1-tudor.ambarus@microchip.com>
References: <20200325094319.35841-1-tudor.ambarus@microchip.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_141654_692462_337A7588 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgVHVkb3IsCgo8VHVkb3IuQW1iYXJ1c0BtaWNyb2NoaXAuY29tPiB3cm90ZSBvbiBXZWQsIDI1
IE1hciAyMDIwIDA5OjQzOjI3ICswMDAwOgoKPiBGcm9tOiBUdWRvciBBbWJhcnVzIDx0dWRvci5h
bWJhcnVzQG1pY3JvY2hpcC5jb20+Cj4gCj4gVGhlICNtdGQgY2hhbm5lbCAob24gT0ZUQyBzZXJ2
ZXJzKSBpcyBiZWluZyB1c2VkIHRvIGRpc2N1c3MgTVREIHJlbGF0ZWQKPiB0b3BpY3MuIEFkZCBp
dCBmb3IgYmV0dGVyIHZpc2liaWxpdHkgdG8gdGhlIEhZUEVSQlVTLCBOQU5EIGFuZCBTUEkgTk9S
Cj4gZW50cmllcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdWRvciBBbWJhcnVzIDx0dWRvci5hbWJh
cnVzQG1pY3JvY2hpcC5jb20+Cj4gLS0tCgpBcHBsaWVkIHRvIG10ZC9uZXh0LgoKVGhhbmtzLApN
aXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
