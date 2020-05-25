Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB72B1E14AD
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 21:13:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=du7t2CSe179Ucs0u+TNPQLqgANlAfzpdLjsrH7TafQE=; b=jXvQsQ5BIhnwD1
	mY0W6TuGYcjfzW3zI5SD2znSUQUwvtpg1hDTYz6dW2rbIaDZVxfKgUe3MCwb1AGk6hfyqWX8ZdaWA
	zRYqD5a7Wp7Ye8Zy2mLtk1zwtdls3q6Uxcg8LqmkOctrrYmlWfE3mg0XPPmb1hq0hOZtUN1u0oAq8
	JTMC1HKYZy/jeMhGQprexZslcsY12qVKc6DVqbbiNFE+WcgNZe1B7yO6qcrJ25z2n20tyyBCBWzjn
	fIv9NKPoa5F4r6VofPKQ5cGtf/rCW3i47zg6hDXP1H+2v0/ABOeVkzgVPAiN8ZlCZCbHEgbmaEZ5H
	EYDjuX3r8FPbuw15FNEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdIXk-0001pz-AW; Mon, 25 May 2020 19:13:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdIXd-0001pS-11
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 19:13:42 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id ABF472A0F8C;
 Mon, 25 May 2020 20:13:39 +0100 (BST)
Date: Mon, 25 May 2020 21:13:36 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 11/19] mtd: rawnand: Fix nand_setup_data_interface()
 description
Message-ID: <20200525211336.35007d1d@collabora.com>
In-Reply-To: <20200525174239.11349-12-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-12-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_121341_198882_AA42F3D7 
X-CRM114-Status: GOOD (  18.93  )
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 19:42:31 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This is a copy/paste error and belongs to nand_init_data_interface()
> description.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_base.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index d446394a2ea0..c8f5d4557ed5 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -941,11 +941,8 @@ static int nand_reset_data_interface(struct nand_chip *chip, int chipnr)
>   * @chip: The NAND chip
>   * @chipnr: Internal die id
>   *
> - * Find and configure the best data interface and NAND timings supported by
> - * the chip and the driver.
> - * First tries to retrieve supported timing modes from ONFI information,
> - * and if the NAND chip does not support ONFI, relies on the
> - * ->onfi_timing_mode_default specified in the nand_ids table.
> + * Configure what has been reported to be the best data interface and NAND
> + * timings supported by the chip and the driver.
>   *
>   * Returns 0 for success or negative error code otherwise.
>   */


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
