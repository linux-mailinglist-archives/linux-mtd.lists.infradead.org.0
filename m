Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED9F1D1BF1
	for <lists+linux-mtd@lfdr.de>; Wed, 13 May 2020 19:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxpuW538ZoGPg2t7i0TTDSup0YGU193i67qhw5C8BuA=; b=eZl0SNgepSOy0B
	C4d0lvDcHC/kMlT/w2hIhGGWTd4PNnfi9UWGCNEIW+weqcVGj43BBnmDcZdsdMhQUN7rgBKvEA5xC
	iTIXi5waTUWU+TFRg13XKYQGzeD5Zpg27BXBoWVfL+EOVHu/pwpxYT4J93aDafTsTNO+ka+vuuzV6
	oRpc5S5F2TjkaCVQ80vKaskzeTJ2+AP7MQPcpyCPxNkiVGmqoBdV3A4ejg9TiRlJ8LCyXx/qcf+el
	D0epqq0ve6VfkKEK2bxxpXNGEGK7rP3xbyrDL67FtBpX1b9HnPXigwbJa+2cgcR70gIxy9i2iYWsn
	oolVmEe2b6WDGIODkHXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYuuD-00027u-6j; Wed, 13 May 2020 17:10:53 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYuu2-000273-1A
 for linux-mtd@lists.infradead.org; Wed, 13 May 2020 17:10:45 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C9349261179;
 Wed, 13 May 2020 18:10:40 +0100 (BST)
Date: Wed, 13 May 2020 19:10:38 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 00/19] mtd: rawnand: cafe: Convert to exec_op() (and
 more)
Message-ID: <20200513191038.49a4fdf3@collabora.com>
In-Reply-To: <20200512164057.GC604838@furthur.local>
References: <20200507134708.GA303404@furthur.local>
 <20200507221257.75e400a8@collabora.com>
 <20200509193440.GA524772@furthur.local>
 <20200509220102.59f36689@collabora.com>
 <20200509202855.GB524772@furthur.local>
 <20200510083105.4bcfa71b@collabora.com>
 <20200510084541.29e4069e@collabora.com>
 <20200510072108.GA587379@furthur.local>
 <20200510093549.56f74e61@collabora.com>
 <20200511102305.7d843fbc@collabora.com>
 <20200512164057.GC604838@furthur.local>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_101042_203232_A00974FB 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Lubomir,

On Tue, 12 May 2020 18:40:57 +0200
Lubomir Rintel <lkundrak@v3.sk> wrote:

> I don't really mind the patch; I was just not sure why you removed the
> acks and re-set the mask and suspected that maybe it was not
> intentional.
> 
> That said, I've now disabled the camera and mmc and did my usual test
> of mounting the filesystem and I'm seeing zero interrupts.
> 
> I suppose it's safe to assume that contrary to what I was imagining,
> the masking works well and the interrupts I was seeing are indeed from
> elsewhere (I guess the MMC driver polling the controller or something).
> 
> Also, the re-set of the mask from the interrupt handler is not realy
> necessary (but I certainly wouldn't complain if you keep it in place).

I pushed a new version to my nand/cafe-nand-exec-op-debug branch. This
time I get rid of the IRQ handler as it's not used anyway. Let me know
if that keeps working an I'll send a v3.

Thanks,

Boris

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
