Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8DDD8087
	for <lists+linux-mtd@lfdr.de>; Tue, 15 Oct 2019 21:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kot4K7wTbz35KJs+Mi2bHu5vf0owBKotKYcuIT5tB04=; b=KDdGXflkvAdA4r
	75dxwht3XRhPgZf60AQBruYEiqgkCEPL5NpJSxCBMoHnWT24zeUiKenlqdV1DiMj2/eEQ7cR8tEOa
	V/daErrV7p6yEUUQ1BuELYPjDWbZksuiTiJ4WpcSjmMiQuYAsIpKuaxPpGet0vZfllYg9/jNH4jGz
	J2GAQrFP0NgswpzXVW/NQdulIpbNQuVcye7NR6gY3YJSuPZ3u/PGT8M9kBK7hFJoMoiImGs6uQhFc
	Dta1fkcMuhsLHRslEbDPm/8cqR4jVGaFcEuVdEMRjiOCmHZB31DujMpzxpodX1g6hri2945Ef+Zh/
	H8Y7aYdGtb4pyODqI+ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSn2-0005uc-BL; Tue, 15 Oct 2019 19:47:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSmu-0005uJ-Ds
 for linux-mtd@lists.infradead.org; Tue, 15 Oct 2019 19:47:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id y21so324106wmi.0
 for <linux-mtd@lists.infradead.org>; Tue, 15 Oct 2019 12:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wO852+AYPIMJlclBfYCddgEZixTjgb/Dto45phGADpY=;
 b=n8n6XiSRf6aqDCmgXbetB86bk3p/lda8cCaVa2lCmET8XQXfE0SV83mjr3F2LJUJ48
 x/FFa8s9TYwF/nJgsbotOeDFsu1jV76N7ks7bEDlEr5numuC99u00LFPOoCetEl65pNP
 gt3P62CBBeiUPp3FuupUq/vjMYJruZUlhv5jBGIB80nk+PGl5aUzVyNsoWSVWy+xa/fe
 2A5kQ87ZVZzWp1XazMDHdr06caxah68uHQ28gkc+6hfwXF/VbhbmUYyOpGqoR7MLCl1h
 YBK/JjpP6LhBHdmPbJyn+/sIdqL996pQcnlzs8vnRqFhJRY0TD4N+UVjynf79x/8/ULI
 B6Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wO852+AYPIMJlclBfYCddgEZixTjgb/Dto45phGADpY=;
 b=SihYipKDAflbTDod3mvXkXj+nS7WrSCVq/PtlvOSs0wdsrVqZEnk3coSl5Ako02j2M
 dc8sIH7+F2rftakwE5dZvMLxO6q3YuzOWQBK0c3/hiWE7AXDJ6NolUvhI4PJwhdETEBK
 dsOYeC5olI91coIX8bHIKaprWVN3Wa7qRYBMSiCvclmJn6s37dQswlCS8vtPrYy8Xs1e
 xH83Zo9PHUwBI66DHd58pIlxzxO46tvRDQpKVWE2G4aLRy49IrL2lbuTitNCCcdS/NB9
 ISFGPXSgwywjd6ALtaEhMqajtJzviv+z/m1orp0m9531wjoMnsjiyqf4aB0sRDonGku6
 JsGQ==
X-Gm-Message-State: APjAAAV4dN2EU48ovmiY6nyPr096t664axeRMTBZqHoQimGC1jv6XP0C
 jqKcK9mMH6N/PyzrxJGDdQoRj1elVhRNgYfCR8E=
X-Google-Smtp-Source: APXvYqwZfGEDNKBTN8sztVLYQdEXeicJvM0kvg+PhMwWPhGvByko/G8sFOslFvyY9w4r0jfgqFIJWr5KNUa7i0L1GYg=
X-Received: by 2002:a05:600c:54e:: with SMTP id k14mr118933wmc.9.1571168838975; 
 Tue, 15 Oct 2019 12:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191008023637.133416-1-houtao1@huawei.com>
In-Reply-To: <20191008023637.133416-1-houtao1@huawei.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 15 Oct 2019 21:47:07 +0200
Message-ID: <CAFLxGvyea-knZOz5K7uPNZLfCVkJRrO0+Cb7Xb4EaRa+gzTNDQ@mail.gmail.com>
Subject: Re: [PATCH] mtd: cfi_cmdset_0002: don't free cfi->cfiq in error path
 of cfi_amdstd_setup()
To: Hou Tao <houtao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_124720_468221_C1C0D48A 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 4:29 AM Hou Tao <houtao1@huawei.com> wrote:
>
> Else there may be a double-free problem, because cfi->cfiq will
> be freed by mtd_do_chip_probe() if both the two invocations of
> check_cmd_set() return failure.
>
> Also check cfi_intelext_setup() & cfi_staa_setup() to find out
> that cfi->cfiq is not freed as well in these functions.

This sentence does not make sense to me.

> Signed-off-by: Hou Tao <houtao1@huawei.com>
> ---
>  drivers/mtd/chips/cfi_cmdset_0002.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
> index cf8c8be40a9c..7eaa4b523197 100644
> --- a/drivers/mtd/chips/cfi_cmdset_0002.c
> +++ b/drivers/mtd/chips/cfi_cmdset_0002.c
> @@ -785,7 +785,6 @@ static struct mtd_info *cfi_amdstd_setup(struct mtd_info *mtd)
>         kfree(mtd->eraseregions);
>         kfree(mtd);
>         kfree(cfi->cmdset_priv);
> -       kfree(cfi->cfiq);
>         return NULL;
>  }

Other than that,
Reviewed-by: Richard Weinberger <richard@nod.at>

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
