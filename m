Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD8513D0C6
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Jan 2020 00:49:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeZYMAySPp4dlwrlRGCecyhk+rN8bTT27h1NqITTIts=; b=CJumNUzhjVVKsx
	GvvZMwX+46xBi33Dcj6pgxmeXz2lN+vQWis1VdwoVkRqYXoVSTAK5ZJ+m4kb6GOvIZOW2ChtVjIjl
	2VhOqdQ2Dt2BSJMucTHZVzwuEi2WTLheZwWOUGnGxXFhz7AdGOXzIYcW9jkE9tu1X/rcoQ+aRuqek
	DtU6tMdhI9wgbctVOZSI6pN/I6ZH9jBVy0HmgIfGN395BYVlBH8zhUtzh+2rX7cJ4WoeD/8hbeaCx
	FGqXJGYLUnslYrfMJv6+SO4n/wMwZaKMHvVOEBeTfCUQDFQS7Yo/1c6o6GRrJTFdNBf0eZS/zx8FU
	KgeNgpx12yl+Om8crXjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsPJ-0001D6-Vw; Wed, 15 Jan 2020 23:49:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irsPB-0001CH-Mr
 for linux-mtd@lists.infradead.org; Wed, 15 Jan 2020 23:48:59 +0000
Received: by mail-pf1-x444.google.com with SMTP id z16so9282944pfk.0
 for <linux-mtd@lists.infradead.org>; Wed, 15 Jan 2020 15:48:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=L7QJ/f4bNLbu+zgtCVRouMzQLIb9HBj4OTPjr+5W3DQ=;
 b=BTau1aLSM6XrFVbAH+llCS5d4H+w35zbbek1SIBSul6t2IoGnURs9KRucAaII9sIAA
 vzmCi3yFZcXsVxej1C/1WF4hUzQ0+OBzSVqoRcT9RfWZPUDIvh8ymfzXODzSzFAagVn4
 NFVg/I20YGMksvLl8JG/RCdxGgq4bvo05sqEPbBqkkAVzLqoQ6IiwZjKbOebTDdczIm6
 OX9M0LTO+0F47835owNuEjvvkSwrEmsa42vn/rkPqrtrT1GuneEFjPEjknBte3l1lPK7
 TEkMxBfV2v0/G45kv0htZmEEdRhbt8oIAQYJEv8gPLfkH3vIGV3KmO40OXcBO/E/nkHz
 0fNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=L7QJ/f4bNLbu+zgtCVRouMzQLIb9HBj4OTPjr+5W3DQ=;
 b=rNZUdVGpw7aD/8sjLxx/0Id7i8wCxFWvph1ZS1HXQoCDFKaIMUYUYDzAiW07qksXuC
 4BGg5K/+k6esEXHCpzha7Gx/E/D3fQSpqzliyRFjJ8w9XvpsgGarlV4+h2pl9pRYBeex
 tNx9xfmk6Y+L5HFEOV2ES4g9Opxo0cQMWhBj3oJWARRf2GACxm6HdgMJ9rXEpm4FmNHF
 b7ad3Y/YMf2UfcTBTcItm5aIQZlQJDVdIzIJeiASpWgVmQlppG+zi9lQs7XQRAJul1bF
 6rOS4H85kKxNoULBCCa+j73VA2Jq1G8r3qm06ugshziDesT0Acsd7ZwEj3ZLQBiMe1U4
 IuYw==
X-Gm-Message-State: APjAAAU62DFDJngwOdEW7kyau6CM8kCv205uA+rzYOoJGLb3rPyKGSGX
 nFDy5HGAWGK4ty+g5GCqWUO80A==
X-Google-Smtp-Source: APXvYqzQezgaIHoyQ/jj/ag6xo34GmtpMCzDlxA+NN9cqOv5Lk+Ja1eNh7pAY5vJ4rACqZNsogl00g==
X-Received: by 2002:a63:214e:: with SMTP id s14mr35566633pgm.428.1579132136730; 
 Wed, 15 Jan 2020 15:48:56 -0800 (PST)
Received: from localhost ([2601:602:9200:a1a5:2952:4c53:16b9:8f97])
 by smtp.gmail.com with ESMTPSA id j14sm21588497pgs.57.2020.01.15.15.48.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Jan 2020 15:48:56 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH resend] mtd: maps: physmap: Add minimal Runtime PM support
In-Reply-To: <20200115131323.6883-1-geert+renesas@glider.be>
References: <20200115131323.6883-1-geert+renesas@glider.be>
Date: Wed, 15 Jan 2020 15:48:53 -0800
Message-ID: <7hk15s9t7e.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_154857_809616_591F7523 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-pm@vger.kernel.org,
 Kevin Hilman <khilman@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Geert Uytterhoeven <geert+renesas@glider.be> writes:

> Add minimal runtime PM support (enable on probe, disable on remove), to
> ensure proper operation with a parent device that uses runtime PM.
>
> This is needed on systems where the FLASH is connected to a bus
> controller that is contained in a PM domain and/or has a gateable
> functional clock.  In such cases, before accessing any device connected
> to the external bus, the PM domain must be powered up, and/or the
> functional clock must be enabled, which is typically handled through
> runtime PM by the bus controller driver.
>
> An example of this is the Renesas APE6-EVM development board, which has
> an Ethernet controller and a CFI FLASH connected to the Bus State
> Controller (BSC) of an R-Mobile APE6 SoC.
> As long as the Ethernet driver, which had Runtime PM support since
> commit 3a611e26e958b037 ("net/smsc911x: Add minimal runtime PM
> support"), keeps the BSC powered, accessing the FLASH works.
> When the ethernet node in r8a73a4-ape6evm.dts is disabled, the BSC is
> never powered up, and the kernel crashes when trying to access the
> FLASH:
>
>     Unhandled fault: imprecise external abort (0x1406) at 0x00000000
>     pgd = (ptrval)
>     [00000000] *pgd=7fef2835
>     Internal error: : 1406 [#1] SMP ARM
>     CPU: 0 PID: 122 Comm: hd Tainted: G        W         5.5.0-rc1-ape6evm-00814-g38ca966db25b9dbd-dirty #136
>     Hardware name: Generic R8A73A4 (Flattened Device Tree)
>     PC is at chip_ready+0x12c/0x380
>     LR is at chip_ready+0x10c/0x380
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

> ---
> Probably the device should be powered down after probing, and powered
> up/down on-demand in the various {get,put}_chip() functions.  However,
> that is an optimization which touches more intimidate details of the
> internal MTD API, and can be done later.

Agreed.  Without that, the BSC (in your example) will never get powered
off as long as there's a flash device pobed.

Kevin

> ---
>  drivers/mtd/maps/physmap-core.c | 20 +++++++++++++++-----
>  1 file changed, 15 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mtd/maps/physmap-core.c b/drivers/mtd/maps/physmap-core.c
> index a9f7964e2edb6668..8f7f966fa9a7ee8a 100644
> --- a/drivers/mtd/maps/physmap-core.c
> +++ b/drivers/mtd/maps/physmap-core.c
> @@ -38,6 +38,7 @@
>  #include <linux/mtd/cfi_endian.h>
>  #include <linux/io.h>
>  #include <linux/of_device.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/gpio/consumer.h>
>  
>  #include "physmap-gemini.h"
> @@ -64,16 +65,16 @@ static int physmap_flash_remove(struct platform_device *dev)
>  {
>  	struct physmap_flash_info *info;
>  	struct physmap_flash_data *physmap_data;
> -	int i, err;
> +	int i, err = 0;
>  
>  	info = platform_get_drvdata(dev);
>  	if (!info)
> -		return 0;
> +		goto out;
>  
>  	if (info->cmtd) {
>  		err = mtd_device_unregister(info->cmtd);
>  		if (err)
> -			return err;
> +			goto out;
>  
>  		if (info->cmtd != info->mtds[0])
>  			mtd_concat_destroy(info->cmtd);
> @@ -88,7 +89,10 @@ static int physmap_flash_remove(struct platform_device *dev)
>  	if (physmap_data && physmap_data->exit)
>  		physmap_data->exit(dev);
>  
> -	return 0;
> +out:
> +	pm_runtime_put(&dev->dev);
> +	pm_runtime_disable(&dev->dev);
> +	return err;
>  }
>  
>  static void physmap_set_vpp(struct map_info *map, int state)
> @@ -484,13 +488,19 @@ static int physmap_flash_probe(struct platform_device *dev)
>  		return -EINVAL;
>  	}
>  
> +	pm_runtime_enable(&dev->dev);
> +	pm_runtime_get_sync(&dev->dev);
> +
>  	if (dev->dev.of_node)
>  		err = physmap_flash_of_init(dev);
>  	else
>  		err = physmap_flash_pdata_init(dev);
>  
> -	if (err)
> +	if (err) {
> +		pm_runtime_put(&dev->dev);
> +		pm_runtime_disable(&dev->dev);
>  		return err;
> +	}
>  
>  	for (i = 0; i < info->nmaps; i++) {
>  		struct resource *res;
> -- 
> 2.17.1

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
