Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCDE1E148F
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 21:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hSzQfOiNEYYY4pmAbuT+qf5QwdgL3zXZln1KFbg+HY=; b=LU8dNVy9Rs1Hmj
	nAKUH6/ETIikkKphy6UQGXzs2N623+lH4nJ2m+7E/W/QYjfw5h2Udbl23q9QDtjahHWsD6XRDlFMn
	jIqCjWREL5oYPuqo7CzLgxQoJin2BnoqGJD3pGXQescyFBKcO6OIiqT1yAupdVsRkzDnZ4DL/ac1v
	XJBl5buf1uVws8D1wKz8xQlATjbVodek2LqgNNqMJnNnJQKGPg/EEw3fGfMcpjADwlcGCLpJeQVsV
	3w6ILZatnW1wR+O8e+L7i0yG2HBEtaP+Sfl8Jud9CZOzCTT5hAmcJejv7NleBZ5/wK6nxdLtALLZU
	nOWVO6WqcSoBXDxsaHlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdIMQ-0003Wk-VL; Mon, 25 May 2020 19:02:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdIMH-0003WO-Ax
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 19:01:58 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0B2AE2A047D;
 Mon, 25 May 2020 20:01:56 +0100 (BST)
Date: Mon, 25 May 2020 21:01:52 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 07/19] mtd: rawnand: Compare the actual timing values
Message-ID: <20200525210152.39a3a9a8@collabora.com>
In-Reply-To: <20200525174239.11349-8-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-8-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_120157_512914_BECC3999 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 19:42:27 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Avoid relying just on the default timing mode to discriminate if the
> data interface must be restored. Do a memcmp() instead.

Maybe you should explain why you do that.

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_base.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 14f1359a60b8..7567c973964b 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -2512,7 +2512,8 @@ int nand_reset(struct nand_chip *chip, int chipnr)
>  	 * nand_setup_data_interface() uses ->set/get_features() which would
>  	 * fail anyway as the parameter page is not available yet.
>  	 */
> -	if (!chip->onfi_timing_mode_default)
> +	if (!memcmp(&chip->data_interface, &saved_data_intf,
> +		    sizeof(saved_data_intf)))
>  		return 0;
>  
>  	chip->data_interface = saved_data_intf;

We should probably have the data_interface object allocated at some
point, and play with pointers instead of copying the data around.
That's possible now that you've patched all drivers to use nand_scan()
and control the cleanup path.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
