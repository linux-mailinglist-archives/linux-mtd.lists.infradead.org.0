Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980AB8E91C
	for <lists+linux-mtd@lfdr.de>; Thu, 15 Aug 2019 12:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Subject:To:MIME-Version:From:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3SCoCdXr7Yf52E7qQ55nAZsC6mIqA90X+BLgaBrILw=; b=RvLGApVwG64Wtp
	HPT54EmJqDnSeBK2d8RVQ8SSjSEGW+q1MX9p4ALBQvee0ezKy4C3ytrAR/1GJ1lWXMV2Nwtefpow+
	FQJiXtp5c4F21OJUxKWx+NiIdkGP0Oeroend9xK1rE2QKsP0GBmdd+fmtT0qKBdnK9W3Q8nYkEDLG
	zPwe4XPai/eoaGVZDiW5cQySH3oTs/pIZj1xAki/A7fwSdlevM14x/0/74wS1mHusaqDFtzrxd+UM
	WZ2rc7Aab1SZb3zRYgtDiF+r6/oR4tflrvoux5FgADsQQCQMhhnBVdk7ZM1AH/Dq5GOcHGlJebs89
	ORjC0WqH2FjiBsdEkQOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyD7H-00077g-UK; Thu, 15 Aug 2019 10:36:24 +0000
Received: from mx01-fr.bfs.de ([193.174.231.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyD6z-00076z-V0
 for linux-mtd@lists.infradead.org; Thu, 15 Aug 2019 10:36:07 +0000
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
 by mx01-fr.bfs.de (Postfix) with ESMTPS id C1A2D201EB;
 Thu, 15 Aug 2019 12:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901; 
 t=1565865351;
 h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E3pPh83n6WDN4w57pjyLOZjqUHHOxaQOSrbjRAU5Bkc=;
 b=bOQdf41keIf4V5DkNQYBFyHtan1ucaP0R3FTwJ/McLrMFPbprCD4+Dngqdl7M4Htv53TFw
 mKxuR3rJrf8Uvh5/K0HAJCRUJEXCfOYWTs795kKCbfPjrgDxzFRZc4p+f4K9xhwvazF81N
 fuJL0gaUOVoaawdpiYo6RI6mu4lTmB5x9O6itEfoeQ67nrDAnlx3CAMmfwb9xJhiz+aK+S
 juLXnRScAQU+DlJecwH5CPf7BxQCY4RpZ3fhocHC1G9W2rJBcvxS7L0b72MNJUdKymdkv8
 TnpYXWSlTXU2JaJtXSsOrtjgf7mNgFZcvmgK36xxOwhWpU3Vgd+2DzjuXqlgpQ==
Received: from [134.92.181.33] (unknown [134.92.181.33])
 by mail-fr.bfs.de (Postfix) with ESMTPS id C7B1DBEEBD;
 Thu, 15 Aug 2019 12:35:49 +0200 (CEST)
Message-ID: <5D553585.2020907@bfs.de>
Date: Thu, 15 Aug 2019 12:35:49 +0200
From: walter harms <wharms@bfs.de>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de;
 rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
To: kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] mtd: spi-nor: Fix an error code in spi_nor_read_raw()
References: <20190815083252.GD27238@mwanda>
In-Reply-To: <20190815083252.GD27238@mwanda>
X-Spam-Status: No, score=-3.10
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-3.10 / 7.00];
 HAS_REPLYTO(0.00)[wharms@bfs.de]; TO_DN_SOME(0.00)[];
 REPLYTO_ADDR_EQ_FROM(0.00)[]; RCPT_COUNT_SEVEN(0.00)[11];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; BAYES_HAM(-3.00)[100.00%];
 ARC_NA(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 NEURAL_HAM(-0.00)[-0.999,0]; RCVD_COUNT_TWO(0.00)[2];
 RCVD_TLS_ALL(0.00)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_033606_169300_937F9102 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
 [134.92.181.33 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: wharms@bfs.de
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 Cyrille Pitchen <cyrille.pitchen@microchip.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



Am 15.08.2019 10:32, schrieb Dan Carpenter:
> The problem is that if "ret" is negative then when we check if
> "ret > len", that condition is going to be true because of type
> promotion.  So this patch re-orders the code to check for negatives
> first and preserve those error codes.
> 
> Fixes: f384b352cbf0 ("mtd: spi-nor: parse Serial Flash Discoverable Parameters (SFDP) tables")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 63af87609bac..986b0754495d 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2903,10 +2903,10 @@ static int spi_nor_read_raw(struct spi_nor *nor, u32 addr, size_t len, u8 *buf)
>  
>  	while (len) {
>  		ret = spi_nor_read_data(nor, addr, len, buf);
> -		if (!ret || ret > len)
> -			return -EIO;
>  		if (ret < 0)
>  			return ret;
> +		if (!ret || ret > len)
> +			return -EIO;

Bonuspoints to make this more readable:

	if (ret==0 || ret > len)
		return -EIO;

that makes the intention more obvious.

JM2C,
 wh

>  
>  		buf += ret;
>  		addr += ret;

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
