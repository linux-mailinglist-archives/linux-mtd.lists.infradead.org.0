Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F5886590
	for <lists+linux-mtd@lfdr.de>; Thu,  8 Aug 2019 17:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Do99v3qv43d9pvmBcw9fUXP0WeSWio8zmJXjd0jzKE=; b=RH+hVDwqGAiPyI
	J890iYFo2NC17vWmivQ7MZxhqpODdmBdxUl9R4ZKM/c4skmsIRzk+ce4Z7JLNbWHdZpnVyOoO7YYV
	PW2OIc0alFb2g2eM0vxwNuAwqj+GEVuhrkgSZ4U79Tc2Gk4dyK9BwTgrxsV1jmdb8R4o1ZBH/BxR9
	iNu4w0NODHyqmMEWR4GwFh2+ayClCqg65BVamVQpXBKlqtKhrVN78Y2uxj6Ja+nw3dwyf4hUn6tkd
	40Pt+OKq52ku1CqdcAiSDWTiAplBNV5pyO3u3zPnghrW0pXBxWZlftYZ9uOheqPVXnKqig+Yp6vu1
	+insWdbqAT5r2sCuorzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkCt-00085A-Sk; Thu, 08 Aug 2019 15:19:59 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkCk-00084V-UH
 for linux-mtd@lists.infradead.org; Thu, 08 Aug 2019 15:19:52 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5D68828C51F;
 Thu,  8 Aug 2019 16:19:48 +0100 (BST)
Date: Thu, 8 Aug 2019 17:19:45 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Tomer Maimon <tmaimon77@gmail.com>
Subject: Re: [PATCH v5 2/3] mtd: spi-nor: Move m25p80 code in spi-nor.c
Message-ID: <20190808171945.21a608cc@collabora.com>
In-Reply-To: <CAP6Zq1g6Z=o7FnX4UpZ-dq_9Ui-yv9E5OEJGirK49RqFUPoP_g@mail.gmail.com>
References: <20190806051041.3636-1-vigneshr@ti.com>
 <20190806051041.3636-3-vigneshr@ti.com>
 <CAP6Zq1h9Xe9ptGxQpjYwoFaS1sTyd-3EsMTAYwp9e70Cm1czLg@mail.gmail.com>
 <20190808160452.1da76beb@collabora.com>
 <CAP6Zq1g6Z=o7FnX4UpZ-dq_9Ui-yv9E5OEJGirK49RqFUPoP_g@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_081951_233540_85395BD9 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019 17:44:35 +0300
Tomer Maimon <tmaimon77@gmail.com> wrote:

> Hi Boris,
> 
> On Thu, 8 Aug 2019 at 17:04, Boris Brezillon <boris.brezillon@collabora.com>
> wrote:
> 
> > Hi Tomer,
> >
> > On Thu, 8 Aug 2019 13:05:14 +0300
> > Tomer Maimon <tmaimon77@gmail.com> wrote:
> >  
> > > @@ -688,6 +1003,16 @@ static int spi_nor_erase_sector(struct spi_nor  
> > *nor,  
> > > > u32 addr)
> > > >         if (nor->erase)
> > > >                 return nor->erase(nor, addr);
> > > >
> > > > +       if (nor->spimem) {
> > > > +               struct spi_mem_op op =
> > > > +                       SPI_MEM_OP(SPI_MEM_OP_CMD(nor->erase_opcode,  
> > 1),  
> > > > +                                  SPI_MEM_OP_ADDR(nor->addr_width,  
> > addr,  
> > > > 1),
> > > > +                                  SPI_MEM_OP_NO_DUMMY,
> > > > +                                  SPI_MEM_OP_NO_DATA);
> > > > +
> > > > +               return spi_mem_exec_op(nor->spimem, &op);
> > > > +       }
> > > > +
> > > >  
> > >
> > > static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
> > > {
> > >
> > >       int i;
> > >
> > >       if (nor->flags & SNOR_F_S3AN_ADDR_DEFAULT)
> > >               addr = spi_nor_s3an_addr_convert(nor, addr);
> > >
> > >       if (nor->erase)
> > >               return nor->erase(nor, addr);
> > >
> > >       /*
> > >        * Default implementation, if driver doesn't have a specialized HW
> > >        * control
> > >        */
> > >       for (i = nor->addr_width - 1; i >= 0; i--) {
> > >               nor->bouncebuf[i] = addr & 0xff;
> > >               addr >>= 8;
> > >       }
> > >
> > >       if (nor->spimem) {
> > >               struct spi_mem_op op =
> > >                       SPI_MEM_OP(SPI_MEM_OP_CMD(nor->erase_opcode, 1),
> > >                       SPI_MEM_OP_NO_ADDR,
> > >                       SPI_MEM_OP_NO_DUMMY,
> > >                       SPI_MEM_OP_DATA_OUT(nor->addr_width,  
> > nor->bouncebuf, 1));
> >
> > That's wrong. If you need that, that's probably a spi-mem controller
> > driver issue. Address cycles should be passed through the
> > spi_mem_op->addr field, not packed with the data cycles.
> >  
> 
> Maybe I missing something but this is not the way it
> working in the current spi-nor and m25p80 driver...
> in function  spi_nor_erase_sector it calling
> nor->write_reg(nor, nor->erase_opcode, nor->bouncebuf, nor->addr_width);
> 
> so it will call m25p80_write_reg and in this function the op sets as follow:
> 
>         struct spi_mem_op op = SPI_MEM_OP(SPI_MEM_OP_CMD(opcode, 1),
>                                           SPI_MEM_OP_NO_ADDR,
>                                           SPI_MEM_OP_NO_DUMMY,
>                                           SPI_MEM_OP_DATA_OUT(len, NULL, 1));
> 
> Do we like to modify it?

Yes. The spi-mem core is taking care of this conversion [1].

[1]https://elixir.bootlin.com/linux/v5.3-rc3/source/drivers/spi/spi-mem.c#L329

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
