Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EBA1658A9
	for <lists+linux-mtd@lfdr.de>; Thu, 20 Feb 2020 08:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIkOFYBPlZ6N245ThtOVLxfVaJYfj4L+sPPgc+m2TNU=; b=jZzP2NY2DoMJ2y
	+M6y2/t7dDjifuz5jRHHQBkMyPLbSdRYlvUjSsEt4efBGKreD9zPGRetiCPKfXOwcrlwK/ewpA1r3
	tGaXolcIJOjfFPifcJ/OkPmDv+Ug4MjmjAgQyAuKXlVmQ+x7RNebi0oSKX7LWWTjWVkE3NFeWFe4X
	rx499Oq1MT4c7a6wku+EK7vLt4BFM5c1petLfG2YMAtR+fF/c2p80bkwWYwk8NgvWWdb47/OcH3Gd
	xxROjoNpF8b1QAF7ipE5HQ9T58a1nLhdM/TzQnsDisU14yN1qxPZ5N96nVOJ4GMKUkJK2Rh91e3NH
	5M/cOJUelCjM0GSXxXHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4gXl-0002EY-40; Thu, 20 Feb 2020 07:46:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4gXU-0002AR-Dk
 for linux-mtd@lists.infradead.org; Thu, 20 Feb 2020 07:46:30 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6EF362927B3;
 Thu, 20 Feb 2020 07:46:26 +0000 (GMT)
Date: Thu, 20 Feb 2020 08:46:23 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH RFT 0/2/2] mtd: hyperbus: add Renesas RPC-IF driver
Message-ID: <20200220084623.3d5145fd@collabora.com>
In-Reply-To: <d09bb1b9-fef8-5a96-df4e-eccc228f2777@cogentembedded.com>
References: <fd1360ab-8872-f750-1314-77c6d432b413@cogentembedded.com>
 <eba43289-3cb2-406b-cc5f-1209778621bf@cogentembedded.com>
 <16309076-4378-d9ff-30c3-93a46af1d803@ti.com>
 <d09bb1b9-fef8-5a96-df4e-eccc228f2777@cogentembedded.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_234628_594488_E54DA287 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Dirk Behme <dirk.behme@de.bosch.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 23:13:36 +0300
Sergei Shtylyov <sergei.shtylyov@cogentembedded.com> wrote:

> > One way would be to extend spi_mem_op to support above template along
> > with a new field to distinguish SPI NOR vs HyperFlash protocol. HyperBus
> > core can then register a spi_device and use spi-mem ops to talk to
> > controller driver.  
> 
>    We have discussed this idea with Mark Brown, the SPI maintainer, and
> he wasn't terribly impressed (I've invited him to #mtd -- his nick is
> broonie and mine is headless, I'm also adding him to CC:).
> 
> > So, I suggest making Renesas RPC-IF backend a full fledged spi-mem
> > driver (instead of driver/memory) and use extended spi_mem_op to support
> > HyperFlash.  
> 
>    I don't think cramming support for the different flash busses into
> the SPI drivers is a good idea...

That's what I thought at first (SPI and Hyperflash seemed different
enough to not merge them), then I had a look at Vignesh's HyperFlash
presentation [1], and there's one aspect that made me reconsider this
PoV. Slide 25 (xSPI compliant HyperFlash): having devices bouncing from
one driver to another depending on the mode they operate in is likely to
be painful to handle. Not to mention that Octo+DTR is similar to
HyperBus from an HW PoV (at the PHY level, they both have CS, CLK,
DQS/RWDS, DQ/IO[0:7] signals, only the protocol differs).

[1]https://elinux.org/images/3/38/HBMC-v1.pdf

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
