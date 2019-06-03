Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B590032DAB
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 12:20:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uqd6Pq6bZIL02EQgvN63r3XQwaqso1tl6zINfR34K0U=; b=OdsUczAjA2mTF4
	/PW34WxCfYS5jVTH4J3vsUGGl5wCMZad4gkY4e2T5tzFoeRCLhsOH4DD+dRPk3eeIO6tIeVyJR/ES
	yXNtT84V2RGDSvCFwxw/e+2o5gkvyLNhXo/CY/zfy7TB7hatXh9rEXLglftleYB3IMACMvo9nkBGB
	DIHyFXE6O7Y30GJcjJQczOivhzOwpMDiAT2qFJ7amBV/TE/EdK53o0k7CWL/hsJGtVzsrTlhSYj/Q
	nisW3aWgYd7exjm56kFRunSbKEfq9XrBfkX8aLUf8pLUdeNwKoUwp5bw4xFS2I3+DJO9tGAANKljI
	3w+ZABJB2AEt9dVyK9QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXk4J-0004rS-3z; Mon, 03 Jun 2019 10:19:55 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXk4C-0004qr-7p
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 10:19:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id t5so10431766wmh.3
 for <linux-mtd@lists.infradead.org>; Mon, 03 Jun 2019 03:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0rfDJgmy+Xqu/X1eIsTn5a01PvPdIXvhkiEpDOvAm2Q=;
 b=GY64xU8E/x4Ap+fplVQid9tFU4fzWovF8Xieidu7+YqyMqucYQZHY0kcIJ5oYQiugF
 SF+4jRqEAeQo+SucNNbHoXTCvjQtM0RshaBNi0dyekUj6c4KQQQwVH6DAfBcgUTyPFtC
 UePcPzz3s2BMlwVheM3X4x+MwuZhdOAGv/seE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0rfDJgmy+Xqu/X1eIsTn5a01PvPdIXvhkiEpDOvAm2Q=;
 b=kRPLP6qRGHrqxxEGwwuJKST0KaBwE2GBn0xFETCP+q9me0NrlmhQCa7C6qPoN8YMhl
 1pW9/9mtXETjKvqQwgZKI6F5wHUP4TXtGaUkfhV0i7AycdDjI8xmNDcYau088QXp1I9n
 ZKMS+vLU8wL1SNllH3yGHq4gZ4SfGqHlNBPvwYSwNEs8vLhtxvCbZcCf8dXwpj1ixVEn
 2XcA6dBxyTnQLoxLWwAFsUrkpPZ6PJotvtGXX3XRCi41Mi1JueAH6A60mcNkVbJw+R9L
 BKYb6+nm4cMIttfwHyoZdNewYKqaklotplM6LS6Fo7Jr0YQEXn8M3XkZHP/8ZjwwNS16
 NGEQ==
X-Gm-Message-State: APjAAAW3UfVEoD7b63ZE34KPzSe/BmEVhSXnQ7ajTNi2GL+mIZGibCeG
 I0Osnlo26T2h37s3jDn+Yjgedje7UMIqdzUPSKRBqg==
X-Google-Smtp-Source: APXvYqwaawPEQSgpvfGdbErojGREs5xnG+zAha54JRs8S1636smAbOZ1uSunFdwl+tgr1MhCBsy3xRfu7clZWJfwhZU=
X-Received: by 2002:a1c:750d:: with SMTP id o13mr1716345wmc.35.1559557184736; 
 Mon, 03 Jun 2019 03:19:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190603031451.60749-1-zhuohao@chromium.org>
 <20190603031451.60749-2-zhuohao@chromium.org>
 <20190603092321.3a8f1c7f@collabora.com>
In-Reply-To: <20190603092321.3a8f1c7f@collabora.com>
From: Zhuohao Lee <zhuohao@chromium.org>
Date: Mon, 3 Jun 2019 18:19:33 +0800
Message-ID: <CABD5ybkf7RjQ3GwymPab3tcXsj3dD=0-WtaGB+c913Jwy60iLw@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] mtd: spi-nor: enable the debugfs for the partname
 and partid
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_031948_302467_167EC9B5 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Nicolas Boichat <drinkcat@chromium.org>, bbrezillon@kernel.org,
 richard@nod.at, Brian Norris <briannorris@chromium.org>,
 =?UTF-8?B?TWFyZWsgVmHFoXV0?= <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 3:23 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Mon,  3 Jun 2019 11:14:51 +0800
> Zhuohao Lee <zhuohao@chromium.org> wrote:
>
> > This patch adds spi_nor_debugfs_init() for the debugfs initialization.
> > With this patch, we can read the partname and partid through the
> > debugfs.
> >
> > The output of new debugfs nodes on my device are:
> > cat /sys/kernel/debug/mtd/mtd0/partid
> > spi-nor:ef6017
> > cat /sys/kernel/debug/mtd/mtd0/partname
> > w25q64dw
> >
> > Signed-off-by: Zhuohao Lee <zhuohao@chromium.org>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index 6e13bbd1aaa5..acc1915b380b 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -3935,6 +3935,18 @@ static void spi_nor_resume(struct mtd_info *mtd)
> >               dev_err(dev, "resume() failed\n");
> >  }
> >
> > +static void spi_nor_debugfs_init(struct spi_nor *nor,
> > +             const struct flash_info *info)
> > +{
> > +     struct mtd_info *mtd = &nor->mtd;
> > +
> > +     mtd->dbg.partname = info->name;
> > +     if (!mtd->dbg.partid)
>
> Hm, how can this happen? I'd expect mtd->dbg.partid to always be NULL
> when you reach that point. If that's not the case there's probably a
> bug somewhere.
Yes, it is always NULL in my case.
Let me remove it in the next patch.

>
> > +             mtd->dbg.partid = devm_kasprintf(nor->dev, GFP_KERNEL,
> > +                                             "spi-nor:%*phN",
> > +                                              info->id_len, info->id);
> > +}
> > +
> >  void spi_nor_restore(struct spi_nor *nor)
> >  {
> >       /* restore the addressing mode */
> > @@ -4036,6 +4048,8 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >       mtd->_read = spi_nor_read;
> >       mtd->_resume = spi_nor_resume;
> >
> > +     spi_nor_debugfs_init(nor, info);
> > +
> >       /* NOR protection support for STmicro/Micron chips and similar */
> >       if (JEDEC_MFR(info) == SNOR_MFR_ST ||
> >           JEDEC_MFR(info) == SNOR_MFR_MICRON ||
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
