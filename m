Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25DC9CFD2
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5ONMOr5n6rvEMXM/bsH7T5m+//41zOiDdTNfxcVp1c=; b=TEZ6nNzfMjlkZT
	n/AZipzkMfkZ4q+h/3fW5TuVXB+yuJKhyXE6vwlCVSMc6M64teGy2ScWyZLBPKgY44Y4bMc5fFqDZ
	VFL5cvc17rklzck8LVn47guOSQfZO+CzAZHO1XopbB23HR3+H8rmy3xthQEjYjb7bZK4z27Gp9/wd
	GHuw44P53focWliixZMg+TMvU8CBLlp+fV86u3rjxDLsvp9Dneo+jNdhIocH3V0uja7ozLfuH2UDH
	gt9zNAIhmXGocIxPa/YYUyDbQlufiLWh+qE+zqZQUXg/wHIRLA8JmTji7gP1kKiV3HmPkq4yC7IKr
	l24b54KwWLJ+56JUSZ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ERB-00070s-VZ; Mon, 26 Aug 2019 12:49:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ER3-0006xz-OA
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:49:27 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6BD6A28A1B7;
 Mon, 26 Aug 2019 13:49:24 +0100 (BST)
Date: Mon, 26 Aug 2019 14:49:21 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [RESEND RFC PATCH v3 20/20] mtd: spi-nor: Rework the disabling
 of block write protection
Message-ID: <20190826144921.70ee27c5@collabora.com>
In-Reply-To: <20190826120821.16351-21-tudor.ambarus@microchip.com>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-21-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_054925_922222_75B8F3AE 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019 12:09:09 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> spi_nor_unlock() unlocks blocks of memory or the entire flash memory
> array, if requested. clear_sr_bp() unlocks the entire flash memory
> array at boot time. This calls for some unification, clear_sr_bp() is
> just an optimization for the case when the unlock request covers the
> entire flash size.
> 
> Merge the clear_sr_bp() and stm_lock/unlock logic and introduce
> spi_nor_unlock_all(), which makes an unlock request that covers the
> entire flash size.
> 
> Get rid of the MFR handling and implement specific manufacturer
> default_init() fixup hooks.
> 
> Move write_sr_cr() to avoid to add a forward declaration. Prefix
> new function with 'spi_nor_'.
> 
> Note that this changes a bit the logic for the SNOR_MFR_ATMEL and
> SNOR_MFR_INTEL cases. Before this patch, the Atmel and Intel chips
> did not set the locking ops, but unlocked the entire flash at boot
> time, while now they are setting the locking ops to stm_locking_ops.
> This should work, since the the disable of the block protection at the
> boot time used the same Status Register bits to unlock the flash, as
> in the stm_locking_ops case.
> 
> In future, we should probably add new hooks to
> 'struct spi_nor_flash_parameter' to describe how to interact with the
> Status and Configuration Registers in the form of:
> 	nor->params.ops->read_sr
> 	nor->params.ops->write_sr
> 	nor->params.ops->read_cr
> 	nor->params.ops->write_sr
> We can retrieve this info starting with JESD216 revB, by checking the
> 15th DWORD of Basic Flash Parameter Table, or with later revisions of
> the standard, by parsing the "Status, Control and Configuration Register
> Map for SPI Memory Devices".
> 
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Though I'd recommend waiting a bit before applying that one. As
discussed privately, we might have problems when ->quad_enable is set
to spansion_read_cr_quad_enable or spansion_no_read_cr_quad_enable.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
