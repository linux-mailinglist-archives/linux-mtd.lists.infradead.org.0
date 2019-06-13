Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F5F434F6
	for <lists+linux-mtd@lfdr.de>; Thu, 13 Jun 2019 11:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEs6o/3uclqnYIX645AjGH6Uhy50VQlu/g6kKAsVzTg=; b=mqJ2iPJuv/ahTk
	8rS+vC8qQcwJPk/MNNt5QshYHtNSxsy6e8PvSPbahCgMU6pzebpP5ZRFIEFs+j3v7wfVJqDxDa2MN
	/HMmOp1BSdTdL5Ws6wX3B3t2Bdys2TrXrFRO+uKHvJZoios2SoC0SFTTYmPvZp/N9+uMkKc7/3+Co
	NPLQauD392/Un6BUyCdhDRZpHLudZK34hMoPmxY3qbdO/x0hmQPPpiyAHIW3VoLsIuGU0pNhefE0Q
	7ntynL1RmwEaAsuS3CW8YUeNfgQS/8xu1yWS/76it2F4aIS0D5uZjg4FhDDaT2tK3iTJ0WmHu1kv7
	z3ntwQ6fHxK30w4co7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMNE-0005vH-NL; Thu, 13 Jun 2019 09:50:24 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMMz-0005Ia-8t
 for linux-mtd@lists.infradead.org; Thu, 13 Jun 2019 09:50:10 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id D822025B7FA;
 Thu, 13 Jun 2019 19:50:04 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id DC451940483; Thu, 13 Jun 2019 11:50:02 +0200 (CEST)
Date: Thu, 13 Jun 2019 11:50:02 +0200
From: Simon Horman <horms@verge.net.au>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH 15/34] mtd: maps: pismo: simplify getting the adapter of
 a client
Message-ID: <20190613095002.r5shpabxw7jmsmcf@verge.net.au>
References: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
 <20190608105619.593-16-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608105619.593-16-wsa+renesas@sang-engineering.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_025009_468277_F2EC363E 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 12:55:54PM +0200, Wolfram Sang wrote:
> We have a dedicated pointer for that, so use it. Much easier to read and
> less computation involved.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> ---
> 
> Please apply to your subsystem tree.
> 
>  drivers/mtd/maps/pismo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/maps/pismo.c b/drivers/mtd/maps/pismo.c
> index 788d4996e2c1..7fcae3af435c 100644
> --- a/drivers/mtd/maps/pismo.c
> +++ b/drivers/mtd/maps/pismo.c
> @@ -211,7 +211,7 @@ static int pismo_remove(struct i2c_client *client)
>  static int pismo_probe(struct i2c_client *client,
>  		       const struct i2c_device_id *id)
>  {
> -	struct i2c_adapter *adapter = to_i2c_adapter(client->dev.parent);
> +	struct i2c_adapter *adapter = client->adapter;
>  	struct pismo_pdata *pdata = client->dev.platform_data;
>  	struct pismo_eeprom eeprom;
>  	struct pismo_data *pismo;
> -- 
> 2.19.1
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
