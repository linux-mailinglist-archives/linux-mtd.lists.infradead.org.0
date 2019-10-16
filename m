Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DABB0D87FB
	for <lists+linux-mtd@lfdr.de>; Wed, 16 Oct 2019 07:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z/j0nyLuPEGGr4/oLDmBx806WNuuzKJ06g1M5w8HqbQ=; b=ZHjCii55BTN8W+lhi7MNIPX9Zp
	1C718lGEkPtJz/dPnluWDrcQxUdOzQMioUsAv0r6vmjJXEApFK7hhpQdwAPa2IDWe/vp27P6ag6O6
	BXgFhopUFCk7xVudKTmPU16nV8mqVu2WxPK3rithM2SA/rzYBa8nBJHB8hg1KNNbxftsc7cCrbNzN
	i5PvU4rt5KykOzZ/3emi0Obd1FDmfPYgdM9FiVcygrFUzEgSgJCAVLOqApUnhCOIweJ28a+5B5qy2
	KNAppJI9mIsehZrjqoB88gXBacw+G3eeLho1cZqPtjmJzqYExEaxVgJRi5lQuuDlvU9o3MYu4PNoh
	LX5EALxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKbhI-000212-1E; Wed, 16 Oct 2019 05:18:08 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKbh9-000205-Ds
 for linux-mtd@lists.infradead.org; Wed, 16 Oct 2019 05:18:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9G5He9W083242;
 Wed, 16 Oct 2019 00:17:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571203060;
 bh=H3CPe5U22/jDXdAD/ECvTyS90TSF+QdnSjgyAOfuCZc=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=T+0NIBv8giAhpJJ8aG809CcDai4lbkbRmZr8G81jorU0YaiPXnaGXzB57tBNUGmda
 gB9RlXOMbkhAgVI7qik1B1YO7T0squ8b6Q//8p8Jx/e/V0lFRZCFRyKB1ovOk2XxeG
 nzxXDoAVdUILDZUfyqaW7SsOs9uD337Ac5EMgvBg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9G5HeBs060096;
 Wed, 16 Oct 2019 00:17:40 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 16
 Oct 2019 00:17:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 16 Oct 2019 00:17:39 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9G5Hbbq031765;
 Wed, 16 Oct 2019 00:17:37 -0500
Subject: Re: [PATCH] mtd: spi-nor: fix silent truncation in spi_nor_read()
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Marek
 Vasut <marek.vasut@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, <linux-mtd@lists.infradead.org>
References: <72e77a25-fe33-b88e-bfe2-654e10281fba@cogentembedded.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <04bdd57e-5b5b-55ce-dc9c-e04097af8e27@ti.com>
Date: Wed, 16 Oct 2019 10:48:06 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <72e77a25-fe33-b88e-bfe2-654e10281fba@cogentembedded.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_221759_543643_2F3643EF 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Sergei,

On 16/10/19 1:53 AM, Sergei Shtylyov wrote:
> spi_nor_read() assigns the result of 'ssize_t spi_nor_read_data()' to
> an 'int ret' variable, where the silent truncation isn't really valid --
> ssize_t is a 64-bit type and *int* is a 32-bit type on 64-bit machines.
> 

Good catch! Curious to know if you did observe any real issue because of
this bug?

Regards
Vignesh

> Fixes: 59451e1233bd ("mtd: spi-nor: change return value of read/write")
> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
> 
> ---
> This patch is against of the 'mtd/fixes' branch of the MTD 'linux.git' repo.
> 
>  drivers/mtd/spi-nor/spi-nor.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Index: linux/drivers/mtd/spi-nor/spi-nor.c
> ===================================================================
> --- linux.orig/drivers/mtd/spi-nor/spi-nor.c
> +++ linux/drivers/mtd/spi-nor/spi-nor.c
> @@ -2544,7 +2544,7 @@ static int spi_nor_read(struct mtd_info
>  			size_t *retlen, u_char *buf)
>  {
>  	struct spi_nor *nor = mtd_to_spi_nor(mtd);
> -	int ret;
> +	ssize_t ret;
>  
>  	dev_dbg(nor->dev, "from 0x%08x, len %zd\n", (u32)from, len);
>  
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
