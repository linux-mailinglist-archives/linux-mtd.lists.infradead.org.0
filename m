Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 692441C3705
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 12:37:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lVpuFQtqmS49dFN0gVMtBwuypneg9Vi/nZsE3FRR/U=; b=tGfkPgYW1PSuCg
	P1hvrm6StNpDFOyaMx1D4aogUFKhr9Ug8BVuguXlJFXcotTDCh1tFqlvNBh32Pw0Izjas4SkLxaUY
	q+izqo/UgxJFPFvf18quRx/14xgYTgo70zg/+ATreM3UGLqeSrqpW2o+GkWDk/p3eui1Lpr3+yKYD
	5HTpfa+0mBp+eK5z3e+bR/vypep+g8aHYl6JILdUx9klcUdT/neeUnxQoixGQ3tcf88YkI7ferktr
	DEs0jEYfrDa04IDy8//jMLm0uzYXE7HpqwYaObuQPTiv/TICKRecCMhWMSIIE/vlY2Bc1fo6ZyGD8
	Egyz4JdPxdOm2kk+L1lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYTY-000382-2r; Mon, 04 May 2020 10:37:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYTN-00037B-SI
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 10:37:19 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 079F12A0EFD;
 Mon,  4 May 2020 11:37:16 +0100 (BST)
Date: Mon, 4 May 2020 12:37:13 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 07/13] mtd: rawnand: Add a helper to check supported
 operations
Message-ID: <20200504123713.22c7f22f@collabora.com>
In-Reply-To: <20200504095237.1654-8-miquel.raynal@bootlin.com>
References: <20200504095237.1654-1-miquel.raynal@bootlin.com>
 <20200504095237.1654-8-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_033718_045679_81144904 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon,  4 May 2020 11:52:31 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Let's use a helper to clearly check if an operation is supported or not.
> 
> Return -ENOTSUPP when ->exec_op() is not implemented as we cannot know.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/internals.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
> index 9d0caadf940e..b722af7a0b7e 100644
> --- a/drivers/mtd/nand/raw/internals.h
> +++ b/drivers/mtd/nand/raw/internals.h
> @@ -106,6 +106,15 @@ static inline bool nand_has_exec_op(struct nand_chip *chip)
>  	return true;
>  }
>  
> +static inline int nand_check_supported_op(struct nand_chip *chip,
> +					  const struct nand_operation *op)

I would just call that one nand_check_op().

> +{
> +	if (!nand_has_exec_op(chip))
> +		return 0;
> +
> +	return chip->controller->ops->exec_op(chip, op, true);
> +}
> +
>  static inline int nand_exec_op(struct nand_chip *chip,
>  			       const struct nand_operation *op)
>  {


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
