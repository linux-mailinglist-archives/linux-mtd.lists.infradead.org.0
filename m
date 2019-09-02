Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B727A50E1
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Sep 2019 10:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=id2p2kcNu+EQTo+DNvPq/8rcz+WqqPuN5q4Esitsp2k=; b=ZBZKrrhZWeTS88
	VRth6RGEjqo77iyrJy2A0+Q5PRxgm6bk3nK7Yh2H/oFlR1pFiqO4L27Z93i2Kyg3VBsmPh2HtPr4b
	EjvZk1q68RwRYXsUQ1/Pnwrwj1xMJGIA2eGh5Y50aJLAaEYJLtM2p/98hTPYDDNCgxaEGB+40oh1d
	7jn4gKBJ0VrHnIGP3Hc39+lkpSzHfHO77oapiVP0uRncIusXu5/S952SUJw/3Qt0v8ZSFxGH+LTSk
	Xkv8lfKZ1kEmZyIS6GBGduEJFYT7JuiLGvLBi/TjFwQuNJDs8BR3nWA6B2KqeSYmG0XIBJdPsdges
	Fo0u5bjMT4Illc1liM4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hNC-0007or-TU; Mon, 02 Sep 2019 08:07:38 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hMs-0007oA-OC
 for linux-mtd@lists.infradead.org; Mon, 02 Sep 2019 08:07:20 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8B111227A8B; Mon,  2 Sep 2019 10:07:15 +0200 (CEST)
Date: Mon, 2 Sep 2019 10:07:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: linux-mtd@lists.infradead.org
Subject: Re: [PATCH 01/26] mtd/maps/pxa2xx: use ioremap_cache insted of
 ioremap_cached
Message-ID: <20190902080715.GA29458@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817073253.27819-2-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_010718_940828_6334FAB6 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Mtd maintainers, can you pick this one up for 5.4?

On Sat, Aug 17, 2019 at 09:32:28AM +0200, Christoph Hellwig wrote:
> pxa2xx-flash is the only user of ioremap_cached, which is an alias
> for ioremap_cache anyway.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/mtd/maps/pxa2xx-flash.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/maps/pxa2xx-flash.c b/drivers/mtd/maps/pxa2xx-flash.c
> index cebb346877a9..7d96758a8f04 100644
> --- a/drivers/mtd/maps/pxa2xx-flash.c
> +++ b/drivers/mtd/maps/pxa2xx-flash.c
> @@ -68,8 +68,7 @@ static int pxa2xx_flash_probe(struct platform_device *pdev)
>  		       info->map.name);
>  		return -ENOMEM;
>  	}
> -	info->map.cached =
> -		ioremap_cached(info->map.phys, info->map.size);
> +	info->map.cached = ioremap_cache(info->map.phys, info->map.size);
>  	if (!info->map.cached)
>  		printk(KERN_WARNING "Failed to ioremap cached %s\n",
>  		       info->map.name);
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
---end quoted text---

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
