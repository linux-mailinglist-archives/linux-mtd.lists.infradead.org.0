Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC98331CA
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 16:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7qi4DV90RI5Ch5znhHWDInjsxTjQXr4zjp98WS/XjI=; b=clkE4L2CofW3u0
	XMWl3J1/lpq44nQqNeuh1o6Pxuj5/mDjhBVjIWiMwspU3HGVzkuEDzEEPrIB8bEN/utu48jzo43uw
	BTSlDkA/lkNjJa12AmsKKVgMD+7QZsmcpXqO71t9BQcwkzYHNY0dcbtdItCfuCLKoRCf66rZI1ptN
	oFxTXYBCAwZO6zCUQhY6/wNOJeUKzLjlJUlORdLvNAhhg3qZZSkkQ8JEgK3OW6firoaC+zvzVihbZ
	sy0Ex2+/axCdusT7SmJJp9pEmOlXUuNZV52a2OZI/WzJ/KqL2owA3qlunZhSWKqD6OrUvlr8J/C4x
	1kl/SfrO5TahTKKSh4BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnge-0006Yz-70; Mon, 03 Jun 2019 14:11:44 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXngU-0006YH-Un
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 14:11:36 +0000
Received: by mail-it1-x143.google.com with SMTP id h20so27656888itk.4
 for <linux-mtd@lists.infradead.org>; Mon, 03 Jun 2019 07:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ahQ7VoRg99S/6Xj+DanoRYoblw6xRVRqCQUI0HAUIyI=;
 b=K/tT8++/1Efb+YAtts49FvOfQZD+rmNnrYDw4UqoTwtlU1J/fhDcandBGT984w+C+D
 DSPFN7TYYMIZktx/KJTBksrZQdqxhSOO/rOkViB3e9jAQpElEHeTP/TNdXVFok5e2oGm
 xbe+talBRpM791KvKfNxnuQUs0CT9mX/VXP+A7r3LK2yfhrtvLZtnpjFw778WrsLrx1s
 R6yCr5u3+l4ELF0ic/pVGCf2X/cS7BNRfSsV/d9zo63wqT1gxUgG2Lj3DllxzEQzA4nD
 GenVdhFZsPa1aP8qfPYWT5F1ZiZiAL0uprJwr1QuK4qXmgE4eGKkBmNc9jLr6yEbfQBV
 L2ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ahQ7VoRg99S/6Xj+DanoRYoblw6xRVRqCQUI0HAUIyI=;
 b=lK+ZumlXml1araZ7PL/3FMgBJ+CvVNVAdUIOq/91WztM+qpivlj6hL1Eb/xT6zsCw8
 QXxs08QJkO4HHhDA0wBajdfJUV80nD1e+kV6V9aLTVN4jAyaiqFqRUQ3sbROAYivC2z8
 Kiq5iBkGwGYWS2oh2iUZmCQFrwkjp5BMYM61KU5EviPXpoKvOLxRQHDAzAMoLNVoitgm
 FL7f4ylaclvl10SQTwxAFX1523HQqsHOCVCKz4k3i2wdcI3dFwbQzlAEgB63se0u66C9
 iJ9fyb/Tybi8cCqEXphiNfkXr07sNp+B8elchEjKCbn+q2yhxvD9ggSKD2PMROAbqMPB
 51Dg==
X-Gm-Message-State: APjAAAXvBkBOZggTvhUEpTaZvBzp5pyaRIPeJDH35Ws0C9nIxmNToCFm
 Ngb0jtQ8cO2LU4KSHlOQSWrrsPqQVxqdBOE04a4=
X-Google-Smtp-Source: APXvYqzFcJ2ZmwK+aB+bEQ2RTNygZhJGFn/p7+CFUQ/hSJO8saN/oMGgPjOQMI0wmykpNh+ptf3YUK1OSXulWL9tyQs=
X-Received: by 2002:a24:6294:: with SMTP id
 d142mr17467565itc.102.1559571093293; 
 Mon, 03 Jun 2019 07:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <1559251257-12383-1-git-send-email-kdasu.kdev@gmail.com>
 <20190601095748.35d1c1aa@collabora.com>
In-Reply-To: <20190601095748.35d1c1aa@collabora.com>
From: Kamal Dasu <kdasu.kdev@gmail.com>
Date: Mon, 3 Jun 2019 10:11:20 -0400
Message-ID: <CAC=U0a1q2CTZx+btLBJNewK8Rv3WXVE-ZV+j5fFWZPJLoJ94NA@mail.gmail.com>
Subject: Re: [PATCH 1/3] mtd: nand: raw: brcmnand: Refactored code and
 introduced inline functions
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_071135_028321_11BFBAEA 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Boris,

On Sat, Jun 1, 2019 at 3:57 AM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Thu, 30 May 2019 17:20:35 -0400
> Kamal Dasu <kdasu.kdev@gmail.com> wrote:
>
> > Refactored NAND ECC and CMD address configuration code to use inline
> > functions.
>
> I'd expect the compiler to be smart enough to decide when inlining is
> appropriate. Did you check that adding the inline specifier actually
> makes a difference?

This was done to make the code more readable. It does not make any
difference to performance.

>
> >
> > Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> > ---
> >  drivers/mtd/nand/raw/brcmnand/brcmnand.c | 100 +++++++++++++++++++------------
> >  1 file changed, 62 insertions(+), 38 deletions(-)
> >
> > diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> > index ce0b8ff..77b7850 100644
> > --- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> > +++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> > @@ -588,6 +588,54 @@ static inline void brcmnand_write_fc(struct brcmnand_controller *ctrl,
> >       __raw_writel(val, ctrl->nand_fc + word * 4);
> >  }
> >
> > +static inline void brcmnand_clear_ecc_addr(struct brcmnand_controller *ctrl)
> > +{
> > +
> > +     /* Clear error addresses */
> > +     brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_ADDR, 0);
> > +     brcmnand_write_reg(ctrl, BRCMNAND_CORR_ADDR, 0);
> > +     brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_EXT_ADDR, 0);
> > +     brcmnand_write_reg(ctrl, BRCMNAND_CORR_EXT_ADDR, 0);
> > +}
> > +
> > +static inline u64 brcmnand_get_uncorrecc_addr(struct brcmnand_controller *ctrl)
> > +{
> > +     u64 err_addr;
> > +
> > +     err_addr = brcmnand_read_reg(ctrl, BRCMNAND_UNCORR_ADDR);
> > +     err_addr |= ((u64)(brcmnand_read_reg(ctrl,
> > +                                          BRCMNAND_UNCORR_EXT_ADDR)
> > +                                          & 0xffff) << 32);
> > +
> > +     return err_addr;
> > +}
> > +
> > +static inline u64 brcmnand_get_correcc_addr(struct brcmnand_controller *ctrl)
> > +{
> > +     u64 err_addr;
> > +
> > +     err_addr = brcmnand_read_reg(ctrl, BRCMNAND_CORR_ADDR);
> > +     err_addr |= ((u64)(brcmnand_read_reg(ctrl,
> > +                                          BRCMNAND_CORR_EXT_ADDR)
> > +                                          & 0xffff) << 32);
> > +
> > +     return err_addr;
> > +}
> > +
> > +static inline void brcmnand_set_cmd_addr(struct mtd_info *mtd, u64 addr)
> > +{
> > +     struct nand_chip *chip =  mtd_to_nand(mtd);
> > +     struct brcmnand_host *host = nand_get_controller_data(chip);
> > +     struct brcmnand_controller *ctrl = host->ctrl;
> > +
> > +     brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
> > +                        (host->cs << 16) | ((addr >> 32) & 0xffff));
> > +     (void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
> > +     brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS,
> > +                        lower_32_bits(addr));
> > +     (void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> > +}
> > +
> >  static inline u16 brcmnand_cs_offset(struct brcmnand_controller *ctrl, int cs,
> >                                    enum brcmnand_cs_reg reg)
> >  {
> > @@ -1213,9 +1261,12 @@ static void brcmnand_send_cmd(struct brcmnand_host *host, int cmd)
> >  {
> >       struct brcmnand_controller *ctrl = host->ctrl;
> >       int ret;
> > +     u64 cmd_addr;
> > +
> > +     cmd_addr = brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> > +
> > +     dev_dbg(ctrl->dev, "send native cmd %d addr 0x%llx\n", cmd, cmd_addr);
> >
> > -     dev_dbg(ctrl->dev, "send native cmd %d addr_lo 0x%x\n", cmd,
> > -             brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS));
> >       BUG_ON(ctrl->cmd_pending != 0);
> >       ctrl->cmd_pending = cmd;
> >
> > @@ -1374,12 +1425,7 @@ static void brcmnand_cmdfunc(struct nand_chip *chip, unsigned command,
> >       if (!native_cmd)
> >               return;
> >
> > -     brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
> > -             (host->cs << 16) | ((addr >> 32) & 0xffff));
> > -     (void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
> > -     brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS, lower_32_bits(addr));
> > -     (void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> > -
> > +     brcmnand_set_cmd_addr(mtd, addr);
> >       brcmnand_send_cmd(host, native_cmd);
> >       brcmnand_waitfunc(chip);
> >
> > @@ -1597,20 +1643,10 @@ static int brcmnand_read_by_pio(struct mtd_info *mtd, struct nand_chip *chip,
> >       struct brcmnand_controller *ctrl = host->ctrl;
> >       int i, j, ret = 0;
> >
> > -     /* Clear error addresses */
> > -     brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_ADDR, 0);
> > -     brcmnand_write_reg(ctrl, BRCMNAND_CORR_ADDR, 0);
> > -     brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_EXT_ADDR, 0);
> > -     brcmnand_write_reg(ctrl, BRCMNAND_CORR_EXT_ADDR, 0);
> > -
> > -     brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
> > -                     (host->cs << 16) | ((addr >> 32) & 0xffff));
> > -     (void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
> > +     brcmnand_clear_ecc_addr(ctrl);
> >
> >       for (i = 0; i < trans; i++, addr += FC_BYTES) {
> > -             brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS,
> > -                                lower_32_bits(addr));
> > -             (void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> > +             brcmnand_set_cmd_addr(mtd, addr);
> >               /* SPARE_AREA_READ does not use ECC, so just use PAGE_READ */
> >               brcmnand_send_cmd(host, CMD_PAGE_READ);
> >               brcmnand_waitfunc(chip);
> > @@ -1630,21 +1666,15 @@ static int brcmnand_read_by_pio(struct mtd_info *mtd, struct nand_chip *chip,
> >                                       host->hwcfg.sector_size_1k);
> >
> >               if (!ret) {
> > -                     *err_addr = brcmnand_read_reg(ctrl,
> > -                                     BRCMNAND_UNCORR_ADDR) |
> > -                             ((u64)(brcmnand_read_reg(ctrl,
> > -                                             BRCMNAND_UNCORR_EXT_ADDR)
> > -                                     & 0xffff) << 32);
> > +                     *err_addr = brcmnand_get_uncorrecc_addr(ctrl);
> > +
> >                       if (*err_addr)
> >                               ret = -EBADMSG;
> >               }
> >
> >               if (!ret) {
> > -                     *err_addr = brcmnand_read_reg(ctrl,
> > -                                     BRCMNAND_CORR_ADDR) |
> > -                             ((u64)(brcmnand_read_reg(ctrl,
> > -                                             BRCMNAND_CORR_EXT_ADDR)
> > -                                     & 0xffff) << 32);
> > +                     *err_addr = brcmnand_get_correcc_addr(ctrl);
> > +
> >                       if (*err_addr)
> >                               ret = -EUCLEAN;
> >               }
> > @@ -1711,7 +1741,7 @@ static int brcmnand_read(struct mtd_info *mtd, struct nand_chip *chip,
> >       dev_dbg(ctrl->dev, "read %llx -> %p\n", (unsigned long long)addr, buf);
> >
> >  try_dmaread:
> > -     brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_COUNT, 0);
> > +     brcmnand_clear_ecc_addr(ctrl);
> >
> >       if (has_flash_dma(ctrl) && !oob && flash_dma_buf_ok(buf)) {
> >               err = brcmnand_dma_trans(host, addr, buf, trans * FC_BYTES,
> > @@ -1858,15 +1888,9 @@ static int brcmnand_write(struct mtd_info *mtd, struct nand_chip *chip,
> >               goto out;
> >       }
> >
> > -     brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
> > -                     (host->cs << 16) | ((addr >> 32) & 0xffff));
> > -     (void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
> > -
> >       for (i = 0; i < trans; i++, addr += FC_BYTES) {
> >               /* full address MUST be set before populating FC */
> > -             brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS,
> > -                                lower_32_bits(addr));
> > -             (void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
> > +             brcmnand_set_cmd_addr(mtd, addr);
> >
> >               if (buf) {
> >                       brcmnand_soc_data_bus_prepare(ctrl->soc, false);
>

Thanks
Kamal

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
