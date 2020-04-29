Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F22771BE341
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 17:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kz6Jc4JDXvbPJFDv+Q8nyoarHmBH9oxOD+4JTGtRhw0=; b=OzuWeN4w3PuXB0
	3nUin71nDOlPPPKYIkhfXzlZOK8JmFc50MglUZQwUdXfgKseFjItZFKY48vdySigAHNLhGWXhJ2GI
	wxy4cOelyqb+xWR0QSOkDNGWsn9asbztZJD/YQ2HOCIevVZYI1+bz5HZin+/6VZvC2EtJoK1ELxZK
	zyNl+NwqM3z/sOQx0Y3Ilu4HtPD78n5O09l6CH5AM3FyqyKhTBLN1dTiJ2L3h6K8m9L16+QDK6BuM
	EEPZ+/mfY5Jx+toy9ug5K6LK39HE75ix468UnsaPVW8ltstXAuiWV2t+lDgmb683/QdbUKriNWBae
	4t5b+l0K3bVHexGmKJBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTp7N-0006uC-2I; Wed, 29 Apr 2020 15:59:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTp47-00044t-8X; Wed, 29 Apr 2020 15:56:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id f13so3117166wrm.13;
 Wed, 29 Apr 2020 08:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6SbdIQ59kmcGdHm6ojgp2EzHoqCR0BLaadGaF/oBCog=;
 b=NcCceDfsh6sgDHZl6ErrCGTPbtJPu1JvJRXxiNVGG8LDez75AzT38KKF1LCgL9aM+f
 HgkSxvwiWX973V8d3628Muidr+dsvtKcsiJ4aTUdWW0g/R4ORU8Vuz9AbrvJkoVWUr8u
 jQL8l8XpBeuFWi1m5hq83MDgyLiEf7k1TkKHLMxTsCTOXqnctEDpDUYYGpgu5hTB112L
 frji5sfqUQUx/rJfHOKtlb8oZ0YHTZoN0IkbAq1CNJji0n3ew8EhTaRV54jEC83YnwoW
 dcMySUL2J71K0ZlOD3nSQtLDZU3gcspJv5iHXO4W02ItvsWZs4Rp8/t2S1+2EmQgaH/U
 t9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6SbdIQ59kmcGdHm6ojgp2EzHoqCR0BLaadGaF/oBCog=;
 b=KIHdlfkI1tGGRaln3k1CyPtNcaFs0XgSiE42YKwpTHaoUKrRUBFvXaV5bXU7lpsgdF
 8af7nRh54mS7Xl3ScTRi+h99EEPhyJ6SkouvfruP9bvOPGqi5IEs4jioUfkwihrzXcSF
 Q4bZq7ombORVVkWZkLQqXCxp7o/4spBdrYmK0UpqhUx05dusyK7bK61bemWyP/VpRKpm
 MqI66XhF5D2EH6y4gG51tfo/A1p3rJ3qo182rm9VK7cQrrsOerbbKn6iHUILodujkG4l
 858XTaUUCHWodRedPfKjNn/TDJbagpSxZ6+pZ+P0/Eaw9pwdn+V8zqizdxvL1FZUUO0D
 lgCw==
X-Gm-Message-State: AGi0Pubp0f+P3pUFAWsW07Es+yJM1LVj8RUfYMIjhvFlFhc0k0thUyoD
 ICaPS9moPBocTq3gS5zJbT0DJBfx
X-Google-Smtp-Source: APiQypIeTQJgeOACveLBv3JF4+7B9bbhTyJzFntbOd4yG43dHQDhNkjcBoFSOugsyQu7gsz6pwucBg==
X-Received: by 2002:a5d:4748:: with SMTP id o8mr39187903wrs.422.1588175759874; 
 Wed, 29 Apr 2020 08:55:59 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i6sm33180448wrc.82.2020.04.29.08.55.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2020 08:55:59 -0700 (PDT)
Subject: Re: [PATCH v5 2/7] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK3188 and others
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
 <20200426100250.14678-3-yifeng.zhao@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <4dbe907c-a6c2-a163-0cab-234b08336b5c@gmail.com>
Date: Wed, 29 Apr 2020 17:55:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200426100250.14678-3-yifeng.zhao@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_085603_494984_86D117BD 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Yifeng,

A few more comments below for now (part 2).

On 4/26/20 12:02 PM, Yifeng Zhao wrote:

[..]

> +#define	THIS_NAME		"rk-nand"

> +static int rk_nfc_nand_chip_init(struct device *dev, struct rk_nfc *nfc,
> +				 struct device_node *np)
> +{
> +	struct rk_nfc_nand_chip *nand;
> +	struct nand_chip *chip;
> +	struct mtd_info *mtd;
> +	int nsels;
> +	u32 tmp;
> +	int ret;
> +	int i;
> +
> +	if (!of_get_property(np, "reg", &nsels))
> +		return -ENODEV;
> +	nsels /= sizeof(u32);
> +	if (!nsels || nsels > NFC_MAX_NSELS) {
> +		dev_err(dev, "invalid reg property size %d\n", nsels);
> +		return -EINVAL;
> +	}
> +
> +	nand = devm_kzalloc(dev, sizeof(*nand) + nsels * sizeof(u8),
> +			    GFP_KERNEL);
> +	if (!nand)
> +		return -ENOMEM;
> +
> +	nand->nsels = nsels;
> +	for (i = 0; i < nsels; i++) {
> +		ret = of_property_read_u32_index(np, "reg", i, &tmp);
> +		if (ret) {
> +			dev_err(dev, "reg property failure : %d\n", ret);
> +			return ret;
> +		}
> +
> +		if (tmp >= NFC_MAX_NSELS) {
> +			dev_err(dev, "invalid CS: %u\n", tmp);
> +			return -EINVAL;
> +		}
> +
> +		if (test_and_set_bit(tmp, &nfc->assigned_cs)) {
> +			dev_err(dev, "CS %u already assigned\n", tmp);
> +			return -EINVAL;
> +		}
> +
> +		nand->sels[i] = tmp;
> +	}
> +
> +	chip = &nand->chip;
> +	chip->controller = &nfc->controller;
> +
> +	nand_set_flash_node(chip, np);
> +	nand_set_controller_data(chip, nfc);
> +
> +	chip->options |= NAND_USE_BOUNCE_BUFFER | NAND_NO_SUBPAGE_WRITE;
> +	chip->bbt_options = NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB;
> +
> +	/* set default mode in case dt entry is missing */
> +	chip->ecc.mode = NAND_ECC_HW;
> +
> +	mtd = nand_to_mtd(chip);
> +	mtd->owner = THIS_MODULE;
> +	mtd->dev.parent = dev;

> +	mtd->name = THIS_NAME;

The 'mtd->name' shows up somewhere in file tree.
The rk3288 has 2 nfc's. In theory 2 probes and also 2 device names, so I
think that we shouldn't use a fixed define for 'mtd->name'.
Maybe use something like this:

	mtd->name = devm_kasprintf(ctrl->dev, GFP_KERNEL, "%s",
				   dev_name(ctrl->dev));

> +	mtd_set_ooblayout(mtd, &rk_nfc_ooblayout_ops);
> +	rk_nfc_hw_init(nfc);
> +	ret = nand_scan(chip, nsels);
> +	if (ret)
> +		return ret;
> +
> +	if (chip->options & NAND_IS_BOOT_MEDIUM) {
> +		ret = of_property_read_u32(np, "rockchip-boot-blks", &tmp);
> +		nand->boot_blks = ret ? 0 : tmp;
> +
> +		ret = of_property_read_u32(np, "rockchip-boot-ecc-strength",
> +					   &tmp);
> +		nand->boot_ecc = ret ? chip->ecc.strength : tmp;
> +	}
> +
> +	ret = mtd_device_register(mtd, NULL, 0);
> +	if (ret) {
> +		dev_err(dev, "mtd parse partition error\n");
> +		nand_release(chip);
> +		return ret;
> +	}
> +
> +	list_add_tail(&nand->node, &nfc->chips);
> +
> +	return 0;
> +}

[..]

> +static struct platform_driver rk_nfc_driver = {
> +	.probe  = rk_nfc_probe,
> +	.remove = rk_nfc_remove,
> +	.driver = {

> +		.name  = THIS_NAME,

		.name  = "rockchip-nfc",
		.name  = "rockchip-nand-controller",

The driver name shows up in the kernel log and is used in combination
with 'greb'.
This name should stay in line with all other rockchip drivers.

rockchip-drm
rockchip-rk3066-hdmi
rockchip-pm-domain
rockchip-u3phy
rockchip-thermal

> +		.of_match_table = rk_nfc_id_table,
> +		.pm = &rk_nfc_pm_ops,
> +	},
> +};



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
