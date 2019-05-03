Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B87E12B99
	for <lists+linux-mtd@lfdr.de>; Fri,  3 May 2019 12:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEjy2THtacZRoQejhQe24S9EaOIRzrKNzk0TDDcR/+w=; b=RvsYZWkeDhl0is
	tI7/VvzN6+mO0tDNBP6sYlaHdTHiwURSDWCp9iGjoYCnEttgu3R0mrbFj0gMQqMJuxRmap/E6Uoph
	MSbPIso/QTTgQjBPxuC8mj1jk1CwBMgdjfJAsAfAve+cQLB2z1zFgDQMke4TxVBd5CmdCN9vK5nmZ
	8YO8UHnDX3RgIG11QwLQagAwjz8Sg8mRWOc+90Km3ohKR78cvD6B6EDKpdM/ajoi0BVYcsmHlFQ27
	WQrRXNsObgTb/hykJ3rAnF7Eg3LgsfowT5s56W1C6g2XSmzOz1s0IirCP0T+fVfvED7MsnIw4y1j6
	Vh2/sL/QZGPkGTH9un9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVZK-0005KY-W1; Fri, 03 May 2019 10:37:31 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVZB-0005GZ-Ai
 for linux-mtd@lists.infradead.org; Fri, 03 May 2019 10:37:23 +0000
Received: by mail-lf1-x144.google.com with SMTP id o16so4064980lfl.7
 for <linux-mtd@lists.infradead.org>; Fri, 03 May 2019 03:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y49iuZlGEFRKXGMhL/FW153snu1fMi8v/es25880oE8=;
 b=loJhy4XJ97xuNf+RrpSA+jCJMImzpJ6++PjvZ3i+MfQK3dS1nWqOJbjKYB4QcVeQHU
 18pp/eByTT443pvkHn8G3n8oY/EpCXnMMlJjlVjJSKM34iB8HzqJ74dogtIAyYQx5wwi
 SDDuxo4bNGGgSoNkV6ngd2ulv2Lg1eveOEwULJvBt2juAmdWqOkMr4c7zcC1VqIChbNt
 yk+HgI4/yiG/SlUDJj8aDQdNTdAwUN1L+dhvQZGkQImNLMC+deS5j3/304qUhcQyNB7r
 LsUARKemMOAfqft34Qg6d3Epi1ObP6uDY3/xsEy08J8YFfp1qBEgGjayFLOCLOISgr6O
 d2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y49iuZlGEFRKXGMhL/FW153snu1fMi8v/es25880oE8=;
 b=hoBRDXbSujtSilRbUBx8LnvnE33Y5+yYIgPKJwm9/UCFmvx4ZmlErjVx/wgEacCLoN
 Z9Um/KT+tckODzT+mNWF3w3KIQh2WX7bPEM2SB4RRLlsp/GqlnvzedmMNqKriT+Jm2K2
 h+rHq68AZVfoZmDQmczsRWXxuGGixvBJGwCpYWd8hzbZFdRIr3bFek5GDctJcxsAuuHy
 x2jKcgJmynFsZYijkflRzBmpNos5KvJ+pTfO1U68BcA3IJdvsdH+f0HnOfSINyiWyzU7
 mFwvANEm+hmT5/Vft3qsUW2rWzGOSOX2h635tHaNi0O4X97aPW4Yfutxye+0Wx56HCFi
 8osw==
X-Gm-Message-State: APjAAAXEBJOUk3SEj25CeqHi11R3N3gST3LpdIvpiA7qXAjogEE5Uc9L
 oKwsJnkIhKGNZ0tgG+1hoBSCyrzGRLc3oLMiAW6Jmw==
X-Google-Smtp-Source: APXvYqxU+UuYktvsztEvJ9/ariHXzb6Ot8TO3Mjaxpfia5I1sJ6/SrkkV2s5OAkU7J7gMftr/G2qyyQxowiQWzM4eiA=
X-Received: by 2002:a19:ec12:: with SMTP id b18mr4411872lfa.149.1556879836632; 
 Fri, 03 May 2019 03:37:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190503085327.5180-1-simon.k.r.goldschmidt@gmail.com>
 <8161008c-fafd-a89f-d2d8-413224844cd2@gmail.com>
In-Reply-To: <8161008c-fafd-a89f-d2d8-413224844cd2@gmail.com>
From: Simon Goldschmidt <simon.k.r.goldschmidt@gmail.com>
Date: Fri, 3 May 2019 12:37:05 +0200
Message-ID: <CAAh8qsyBHCD9o_wyk6cHxyxagpQvX0dtXxy_P4KqZgoeU8VrEg@mail.gmail.com>
Subject: Re: [PATCH] mtd: spi-nor: enable 4B opcodes for n25q256a
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_033721_579658_9853C649 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (simon.k.r.goldschmidt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 12:00 PM Marek Vasut <marek.vasut@gmail.com> wrote:
>
> On 5/3/19 10:53 AM, Simon Goldschmidt wrote:
> > Tested on socfpga cyclone5 where this is required to ensure that the
> > boot rom can access this flash after warm reboot.
>
> Are you sure _all_ variants of the N25Q256 support 4NB opcodes ?
> I think there were some which didn't, but I might be wrong.

Oh, damn, you're right. The documentation [1] statest that 4-byte erase and
program opcodes are only supported for part numbers N25Q256A83ESF40x,
N25Q256A83E1240x and N25QA83ESFA0F.

Any idea of how I can still enable 4-byte opcodes for my chip?

Regards,
Simon

>
> > Signed-off-by: Simon Goldschmidt <simon.k.r.goldschmidt@gmail.com>
> > ---
> >
> >  drivers/mtd/spi-nor/spi-nor.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index fae147452..4cdec2cc2 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -1874,7 +1874,7 @@ static const struct flash_info spi_nor_ids[] = {
> >       { "n25q064a",    INFO(0x20bb17, 0, 64 * 1024,  128, SECT_4K | SPI_NOR_QUAD_READ) },
> >       { "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, SECT_4K | SPI_NOR_QUAD_READ) },
> >       { "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SECT_4K | SPI_NOR_QUAD_READ) },
> > -     { "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> > +     { "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
> >       { "n25q256ax1",  INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
> >       { "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
> >       { "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
> >
>
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
