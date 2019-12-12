Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD9511C1D9
	for <lists+linux-mtd@lfdr.de>; Thu, 12 Dec 2019 02:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npmkNmUBFdAhmdVu85xB3Iej8Bp+YFf4Sxv00iXHqpE=; b=ChayalUOC8SCfI
	wnyDC8Pm3x9Q9KYcjMT6oZmp4hkRV6s+Omh+irIzqbYtitvr3wvYX1nsIXHSSLUGCSnRzWD/2zslY
	a1ExrkiPf4psW2/mpxNhThyWlJzkgejmSEhhy6oOLf6ShlqcSPWSHY+dtKb0J8/x+tkiJGxLp9bFJ
	ifhChNzAGo3yVTPFNSSgmiiraOohUfIxn0skOZr6iD/lxJL75yczPijErwU7g9JaF2PWbeMnNQi1y
	mnD/4vAJ78Iu2mrwAn9eArIEgVbPwfcIqXAvPdJojrsmscFOY7EvVkO+6eH6JrN5IGqi/xHYNF8b4
	ghQn9CaeHspgzW3P1tdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCva-00051F-CU; Thu, 12 Dec 2019 01:06:02 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCvS-0004zs-0F
 for linux-mtd@lists.infradead.org; Thu, 12 Dec 2019 01:05:55 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 47YFwX40CXz1rQBK;
 Thu, 12 Dec 2019 02:05:48 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 47YFwX2Q08z1qqkq;
 Thu, 12 Dec 2019 02:05:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id q-W7gOHmTDAQ; Thu, 12 Dec 2019 02:04:36 +0100 (CET)
X-Auth-Info: ryjPqBpzHulkb8n+Csi9otVruh6YyTMa0AaPwPgVcBA=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 12 Dec 2019 02:04:35 +0100 (CET)
Subject: Re: [PATCH v2 2/2] mtd: rawnand: denali_dt: add reset controlling
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-mtd@lists.infradead.org
References: <20191211054538.8283-1-yamada.masahiro@socionext.com>
 <20191211054538.8283-2-yamada.masahiro@socionext.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <399bb8ab-74c5-1be3-4156-6d854738b548@denx.de>
Date: Thu, 12 Dec 2019 01:22:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211054538.8283-2-yamada.masahiro@socionext.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_170554_343005_9AACBEF1 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Ley Foon Tan <ley.foon.tan@intel.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 12/11/19 6:45 AM, Masahiro Yamada wrote:
[...]
> diff --git a/drivers/mtd/nand/raw/denali_dt.c b/drivers/mtd/nand/raw/denali_dt.c
> index 8b779a899dcf..9a294c3f6ec8 100644
> --- a/drivers/mtd/nand/raw/denali_dt.c
> +++ b/drivers/mtd/nand/raw/denali_dt.c
> @@ -6,6 +6,7 @@
>   */
>  
>  #include <linux/clk.h>
> +#include <linux/delay.h>
>  #include <linux/err.h>
>  #include <linux/io.h>
>  #include <linux/ioport.h>
> @@ -14,6 +15,7 @@
>  #include <linux/of.h>
>  #include <linux/of_device.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset.h>
>  
>  #include "denali.h"
>  
> @@ -22,6 +24,8 @@ struct denali_dt {
>  	struct clk *clk;	/* core clock */
>  	struct clk *clk_x;	/* bus interface clock */
>  	struct clk *clk_ecc;	/* ECC circuit clock */
> +	struct reset_control *rst;	/* core reset */
> +	struct reset_control *rst_reg;	/* register reset */
>  };
>  
>  struct denali_dt_data {
> @@ -151,6 +155,14 @@ static int denali_dt_probe(struct platform_device *pdev)
>  	if (IS_ERR(dt->clk_ecc))
>  		return PTR_ERR(dt->clk_ecc);
>  
> +	dt->rst = devm_reset_control_get_optional_shared(dev, "nand");
> +	if (IS_ERR(dt->rst))
> +		return PTR_ERR(dt->rst);
> +
> +	dt->rst_reg = devm_reset_control_get_optional_shared(dev, "reg");
> +	if (IS_ERR(dt->rst_reg))
> +		return PTR_ERR(dt->rst_reg);
> +
>  	ret = clk_prepare_enable(dt->clk);
>  	if (ret)
>  		return ret;
> @@ -166,10 +178,30 @@ static int denali_dt_probe(struct platform_device *pdev)
>  	denali->clk_rate = clk_get_rate(dt->clk);
>  	denali->clk_x_rate = clk_get_rate(dt->clk_x);
>  
> -	ret = denali_init(denali);
> +	/*
> +	 * Deassert the register reset, and the core reset in this order.
> +	 * Deasserting the core reset while the register reset is asserted
> +	 * will cause unpredictable behavior in the controller.
> +	 */
> +	ret = reset_control_deassert(dt->rst_reg);
>  	if (ret)
>  		goto out_disable_clk_ecc;
>  
> +	ret = reset_control_deassert(dt->rst);
> +	if (ret)
> +		goto out_assert_rst_reg;
> +
> +	/*
> +	 * When the reset is deasserted, the initialization sequence is kicked
> +	 * (bootstrap process). The driver must wait until it finished.
> +	 * Otherwise, it will result in unpredictable behavior.
> +	 */
> +	usleep_range(200, 1000);
> +
> +	ret = denali_init(denali);
> +	if (ret)
> +		goto out_assert_rst;
> +
>  	for_each_child_of_node(dev->of_node, np) {
>  		ret = denali_dt_chip_init(denali, np);
>  		if (ret) {
> @@ -184,6 +216,10 @@ static int denali_dt_probe(struct platform_device *pdev)
>  
>  out_remove_denali:
>  	denali_remove(denali);
> +out_assert_rst:
> +	reset_control_assert(dt->rst);
> +out_assert_rst_reg:
> +	reset_control_assert(dt->rst_reg);

Maybe you can use devm_add_action_or_reset() here , like in e.g.
drivers/input/touchscreen/ili210x.c , to avoid this unwinding ?

[...]

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
