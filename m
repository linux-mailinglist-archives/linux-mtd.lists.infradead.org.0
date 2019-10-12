Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B004D4E80
	for <lists+linux-mtd@lfdr.de>; Sat, 12 Oct 2019 11:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/uvS00G0Ut3n9dbkq9FyTtFIAMISdfGxjkf6rxBbJA=; b=b0fTemWnMv+HU8
	ITK8swmjtSqwCLz20nCcvUhQ1ejDh24mhaFyi7vx7yk8jBv4Fo/ySLpV8DOqn2pQqrFTQ+nAPyfkA
	qjGgD50WdktODaP0rXcDQ6zQ5XQsKC+3WLhgUuo73j+V8YwQQKSPXXJcc/ko4hLcqN5EVH0slc48n
	2UMiI8Ppl0/uGlZ8NurOSUoYcdM1PVjHZUKePHkJySC6w6ydwJftpVUN1aaBEH0D00XLSXp1Xm4h2
	Cra354srDmVuwkIgyHrzl69p92FRZNB3qjrfp6A7d33mCWlRsw8Rt8a2mjSczie2HiIHvJs5GwEzt
	QuNep9+J43tYPy92FYuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDVf-0006Sv-Nz; Sat, 12 Oct 2019 09:16:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDVH-0006G5-Br; Sat, 12 Oct 2019 09:16:00 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AF4D72912E9;
 Sat, 12 Oct 2019 10:15:57 +0100 (BST)
Date: Sat, 12 Oct 2019 11:15:54 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 06/40] mtd: rawnand: Use the new ECC engine type
 enumeration
Message-ID: <20191012111554.53d5796d@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190919193141.7865-7-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-7-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_021559_548095_7D599193 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 21:31:06 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:


> diff --git a/include/linux/platform_data/mtd-nand-s3c2410.h b/include/linux/platform_data/mtd-nand-s3c2410.h
> index 08675b16f9e1..e30cb228c0d7 100644
> --- a/include/linux/platform_data/mtd-nand-s3c2410.h
> +++ b/include/linux/platform_data/mtd-nand-s3c2410.h
> @@ -49,7 +49,7 @@ struct s3c2410_platform_nand {
>  
>  	unsigned int	ignore_unset_ecc:1;
>  
> -	enum nand_ecc_mode	ecc_mode;
> +	enum nand_ecc_engine_type ecc_mode;

I know it's a pain, but can we also change the field names?
s/mode/engine_type/ ?

>  
>  	int			nr_sets;
>  	struct s3c2410_nand_set *sets;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
