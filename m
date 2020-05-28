Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53A61E66FB
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 18:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4vhD/yJBba/jCG+Ip4X1je/nviyB1hNnsjMmLhrKj0=; b=fxpEaHD4cpLjA+
	JFBl0pIkCFbjs64/dHqS4Rwn5olzOfxj5ZUCDarpCFa0wyIQ9BE+eEf9O/q2ZKikSnxHbcgIxbcTJ
	1R5+eiHVdNi9lMDDBSpRKrZSglqAvasgMbIPhmE36sg4SNDLSLxwwpmR9UsfKeWthAONxI8GoOOVG
	odlKXZ1L2lCl0u03uuIRdIr5k9zYsU4Yp37ip2dgzoUCwcB+fw25a2GAi+c23MzbnJ/e7n+DZGkvj
	Cq9xZR6I0UH7WdeShcCtF6vM+YO4WVc+HgPeSXfLyFolo5sGre+757VSH0FVq3nqGx7uo7SoGUf49
	FsQBAT+gCw7VTwKFAKZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKxN-00074O-Vu; Thu, 28 May 2020 16:00:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKwz-0005s1-4v; Thu, 28 May 2020 16:00:10 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E086E2A383F;
 Thu, 28 May 2020 17:00:05 +0100 (BST)
Date: Thu, 28 May 2020 18:00:03 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 16/18] mtd: nand: Convert generic NAND bits to use
 the ECC framework
Message-ID: <20200528180003.0f682e6f@collabora.com>
In-Reply-To: <20200528113113.9166-17-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-17-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_090009_336875_FC62BB17 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 13:31:11 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Embed a generic NAND ECC high-level object in the nand_device
> structure to carry all the ECC engine configuration/data. Adapt the
> raw NAND and SPI-NAND cores to fit the change.

I would also split that one:

1/ s/nand_ecc_props/nand_ecc/ in the core + change the spi nand
   framework accordingly

2/ update rawnand to use the generic layer

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
