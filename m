Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B45114F17
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Dec 2019 11:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aEfY8YUlNfMHbE69RgPFRLi5OSnC/6FqxaD7lVhd+Ko=; b=n3qYFxF/rOSmn4
	IWScLAhBQR+SytQ9Xltfu1jKTuvWEaq5DP8pkTu0fydeQzexvTsCPP0A9ztu7uFUz79eTXRjuKDdJ
	3Yw6OYp8g0H8VnK/UMG45S/1QyFuAsENgETLz1W2Ps0H6+2X/6/6y2z546JS5HljAynuC33Znf72h
	zfLkCd5xzGh3yA5pG61KuPAUvmlQ0FbjxN++LqhZuieDjLi+lEFZt3yR2e1N+VTEP09kkBJNS+au3
	vDtqpW1XlYpgAaburdKtyQTRbn4SGLECv0CEZ0zHslB0KEeMF1f4HJURV2vsYGW1ARushq+rtKbVq
	ClUTCd5IyiZeYglxolZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idAv6-0005kd-AE; Fri, 06 Dec 2019 10:33:08 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idAut-0005kE-Sb
 for linux-mtd@lists.infradead.org; Fri, 06 Dec 2019 10:32:58 +0000
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com
 [209.85.221.182]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id xB6AWecW011189
 for <linux-mtd@lists.infradead.org>; Fri, 6 Dec 2019 19:32:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com xB6AWecW011189
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1575628361;
 bh=TDjawUlmNNXUEMf1DhyFf5MKCPPn8CovJxPUOaAc2oc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KZyQL6sGwHXlLzRXNDrEfVVY/yjlfYCq7MzavV7PX1RuVzFueZSpOf2mPLxMRVv85
 aGkC/fD/tc/OpmZEy6sb79o+2vMjdS/Q5j10G0mo2Y4h94AoLHe7r5ln30/U6AgAxq
 eW2YmGIc6OWse24f3kiMVjsjGrpVmBq+emlp0lA+RPmMYxdTPitjF9oZDy90XlOZ0x
 X8fEGtT5DA/J/u7li8NExtHJoHN972riTh051J6JpRZSu8CXiKRwIuIfOqiudlzXhW
 rf9NEx6crIpcRHcX7FiXmFEfhU763PQVAsnVPxSzKfUMjwodF4N1JROiqL4hucpAPY
 MNSPYHZ+mySWg==
X-Nifty-SrcIP: [209.85.221.182]
Received: by mail-vk1-f182.google.com with SMTP id g7so2081232vkl.12
 for <linux-mtd@lists.infradead.org>; Fri, 06 Dec 2019 02:32:40 -0800 (PST)
X-Gm-Message-State: APjAAAVZZ94eo0Z2qPLfp+k5McUzavVhJdxt2vwQSz45QRFZu0UpC1Fy
 K/AeZEELgMJiW1QjMXIQ8/TOnP45PJVByLKlQ5Y=
X-Google-Smtp-Source: APXvYqy7cm748UdnM90CLgAG1ZA9MFTcYgJ8zjVaMoKjzv6tyXiBABFAld7eOFcOIfoKfcf84Pbg2MdfjRn/7lkZDw0=
X-Received: by 2002:a1f:5447:: with SMTP id i68mr10722286vkb.66.1575628359661; 
 Fri, 06 Dec 2019 02:32:39 -0800 (PST)
MIME-Version: 1.0
References: <20191206075432.18412-1-hslester96@gmail.com>
In-Reply-To: <20191206075432.18412-1-hslester96@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 6 Dec 2019 19:32:03 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQsK5JD-qeBugp9mn8DgW+SYttp5AwZ_ht5KY2MhPe-Ew@mail.gmail.com>
Message-ID: <CAK7LNAQsK5JD-qeBugp9mn8DgW+SYttp5AwZ_ht5KY2MhPe-Ew@mail.gmail.com>
Subject: Re: [PATCH] mtd: rawnand: denali: add missed pci_release_regions
To: Chuhong Yuan <hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_023256_246116_583CAF3B 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi.

On Fri, Dec 6, 2019 at 4:54 PM Chuhong Yuan <hslester96@gmail.com> wrote:
>
> The driver forgets to call pci_release_regions() in probe failure
> and remove.
> Add the missed calls to fix it.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---

This patch looks equivalent to what I submitted,
then was rejected a couple of years ago.
https://lists.gt.net/linux/kernel/2557740



>  drivers/mtd/nand/raw/denali_pci.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mtd/nand/raw/denali_pci.c b/drivers/mtd/nand/raw/denali_pci.c
> index d62aa5271753..ca170775b141 100644
> --- a/drivers/mtd/nand/raw/denali_pci.c
> +++ b/drivers/mtd/nand/raw/denali_pci.c
> @@ -77,7 +77,8 @@ static int denali_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
>         denali->reg = ioremap_nocache(csr_base, csr_len);
>         if (!denali->reg) {
>                 dev_err(&dev->dev, "Spectra: Unable to remap memory region\n");
> -               return -ENOMEM;
> +               ret = -ENOMEM;
> +               goto out_release_regions;
>         }
>
>         denali->host = ioremap_nocache(mem_base, mem_len);
> @@ -121,6 +122,8 @@ static int denali_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
>         iounmap(denali->host);
>  out_unmap_reg:
>         iounmap(denali->reg);
> +out_release_regions:
> +       pci_release_regions(dev);
>         return ret;
>  }
>
> @@ -131,6 +134,7 @@ static void denali_pci_remove(struct pci_dev *dev)
>         denali_remove(denali);
>         iounmap(denali->reg);
>         iounmap(denali->host);
> +       pci_release_regions(dev);
>  }
>
>  static struct pci_driver denali_pci_driver = {
> --
> 2.24.0
>


-- 
Best Regards
Masahiro Yamada

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
