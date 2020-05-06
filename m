Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108191C7C86
	for <lists+linux-mtd@lfdr.de>; Wed,  6 May 2020 23:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpJ4kvxzCu4u/zBn+KQhV3tYV11CVDFX9PeaqOCu60c=; b=MB3wv8m1DPWDap
	ddxO0ut0EP+lvqY+/WRMBZtioMDCQbf291081oGDqSAVwLRmsvbON6GXGtsQdACK0VD9InYO3hUW3
	du+KVLaq5b5wNhDa0gyLzozlWgaPiGPVAko6pBr+x0F0MkW+TxXE4OJ0f2xVvARjt2uzan9YQtO2P
	AS0G4wKWrScF7dUOqQC3AbOb4i4VVJAv23vioulu/3TQHXNdTfcB8Sf8HPfDfFhtSgzxBikkiacI0
	iJMzgJ94IxrU9UF4fpSIBeuslTAsZ0N6C+xTMcaxvXWibfG2pKbJI7lceOZaND71TLtB6ImM/A9Q2
	y9E2oA/2fgcIaXP6XBLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWRi2-0003mh-Ju; Wed, 06 May 2020 21:36:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWRht-0003m7-Ia
 for linux-mtd@lists.infradead.org; Wed, 06 May 2020 21:36:01 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 16AB82A0790;
 Wed,  6 May 2020 22:35:56 +0100 (BST)
Date: Wed, 6 May 2020 23:35:52 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 00/19] mtd: rawnand: cafe: Convert to exec_op() (and
 more)
Message-ID: <20200506233552.0ef6a865@collabora.com>
In-Reply-To: <20200506203635.GA207924@furthur.local>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
 <20200505144639.GB1997@furthur.local>
 <20200505220152.GA157445@furthur.local>
 <20200506083209.57c85ad9@collabora.com>
 <20200506155359.GA183666@furthur.local>
 <20200506181153.4643fbe1@collabora.com>
 <20200506203635.GA207924@furthur.local>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_143558_509455_5247507B 
X-CRM114-Status: GOOD (  14.18  )
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
Cc: Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 22:36:35 +0200
Lubomir Rintel <lkundrak@v3.sk> wrote:

> > We really should mask IRQs (AKA disable IRQs in my naming convention
> > :-)) here, unless we want to switch to interrupt-based waits (which
> > would be a good thing when we have DMA or WAIT_RDY involved). Having an
> > interrupt handler in the current implementation doesn't make any sense
> > (that's assuming the IRQ_STATUS bits are updated even if the interrupts
> > are disabled, which am not sure is a valid assumption in this case).  
> 
> I have no idea why the interrupt handler is there. Perhaps some
> interrupts can't be masked and need an ack or something.

Can you try to set NAND_IRQ_MASK to 0x0 and see if that still works.
Can you also check the number of NAND interrupts when set to 0x0? It's
hard to tell exactly what caused the interrupt handler to be called
since this is a shared interrupt.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
