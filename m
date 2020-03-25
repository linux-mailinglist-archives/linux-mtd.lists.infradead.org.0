Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131A1192F6B
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 18:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ts8nzEtsXc355FGRhRgqknHegnqtS3JIXXMf+85RIDA=; b=vAC0GK5Rlu6D0GzArqHQgWeygT
	bfsiUHO+YRwLCKCFYdJkmIpWR72NonPwg7M9IL01E82RTQ1hPQn4Na2tPEgWmaH4wwVVtMOiW81GK
	OdGg5SKVa5cddc9LcfDNTuwtHoPIPo9EH0pAl6ynw5M+RUcCXmnUc9MbpksVi+Los0qGbtaJH3fLA
	p9sgl+pWDubbRDfXdQFzJUsqQjW29laCP2ffAyyNxDbrd+Kg0Z2WIG473EvhHYYz0vyJbvmIVBCJ9
	8uJY+ZHI+KXOLwNRt4wH+Wc86lUbVo0QLQeoeoq9Kj8dVhwYy+TVqWgfmEFGQePN/RitIPqAp66mj
	5G+3g0OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH9w6-0003wW-TP; Wed, 25 Mar 2020 17:35:26 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH9vX-0002qg-At
 for linux-mtd@lists.infradead.org; Wed, 25 Mar 2020 17:34:55 +0000
Received: by mail-ot1-x344.google.com with SMTP id k26so2848466otr.2
 for <linux-mtd@lists.infradead.org>; Wed, 25 Mar 2020 10:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=JO3wsTlGfXaSe09bsLooFJvJnmlyjWQPjOfdhnj15FY=;
 b=R9nXgXfD0m7j57EPIXCgMLcrlcY/HyhQHeD5NSHRgWvAiqngIEx0dpK9ZDNELWTXQW
 DeQFvSl8g7UmgTnk/aOnCQEZue4ABH2nAYZyfVhlxUf++6BZ+4rT+eP8zH+1I5cA29F2
 SYOkytI3T+guq1CMYDvnhZhUT9/Vky8UDpwReiM/eXruAbrTttxlCpOpWh4mNjoJoWSx
 Wh7VlGKtM91FegOntYOih9RPQuxcdZPh7GSmoNwLAzu8czpvjk9CxptFVT5BiN4CFXJf
 6uTj9uQZCToidbzLZ/TN2rbgcOSDsQpVSMLOftM76NQVJh0DDBMtDqUW38bi2uKQncU1
 7PrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=JO3wsTlGfXaSe09bsLooFJvJnmlyjWQPjOfdhnj15FY=;
 b=dT7MEpsk7Zo8T3HPynyKi6Qp4CVK7uVf80VZPFkM1dbgdYNPKjFpjQgVT05y6k5Kuu
 6+E5UhV+qytrezzgq60vund8Bg9RtbpSygnzzd/6UI8DtV5GC+aDAigiMtCKJEnD3jcX
 xMBdn//so90giMfK7ORZA0jP+wAhQbNAFabus61qWPuYcPEi28srvEYXd+jhQIWlG6Xz
 bBdXzQsfh9hTN9/9gBZgdPBkfzlNEQ8xxXtKwHZiUhk3y5m+E7vrWz/C2yHc3Q0JyU/3
 fj8GjxOq+RXFwCDEFumK0r76V9EHZdTlMIswqSOBPlec5Wv34XrG3zZVpPTn1y1ChL27
 d4Ig==
X-Gm-Message-State: ANhLgQ3KTc5maS0AZ4Mdti2lETrHTtEjlq3ssC2mNwKV3hSgeiKDbIj/
 0xc+tdSyKRBbd5O35eQrV19Fc0yGGPHCWWDzZx2ZAOec
X-Google-Smtp-Source: ADFU+vvThPf6N1kURBanHg64nX2ASPLnPrQBcvozuMqNsAe520hnR81JBa4DhRMGS89UfdmISNErb22qXdvRlyvbvEI=
X-Received: by 2002:a9d:414:: with SMTP id 20mr3371475otc.300.1585157690431;
 Wed, 25 Mar 2020 10:34:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAP6exYJ3xk46PODgT=5WAdiLDNY=9MggxyaEwov6qyDQstLj7g@mail.gmail.com>
 <CAP6exY+W+zTtEB1LmHYDnhEnPj26Y97Ld9TBAxsgX3vGDb4LnQ@mail.gmail.com>
 <CAP6exYKrAs_OpC_qkoW2cH0MxpqxDrgP2nhJGkp=2BX-6kAWbQ@mail.gmail.com>
In-Reply-To: <CAP6exYKrAs_OpC_qkoW2cH0MxpqxDrgP2nhJGkp=2BX-6kAWbQ@mail.gmail.com>
From: ron minnich <rminnich@gmail.com>
Date: Wed, 25 Mar 2020 10:34:39 -0700
Message-ID: <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org, 
 mika.westerberg@linux.intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_103451_399901_396F25F2 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Sorry, on that first one, I forgot the checkpatch. This one is clean.

thanks

On Wed, Mar 25, 2020 at 10:34 AM ron minnich <rminnich@gmail.com> wrote:
>
> The MTD subsystem can support command-line defined partitions
> for one or more MTD devices.
>
> The format is:
>  * mtdparts=<mtddef>[;<mtddef]
>  * <mtddef>  := <mtd-id>:<partdef>[,<partdef>]
>
> The ':' currently separates the id from the partdef.
>
> The mtdparts can define more than one part, in which case
> there will be more than one <mtd-id>:<partdef> component.
>
> On Intel spi devices, the name is set to the PCI slot name,
> e.g. 0000:00:1f.5.  There are two : in the name alone.
> Since strchr is used to find the <mtd-id>,
> in this case it will return the wrong
> result. Using strrchr is not an option, as there may
> be more than one mtddef in the argument.
>
> This change modifies the name attached to the intel spi
> device, changing all ':' to '.', e.g. 0000:00:1f.5
> becomes 0000.00.1f.5. It also adds command line partition
> parsing registration to the intel_spi_probe function.
>
> Signed-off-by: Ronald G. Minnich <rminnich@google.com>
> Change-Id: Ibfa5caba51b8cdd3c41c60b15f8f8c583ded82ff
> ---
>  drivers/mtd/spi-nor/intel-spi-pci.c | 23 +++++++++++++++++++++++
>  drivers/mtd/spi-nor/intel-spi.c     |  5 ++++-
>  2 files changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mtd/spi-nor/intel-spi-pci.c
> b/drivers/mtd/spi-nor/intel-spi-pci.c
> index 81329f680bec..dc608d74e824 100644
> --- a/drivers/mtd/spi-nor/intel-spi-pci.c
> +++ b/drivers/mtd/spi-nor/intel-spi-pci.c
> @@ -24,6 +24,24 @@ static const struct intel_spi_boardinfo cnl_info = {
>      .type = INTEL_SPI_CNL,
>  };
>
> +/*
> + * PCI names use a ':' as a separator, which conflicts
> + * with the mtdparts cmdline parameter. Dup the name and
> + * replace : with .
> + */
> +static int fixname(struct pci_dev *pdev)
> +{
> +    char *name;
> +
> +    name = kstrdup(pci_name(pdev), GFP_KERNEL);
> +    if (!name)
> +        return -ENOMEM;
> +    strreplace(name, ':', '.');
> +    dev_set_name(&pdev->dev, name);
> +    kfree(name);
> +    return 0;
> +}
> +
>  static int intel_spi_pci_probe(struct pci_dev *pdev,
>                     const struct pci_device_id *id)
>  {
> @@ -41,6 +59,11 @@ static int intel_spi_pci_probe(struct pci_dev *pdev,
>      if (!info)
>          return -ENOMEM;
>
> +    if (fixname(pdev)) {
> +        kfree(info);
> +        return -ENOMEM;
> +    }
> +
>      /* Try to make the chip read/write */
>      pci_read_config_dword(pdev, BCR, &bcr);
>      if (!(bcr & BCR_WPD)) {
> diff --git a/drivers/mtd/spi-nor/intel-spi.c b/drivers/mtd/spi-nor/intel-spi.c
> index 61d2a0ad2131..cb08ee4d2029 100644
> --- a/drivers/mtd/spi-nor/intel-spi.c
> +++ b/drivers/mtd/spi-nor/intel-spi.c
> @@ -894,6 +894,8 @@ static const struct spi_nor_controller_ops
> intel_spi_controller_ops = {
>      .erase = intel_spi_erase,
>  };
>
> +static const char * const part_probes[] = { "cmdlinepart", NULL };
> +
>  struct intel_spi *intel_spi_probe(struct device *dev,
>      struct resource *mem, const struct intel_spi_boardinfo *info)
>  {
> @@ -941,7 +943,8 @@ struct intel_spi *intel_spi_probe(struct device *dev,
>      if (!ispi->writeable || !writeable)
>          ispi->nor.mtd.flags &= ~MTD_WRITEABLE;
>
> -    ret = mtd_device_register(&ispi->nor.mtd, &part, 1);
> +    ret = mtd_device_parse_register(&ispi->nor.mtd, part_probes,
> +                    NULL, &part, 1);
>
>      if (ret)
>          return ERR_PTR(ret);
>
> --
> 2.25.1.696.g5e7596f4ac-goog

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
