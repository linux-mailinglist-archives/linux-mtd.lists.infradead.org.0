Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEE61EC900
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 07:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxQ2fcnJd62puHZKYhnmDuiF5X2HuqQ3YJCEbx1O40E=; b=MuITYe7HLGcoNw
	+vke6uEGOyiJWfX4Og5397B3RSNjwtQFTzxHlxspTb7YzZew6DuL4m+oceh46nzsSIpZNqtfYVQi4
	n8m0vwk3GHc60wjJmux6f9DJmpkovxmYtGsFeQOXFUGy/fULIMWSdr4NIxTQu1nSEw7mFJL3onJk+
	9aQfDUjHrxRzF1HwsOoxKkIPlJc/j362qjAcLYkM/yVNZuAM43Jkr+uIE9SC30DwWQ2QWTKn5tPcy
	J+iXk9SezakbPyBA7TsbZVc9BWa/6RGbksYIHii2PXwLjz7/iVB6wNkL2NsLMq9lOG6CQz25W771s
	fkqhTwlimX9sYwnumX6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgMMD-0004Io-Cz; Wed, 03 Jun 2020 05:54:33 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgMM6-0004HN-Bm
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 05:54:28 +0000
X-Originating-IP: 157.36.79.87
Received: from localhost (unknown [157.36.79.87])
 (Authenticated sender: me@yadavpratyush.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 23E36C0005;
 Wed,  3 Jun 2020 05:54:03 +0000 (UTC)
Date: Wed, 3 Jun 2020 11:23:59 +0530
From: Pratyush Yadav <me@yadavpratyush.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH v4 7/7] mtd: spi-nor: macronix: Add Octal 8D-8D-8D
 supports for Macronix mx25uw51245g
Message-ID: <20200603055359.y35dwznglc7tlewq@yadavpratyush.com>
References: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
 <1590737775-4798-8-git-send-email-masonccyang@mxic.com.tw>
 <20200529094202.7vjs7clhykncivux@yadavpratyush.com>
 <OF577383DB.7BF12AA3-ON4825857B.002468AB-4825857B.00250F16@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF577383DB.7BF12AA3-ON4825857B.002468AB-4825857B.00250F16@mxic.com.tw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_225426_674957_A24D83DD 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, juliensu@mxic.com.tw,
 richard@nod.at, miquel.raynal@bootlin.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, broonie@kernel.org, linux-mtd@lists.infradead.org,
 boris.brezillon@collabora.com, matthias.bgg@gmail.com, p.yadav@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 02/06/20 02:44PM, masonccyang@mxic.com.tw wrote:
> 
> Hi Pratyush,
> 
>  
> > Subject
> > 
> > Re: [PATCH v4 7/7] mtd: spi-nor: macronix: Add Octal 8D-8D-8D supports 
> for 
> > Macronix mx25uw51245g
> > 
> > On 29/05/20 03:36PM, Mason Yang wrote:
> > > Macronix mx25uw51245g is a SPI NOR that supports 1-1-1/8-8-8 mode.
> > > 
> > > Correct the dummy cycles to device for various frequencies
> > > after xSPI profile 1.0 table parsed.
> > > 
> > > Enable mx25uw51245g to Octal DTR mode by executing the command 
> sequences
> > > to change to octal DTR mode.
> > > 
> > > Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> > > ---
> > >  drivers/mtd/spi-nor/macronix.c | 55 
> ++++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 55 insertions(+)
> > > 
> > > diff --git a/drivers/mtd/spi-nor/macronix.c 
> b/drivers/mtd/spi-nor/macronix.c
> > > index 96735d8..6c9a24c 100644
> > > --- a/drivers/mtd/spi-nor/macronix.c
> > > +++ b/drivers/mtd/spi-nor/macronix.c
> > > @@ -8,6 +8,57 @@
> > > 
> > >  #include "core.h"
> > > 
> > > +#define MXIC_CR2_DUMMY_SET_ADDR 0x300
> > > +
> > > +/* Fixup the dummy cycles to device and setup octa_dtr_enable() */
> > > +static void mx25uw51245g_post_sfdp_fixups(struct spi_nor *nor)
> > > +{
> > > +   struct spi_nor_flash_parameter *params = nor->params;
> > > +   int ret;
> > > +   u8 rdc, wdc;
> > > +
> > > +   ret = spi_nor_read_cr2(nor, MXIC_CR2_DUMMY_SET_ADDR, &rdc);
> > > +   if (ret)
> > > +      return;
> > > +
> > > +   /* Refer to dummy cycle and frequency table(MHz) */
> > > +   switch (params->dummy_cycles) {
> > > +   case 10:   /* 10 dummy cycles for 104 MHz */
> > > +      wdc = 5;
> > > +      break;
> > > +   case 12:   /* 12 dummy cycles for 133 MHz */
> > > +      wdc = 4;
> > > +      break;
> > > +   case 16:   /* 16 dummy cycles for 166 MHz */
> > > +      wdc = 2;
> > > +      break;
> > > +   case 18:   /* 18 dummy cycles for 173 MHz */
> > > +      wdc = 1;
> > > +      break;
> > > +   case 20:   /* 20 dummy cycles for 200 MHz */
> > > +   default:
> > > +      wdc = 0;
> > > +   }
> > 
> > I don't get the point of this. You already know the fastest the 
> > mx25uw51245g flash can run at. Why not just use the maximum dummy 
> > cycles? SPI NOR doesn't know the speed the controller is running at so 
> > the best it can do is use the maximum dummy cycles possible so it never 
> > falls short. Sure, it will be _slightly_ less performance, but we will 
> > be sure to read the correct data, which is much much more important.
> 
> In general, 200MHz needs 20 dummy cycles but some powerful device may only 
> 
> needs 18 dummy cycles or less.

Yes, but do different mx25uw51245g chips have different dummy cycle 
requirements? Shouldn't all the chips with the same ID have same 
performance?

This is a fixup hook for mx25uw51245g, so you should already know how 
many cycles are needed for this specific device. Is there any need for 
generic code here?
 
> Set a proper dummy cycles for a better performance.
> 
> > 
> > Is it possible to have two chips which have _exactly_ the same ID but 
> > one supports say 200MHz frequency but the other doesn't? Without that, 
> > we can just enable the maximum and move on.
> > 
> 

-- 
Regards,
Pratyush Yadav

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
