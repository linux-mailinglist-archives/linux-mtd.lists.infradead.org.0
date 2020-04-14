Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CF81A7EB8
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Apr 2020 15:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9H1y+JHtlHCY0xof0u/Vo1QGuPR8icidr5VGmZbmVuY=; b=g9RfSfo1i6Xg9+ACONcoq2hyey
	IPPUhmCX4V8YZt/dgaN0StZoYlyN3JnjBHPoO6xkwPAeTa1jXzvGR5G1ndiI1b1lFYnz3CcOAux9G
	rMEq4vX6UZOhxzsZ6eRlSR5nBpOGK85/zXfhyHa//PxpzL4UL3i/bjt3HZE5+KK6HYNSmAfB7+eq/
	N5O8vcUgHR4w5MSk/yDWVy0OI2p6SaaGWox1i/EyD0h4/70G8DTXzNwSc+eS+QtszugCFShBCcfdO
	8zd1bMuuJMtqkfC/woWNvs2KUgUg5Rfo6voByhA/BNQqBvQb1qafGhSFUeHSevdOUjZKuaxZy/Tx5
	K3iOrspA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLum-0000gx-E4; Tue, 14 Apr 2020 13:47:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLug-0000gM-An
 for linux-mtd@lists.infradead.org; Tue, 14 Apr 2020 13:47:43 +0000
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 648182084D
 for <linux-mtd@lists.infradead.org>; Tue, 14 Apr 2020 13:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586872061;
 bh=zPGc63UmWLc/+H/vjVjMmsftRUnohKoZ25/OzLAX5q0=;
 h=References:In-Reply-To:From:Date:Subject:To:From;
 b=HRMb8JjdVUWax/yRhGpGbsXJtWA0MwsXbW5hdYtmysQU0jyHCuyXJUqnSyIuwOjhh
 saVHqWredVkvYW0WSYQHrXBHg+oS/u8bANzIjtXP42QCBKNS7BMMYtH2MnBm9y+iFX
 Dr9wWT0Ih9G62vdBgNLHljzN1U4Cil7VH86QZa/I=
Received: by mail-lf1-f49.google.com with SMTP id k28so9406845lfe.10
 for <linux-mtd@lists.infradead.org>; Tue, 14 Apr 2020 06:47:41 -0700 (PDT)
X-Gm-Message-State: AGi0PuY2JSxBtf0Q8Q5I+cz4tKbfxq+ks+tLCieymPHPFT2muOg2Ikwq
 Jx7G5GDp+n0WEh09Mp6hFxNRj8EDKmzp1sluejs=
X-Google-Smtp-Source: APiQypJxCiAhNBPjhKsW1uO1167hs2/TAd8oRp4Z+eS/oD8l54yts/N11sRuWc97KVigMWLNcyMCQcj61mfyJqS+FqM=
X-Received: by 2002:ac2:551e:: with SMTP id j30mr14307830lfk.179.1586872059357; 
 Tue, 14 Apr 2020 06:47:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200401100240.445447-1-ribalda@kernel.org>
 <20200402065953.9974-1-ribalda@kernel.org>
In-Reply-To: <20200402065953.9974-1-ribalda@kernel.org>
From: Ricardo Ribalda Delgado <ribalda@kernel.org>
Date: Tue, 14 Apr 2020 15:47:23 +0200
X-Gmail-Original-Message-ID: <CAPybu_34nSmbu4JMK-uA3SWrj_eMUftZ8S6zf1Vpg3Etkz3SPw@mail.gmail.com>
Message-ID: <CAPybu_34nSmbu4JMK-uA3SWrj_eMUftZ8S6zf1Vpg3Etkz3SPw@mail.gmail.com>
Subject: Re: [PATCH v2] mtd: Fix mtd not the same name not registered if nvmem
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org, 
 LKML <linux-kernel@vger.kernel.org>, 
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_064742_407678_B05F9878 
X-CRM114-Status: GOOD (  23.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Ping?

On Thu, Apr 2, 2020 at 8:59 AM Ricardo Ribalda Delgado
<ribalda@kernel.org> wrote:
>
> When the nvmem framework is enabled, a nvmem device is created per mtd
> device/partition.
>
> It is not uncommon that a device can have multiple mtd devices with
> partitions that have the same name. Eg, when there DT overlay is allowed
> and the same device with mtd is attached twice.
>
> Under that circumstances, the mtd fails to register due to a name
> duplication on the nvmem framework.
>
> With this patch we add a _1, _2, _X to the subsequent names if there is
> a collition, and throw a warning, instead of not starting the mtd
> device.
>
> [    8.948991] sysfs: cannot create duplicate filename '/bus/nvmem/devices/Production Data'
> [    8.948992] CPU: 7 PID: 246 Comm: systemd-udevd Not tainted 5.5.0-qtec-standard #13
> [    8.948993] Hardware name: AMD Dibbler/Dibbler, BIOS 05.22.04.0019 10/26/2019
> [    8.948994] Call Trace:
> [    8.948996]  dump_stack+0x50/0x70
> [    8.948998]  sysfs_warn_dup.cold+0x17/0x2d
> [    8.949000]  sysfs_do_create_link_sd.isra.0+0xc2/0xd0
> [    8.949002]  bus_add_device+0x74/0x140
> [    8.949004]  device_add+0x34b/0x850
> [    8.949006]  nvmem_register.part.0+0x1bf/0x640
> ...
> [    8.948926] mtd mtd8: Failed to register NVMEM device
>
> Signed-off-by: Ricardo Ribalda Delgado <ribalda@kernel.org>
> ---
> v2: I left behind on my patch a
>
> mtd->nvmem = NULL;
>
> from my tests. Sorry.
>
>  drivers/mtd/mtdcore.c | 35 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 34 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
> index 5fac4355b9c2..7a4b520ef3b0 100644
> --- a/drivers/mtd/mtdcore.c
> +++ b/drivers/mtd/mtdcore.c
> @@ -28,6 +28,7 @@
>  #include <linux/leds.h>
>  #include <linux/debugfs.h>
>  #include <linux/nvmem-provider.h>
> +#include <linux/nvmem-consumer.h>
>
>  #include <linux/mtd/mtd.h>
>  #include <linux/mtd/partitions.h>
> @@ -545,13 +546,34 @@ static int mtd_nvmem_reg_read(void *priv, unsigned int offset,
>         return retlen == bytes ? 0 : -EIO;
>  }
>
> +static int nvmem_next_name(const char *init_name, char *name, size_t len)
> +{
> +       unsigned int i = 0;
> +       int ret = 0;
> +       struct nvmem_device *dev = NULL;
> +
> +       strlcpy(name, init_name, len);
> +
> +       while ((ret < len) &&
> +              !IS_ERR(dev = nvmem_device_find(name, device_match_name))) {
> +               nvmem_device_put(dev);
> +               ret = snprintf(name, len, "%s_%u", init_name, ++i);
> +       }
> +
> +       if (ret >= len)
> +               return -ENOMEM;
> +
> +       return i;
> +}
> +
>  static int mtd_nvmem_add(struct mtd_info *mtd)
>  {
>         struct nvmem_config config = {};
> +       char name[128];
> +       int ret = 0;
>
>         config.id = -1;
>         config.dev = &mtd->dev;
> -       config.name = mtd->name;
>         config.owner = THIS_MODULE;
>         config.reg_read = mtd_nvmem_reg_read;
>         config.size = mtd->size;
> @@ -562,6 +584,13 @@ static int mtd_nvmem_add(struct mtd_info *mtd)
>         config.no_of_node = true;
>         config.priv = mtd;
>
> +       if (mtd->name) {
> +               ret = nvmem_next_name(mtd->name, name, sizeof(name));
> +               if (ret < 0)
> +                       return ret;
> +               config.name = name;
> +       }
> +
>         mtd->nvmem = nvmem_register(&config);
>         if (IS_ERR(mtd->nvmem)) {
>                 /* Just ignore if there is no NVMEM support in the kernel */
> @@ -573,6 +602,10 @@ static int mtd_nvmem_add(struct mtd_info *mtd)
>                 }
>         }
>
> +       if (ret)
> +               dev_warn(&mtd->dev, "mtdev %s renamed to %s due to name collision",
> +                               mtd->name, nvmem_dev_name(mtd->nvmem));
> +
>         return 0;
>  }
>
> --
> 2.25.1
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
