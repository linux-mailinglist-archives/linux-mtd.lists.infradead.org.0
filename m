Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA8A180848
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 20:40:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYcbazdmGXto+U1nWmB2RJHBsIbuURnSq8b7PPCKyw8=; b=jYT9fruYKi0he0
	fzjcdYgAyzjA+NuAXOMqdHKQevGAO+7PM1jaKgZrKi7ygM9SfE2SQXMFuf1bfh+kmr/Q/elz01cgO
	Jc4ljieKlEajY+odBDZmCvdUDmgQ5eXT+gMg8VVh50gZ3eB8+IeBtNWsYsB4+XcF7GAjfpvoPhNmK
	jKoDrJsX+psFYmH3tsGbSlWLCY7sdM3sZWlmIlugaLUyqrPlIXpxlmM3K8fE3fVv4dcEhcFJfnfc9
	yMN9vWwV+hnPSa/HT4REuLFAiGYcbviKBm8Z/Ebwz8GpiV5CC06XKGmt8hxvkJYoz7P4fKXKR3L9u
	kjH9DKXwgf0lvoqO4ejg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkjH-00062e-OO; Tue, 10 Mar 2020 19:39:51 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkj6-00062H-IZ
 for linux-mtd@lists.infradead.org; Tue, 10 Mar 2020 19:39:42 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E875429141E;
 Tue, 10 Mar 2020 19:39:37 +0000 (GMT)
Date: Tue, 10 Mar 2020 20:39:30 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v3 3/4] mtd: rawnand: Add support manufacturer specific
 suspend/resume operation
Message-ID: <20200310203930.2b8c0cfb@collabora.com>
In-Reply-To: <1583220084-10890-4-git-send-email-masonccyang@mxic.com.tw>
References: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
 <1583220084-10890-4-git-send-email-masonccyang@mxic.com.tw>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_123940_798584_3619045B 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 richard@nod.at, s.hauer@pengutronix.de, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org, stefan@agner.ch, rfontana@redhat.com,
 linux-mtd@lists.infradead.org, frieder.schrempf@kontron.de,
 miquel.raynal@bootlin.com, tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue,  3 Mar 2020 15:21:23 +0800
Mason Yang <masonccyang@mxic.com.tw> wrote:

> Patch nand_suspend() & nand_resume() for manufacturer specific
> suspend/resume operation.
> 
> Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> Reported-by: kbuild test robot <lkp@intel.com>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c | 11 ++++++++---
>  include/linux/mtd/rawnand.h      |  4 ++++
>  2 files changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 769be81..b44e460 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -4327,7 +4327,9 @@ static int nand_suspend(struct mtd_info *mtd)
>  	struct nand_chip *chip = mtd_to_nand(mtd);
>  
>  	mutex_lock(&chip->lock);
> -	chip->suspended = 1;
> +	if (chip->_suspend)
> +		if (!chip->_suspend(chip))
> +			chip->suspended = 1;
>  	mutex_unlock(&chip->lock);
>  
>  	return 0;
> @@ -4342,11 +4344,14 @@ static void nand_resume(struct mtd_info *mtd)
>  	struct nand_chip *chip = mtd_to_nand(mtd);
>  
>  	mutex_lock(&chip->lock);
> -	if (chip->suspended)
> +	if (chip->suspended) {
> +		if (chip->_resume)
> +			chip->_resume(chip);
>  		chip->suspended = 0;
> -	else
> +	} else {
>  		pr_err("%s called for a chip which is not in suspended state\n",
>  			__func__);
> +	}
>  	mutex_unlock(&chip->lock);
>  }
>  
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index bc2fa3c..c0055ed 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -1064,6 +1064,8 @@ struct nand_legacy {
>   * @lock:		lock protecting the suspended field. Also used to
>   *			serialize accesses to the NAND device.
>   * @suspended:		set to 1 when the device is suspended, 0 when it's not.
> + * @_suspend:		[REPLACEABLE] specific NAND device suspend operation
> + * @_resume:		[REPLACEABLE] specific NAND device resume operation

Given you added 4 more methods in this series, I think now would be a
good time to introduce a nand_chip_ops struct grouping all ops together.

>   * @bbt:		[INTERN] bad block table pointer
>   * @bbt_td:		[REPLACEABLE] bad block table descriptor for flash
>   *			lookup.
> @@ -1119,6 +1121,8 @@ struct nand_chip {
>  
>  	struct mutex lock;
>  	unsigned int suspended : 1;
> +	int (*_suspend)(struct nand_chip *chip);
> +	void (*_resume)(struct nand_chip *chip);
>  
>  	uint8_t *oob_poi;
>  	struct nand_controller *controller;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
