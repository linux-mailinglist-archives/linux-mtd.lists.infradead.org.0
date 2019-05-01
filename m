Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F4210D19
	for <lists+linux-mtd@lfdr.de>; Wed,  1 May 2019 21:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSA3y+UxFMQg2lzwEsdtEwT8HJM5LeSnG0YqkY5bWUQ=; b=LHJNdIGdcwiZHT
	/5rpTRdkq8aVSAgrMLwZZFd/sd+13SsSVvy30PeGYfX1vvldOPX+cyxsWiNUXOU/lJJIXEcsGM/gW
	bLiq6YGGKq63hfSONYsjSRG4mOmz7muxgIGXy+Sk8NB6UaTN9vKx0nRZ3pq+zlU+uXneu9MhBiyyk
	/wXEDxec0cR5JwX9Pa/2sT92YPhTur4lJhsEX8ZdqHk7zekpCIJEBTb0diNFQCT62B5B4WVG04xtb
	2mc3K28F0/qQt3M/FngCjsPYdNzalzBSK3R7w2BZ3ciMLWHzCmmuwJEZ1wRXPM473ST/fc0OUQFUY
	CbwEM2zZV+w235vPU2AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLuhm-0001QC-9e; Wed, 01 May 2019 19:15:46 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLuhf-0001PQ-BQ
 for linux-mtd@lists.infradead.org; Wed, 01 May 2019 19:15:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id q10so18318ljc.6
 for <linux-mtd@lists.infradead.org>; Wed, 01 May 2019 12:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lN/T7u/Fwv/EZb1xnNEtQOimSnN0fKeQ0FgHDhL5cBA=;
 b=HvfwSa7BpGPqmfwAzZ8rcwbDFlwJ4hpWrUJPUJsE3eFt11Goqpt/1vRLjP3ywENTuY
 dHU3/RLqF3UuRqIzs9xTtBjXGT8I4/ZoBAqOCvP3p2tk3ZFfaLdIevoAP1l8HEodf3iR
 PHCme2zGJAitP3pVoN3U2mC3yMFKw/yYOtzWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lN/T7u/Fwv/EZb1xnNEtQOimSnN0fKeQ0FgHDhL5cBA=;
 b=fvUBXPbgLQf3lgwoc/U7GIXN5B1Gu/npVpzDMgS6O/kcmscLoaxBH8B80R7JIyn5/u
 eX6EjGqQZe2zmbltrnp/l+k1t3KKqOQoRvdfNWGJJ1pPdlj/LszqEsf3otcjAZU6cUye
 NBgXNrU8Cax+BofibX9GosyKL05QI1d4AcK1sjfW3DXoHUdSonihGpIfJhgC1a6/6xXd
 K+PaEi7sjRtscnGl6kR9fuPKKIH3U30YaZHsIkbkSHq2itixnx75Byfiax+ou8B/KnGF
 +3HifImrVKlBDNOxONyXiKi3Xb2ozMR8n7zEjkP/9EmPbFrcopxSC+1muyJZPY5jXWd/
 YIng==
X-Gm-Message-State: APjAAAWJNgadH5zDBGe2jDk3IlVazhjQdznj4FqGRIWlLKktdOKq1zR1
 J41D26QX20AcEUX1cttk0+lEbVgdm3DF8F9iSBQMng==
X-Google-Smtp-Source: APXvYqyWGF2NMYI9BPDRGBc0+XeTHClGa9e/p6VaS1O+iWmSKYioFVks55J90nFQb5uomXM+1AtzGfJ8x74N1uVJ3YQ=
X-Received: by 2002:a2e:8e8a:: with SMTP id z10mr8422799ljk.172.1556738136636; 
 Wed, 01 May 2019 12:15:36 -0700 (PDT)
MIME-Version: 1.0
References: <1556306615-37990-1-git-send-email-kdasu.kdev@gmail.com>
 <8e1b5dd6-3f8d-9288-7c43-5d7650269397@gmail.com>
In-Reply-To: <8e1b5dd6-3f8d-9288-7c43-5d7650269397@gmail.com>
From: Kamal Dasu <kamal.dasu@broadcom.com>
Date: Wed, 1 May 2019 15:15:00 -0400
Message-ID: <CAKekbeux0To7EEDYa=6YHaPrE_p95i812qxi6hcanN2guX6mKg@mail.gmail.com>
Subject: Re: [PATCH] mtd: rawnand: brcmnand: fix bch ecc layout for large page
 nand
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_121539_397680_20C8E332 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Kamal Dasu <kdasu.kdev@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 1, 2019 at 2:35 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 4/26/19 12:22 PM, Kamal Dasu wrote:
> > The oobregion->offset for large page nand parts was wrong, change
> > fixes this error in calculation.
>
> Should this have a Fixes tag so this can be backported to stable trees
> seemingly automatically? Thanks!
>

The brcmnand files got moved, however should have the fixes tag, will
send V2 patch.

> >
> > Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> > ---
> >  drivers/mtd/nand/raw/brcmnand/brcmnand.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> > index 482c6f0..3eefea7 100644
> > --- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> > +++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> > @@ -939,7 +939,7 @@ static int brcmnand_bch_ooblayout_ecc(struct mtd_info *mtd, int section,
> >       if (section >= sectors)
> >               return -ERANGE;
> >
> > -     oobregion->offset = (section * (sas + 1)) - chip->ecc.bytes;
> > +     oobregion->offset = ((section + 1) * sas) - chip->ecc.bytes;
> >       oobregion->length = chip->ecc.bytes;
> >
> >       return 0;
> >
>
>
> --
> Florian

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
