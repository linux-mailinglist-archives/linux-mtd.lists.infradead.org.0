Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA97172962
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 21:18:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUUnKJD20QN0zfVjoEqeCjJVrIKtVXV2qwP3GuF0eLQ=; b=qx9G7PCs7ImG8H
	PHfR25QDrRdn6z+iHwyt4Y4IRIbxVYU3XsacPXBxaRbaEpLNukJ77uOIwSdQAFG0er/oC/71d17VG
	qZgFfwWYtweLj5nM03G1DpUmps17dxi3GmADd8dswWSNGdpP5/AJHuUwcol7atqhV6XFSv1jOOxFd
	2cwSMOI1km4JyVD8KoOmKYElIJZH5EN8po/jY6MN3EM6kczeSoKZB/MDwVtsCwbaZGxfdsdlyiXHA
	fXQ/tN14qfSsnpipQ7WJlUIQaWenAtp3qJ1V8TNq3Qu90muzdGr1JMPSmDv369PNRl11/mhU8Cb1b
	87MLsKJhAmmgkmdJSfnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Pbs-0004f1-4F; Thu, 27 Feb 2020 20:18:16 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Pbj-0004eK-Ak
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 20:18:08 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 11768296588;
 Thu, 27 Feb 2020 20:18:04 +0000 (GMT)
Date: Thu, 27 Feb 2020 21:17:59 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
Subject: Re: [EXT] Re: [PATCH v4 2/5] mtd: spinand: micron: Add new Micron
 SPI NAND devices
Message-ID: <20200227211759.7ba02273@collabora.com>
In-Reply-To: <MN2PR08MB6397477172BAC14986175E6DB8EB0@MN2PR08MB6397.namprd08.prod.outlook.com>
References: <20200206202206.14770-1-sshivamurthy@micron.com>
 <20200206202206.14770-3-sshivamurthy@micron.com>
 <20200227192247.52f84723@collabora.com>
 <MN2PR08MB6397477172BAC14986175E6DB8EB0@MN2PR08MB6397.namprd08.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_121807_501737_0BF6506C 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Boris Brezillon <bbrezillon@kernel.org>,
 "shiva.linuxworks@gmail.com" <shiva.linuxworks@gmail.com>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 20:16:46 +0000
"Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com> wrote:

> Hi Boris,
> 
> Thanks for the review.
> 
> > 
> > On Thu,  6 Feb 2020 21:22:03 +0100
> > shiva.linuxworks@gmail.com wrote:
> >   
> > > From: Shivamurthy Shastri <sshivamurthy@micron.com>
> > >
> > > Add device table for M79A and M78A series Micron SPI NAND devices.
> > >
> > > Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
> > > ---
> > >  drivers/mtd/nand/spi/micron.c | 31  
> > +++++++++++++++++++++++++++++++  
> > >  1 file changed, 31 insertions(+)
> > >
> > > diff --git a/drivers/mtd/nand/spi/micron.c  
> > b/drivers/mtd/nand/spi/micron.c  
> > > index c028d0d7e236..5fd1f921ef12 100644
> > > --- a/drivers/mtd/nand/spi/micron.c
> > > +++ b/drivers/mtd/nand/spi/micron.c
> > > @@ -91,6 +91,7 @@ static int micron_8_ecc_get_status(struct  
> > spinand_device *spinand,  
> > >  }
> > >
> > >  static const struct spinand_info micron_spinand_table[] = {
> > > +	/* M79A 2Gb 3.3V */  
> > 
> > Should be added in a separate patch.  
> 
> Okay, I will create separate patch for each device.

No, I meant just for this line.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
