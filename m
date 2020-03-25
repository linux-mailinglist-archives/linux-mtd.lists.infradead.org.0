Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0CC19250D
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 11:05:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siiAVuIn3cA/ABdVsfNtGPyjZ9eiaB9JRu4GVgEXRLI=; b=b38VgdCeDategb
	bVoWqzsZ0z7vPORlxiUgdy5tIndiefYDTp6wS2O7urWZDJFkj+DI1igTWRQ8F4RdkDMxd/Kk+MfsF
	0IGHahc5ABFjkLebmY6l3qHXDoJiFDhK7REZ8hdxJNOqTDrRcVv7DQt4fUo6grq4uU9ApmzsBxcDR
	tgUsDzzp8U+YBP7N6CK962ui0lr2nLBGuNz+SdDvPuDsPF35dOApAV9ic9EXO9WUCHzgpyuSxiT/D
	iyiie5Gbm4heLGtY3+i0y8GCjRKeQ/CO0TXYEng1dKTp67k1L+s38lxfO0XTpx1UDXprvA/EPQ0+V
	/sAcJpaJ8qe36D6id8lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH2uB-0002bU-Pe; Wed, 25 Mar 2020 10:04:59 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2u1-0002aD-AB
 for linux-mtd@lists.infradead.org; Wed, 25 Mar 2020 10:04:50 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 8FB0A10002B;
 Wed, 25 Mar 2020 10:04:44 +0000 (UTC)
Date: Wed, 25 Mar 2020 11:04:42 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH] MAINTAINERS: Add the IRC channel to the MTD related
 subsystems
Message-ID: <20200325110443.7a4c4138@xps13>
In-Reply-To: <20200325094319.35841-1-tudor.ambarus@microchip.com>
References: <20200325094319.35841-1-tudor.ambarus@microchip.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_030449_487710_4ED46F77 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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

SGkgVHVkb3IsIFJpY2hhcmQsIFZpZ25lc2gsCgo8VHVkb3IuQW1iYXJ1c0BtaWNyb2NoaXAuY29t
PiB3cm90ZSBvbiBXZWQsIDI1IE1hciAyMDIwIDA5OjQzOjI3ICswMDAwOgoKPiBGcm9tOiBUdWRv
ciBBbWJhcnVzIDx0dWRvci5hbWJhcnVzQG1pY3JvY2hpcC5jb20+Cj4gCj4gVGhlICNtdGQgY2hh
bm5lbCAob24gT0ZUQyBzZXJ2ZXJzKSBpcyBiZWluZyB1c2VkIHRvIGRpc2N1c3MgTVREIHJlbGF0
ZWQKPiB0b3BpY3MuIEFkZCBpdCBmb3IgYmV0dGVyIHZpc2liaWxpdHkgdG8gdGhlIEhZUEVSQlVT
LCBOQU5EIGFuZCBTUEkgTk9SCj4gZW50cmllcy4KCkFja2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxt
aXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKSSBhbHNvIHByb2R1Y2VkIGEgcGF0Y2ggeWVzdGVy
ZGF5IHRoYXQgY29udmVydHMgZmFsbHRocm91Z2ggY29tbWVudHMKaW50byBzdGF0ZW1lbnRzLCBp
ZiB5b3UgYWxsIGFjayBib3RoIEkgd2lsbCBhcHBseSB0aGVtIGJlZm9yZSBzZW5kaW5nCnRoZSBN
VEQgUFIuCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
