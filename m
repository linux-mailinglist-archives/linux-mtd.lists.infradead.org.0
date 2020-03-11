Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBCE181F9C
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 18:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3jD60sDfaFZL1tWtEHP5tPkA+VkmuTxdZT9xAqBB1I=; b=HuRHppmRnjCICP
	qwtRk/GgSLycVECrgWdcwmjikAlj7uimStwSG14ekNfbFe9KyM9KgoscQ2CRWvpHlzc1wtzrlpA4n
	yWGR/1uxG7P1g7CbWPVG16EqUZfOcm11OJ3BHPRP7v/V4p0bgxyJqbpsOmmzMvpRnC4rhih2X/ssI
	twmlNoZcZSmJaWvw3lfwaOVSXmIHG/fQh8f9OOEArfjOrakGd+jdMhYR9sWTSqf/5lIBKxTF4FpIb
	1i+Vx+CV6xX6+VU9tTrlTgld3rRnRuH2j2M7EYwg3GPiyq5fBPy56OrmNjMuflSI/cfjHnfPwDxgA
	U0lHfbN0yy8DmLxAheiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5GX-00028Z-Mi; Wed, 11 Mar 2020 17:35:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5GN-00027H-Bd
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 17:35:25 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 79F2C293DC6;
 Wed, 11 Mar 2020 17:35:21 +0000 (GMT)
Date: Wed, 11 Mar 2020 18:35:17 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
Subject: Re: [EXT] Re: [PATCH v6 0/6] Add new series Micron SPI NAND devices
Message-ID: <20200311183517.054cc300@collabora.com>
In-Reply-To: <MN2PR08MB6397BAEC050EF2C1A9CE8CDAB8FC0@MN2PR08MB6397.namprd08.prod.outlook.com>
References: <20200309115230.7207-1-sshivamurthy@micron.com>
 <20200311164932.23cc7a42@xps13>
 <MN2PR08MB6397BAEC050EF2C1A9CE8CDAB8FC0@MN2PR08MB6397.namprd08.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_103523_530222_40B5999A 
X-CRM114-Status: GOOD (  19.17  )
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

On Wed, 11 Mar 2020 17:33:41 +0000
"Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com> wrote:

> Hi Miquel,
> 
> > 
> > Hi Shiva,
> > 
> > shiva.linuxworks@gmail.com wrote on Mon,  9 Mar 2020 12:52:24 +0100:
> >   
> > > From: Shivamurthy Shastri <sshivamurthy@micron.com>
> > >
> > > This patchset is for the new series of Micron SPI NAND devices, and the
> > > following links are their datasheets.
> > >
> > > M78A:
> > > [1] https://www.micron.com/~/media/documents/products/data-  
> > sheet/nand-flash/70-series/m78a_1gb_3v_nand_spi.pdf  
> > > [2] https://www.micron.com/~/media/documents/products/data-  
> > sheet/nand-flash/70-series/m78a_1gb_1_8v_nand_spi.pdf  
> > >
> > > M79A:
> > > [3] https://www.micron.com/~/media/documents/products/data-  
> > sheet/nand-flash/70-series/m79a_2gb_1_8v_nand_spi.pdf  
> > > [4] https://www.micron.com/~/media/documents/products/data-  
> > sheet/nand-flash/70-series/m79a_ddp_4gb_3v_nand_spi.pdf  
> > >
> > > M70A:
> > > [5] https://www.micron.com/~/media/documents/products/data-  
> > sheet/nand-flash/70-series/m70a_4gb_3v_nand_spi.pdf  
> > > [6] https://www.micron.com/~/media/documents/products/data-  
> > sheet/nand-flash/70-series/m70a_4gb_1_8v_nand_spi.pdf  
> > > [7] https://www.micron.com/~/media/documents/products/data-  
> > sheet/nand-flash/70-series/m70a_ddp_8gb_3v_nand_spi.pdf  
> > > [8] https://www.micron.com/~/media/documents/products/data-  
> > sheet/nand-flash/70-series/m70a_ddp_8gb_1_8v_nand_spi.pdf  
> > >
> > > Changes since v5:
> > > -----------------
> > >
> > > 1. Rebased series to v5.6-rc1.  
> > 
> > I am very sorry but actually I had issues applying all your patches not
> > because they were not based on v5.6-rc1, but because since then I
> > applied a patch changing the detection that changed the content of a
> > lot of structures (including in Micron's patches).
> > 
> > Can you please rebase again on top of the current nand/next? I am very
> > sorry for this extra work, this is my mistake.
> > 
> > Head should be:
> > 
> > 	a5d53ad26a8b ("mtd: rawnand: brcmnand: Add support for flash-edu
> > for dma transfers")
> > 
> > And the culprit commit is:
> > 
> > 	f1541773af49 ("mtd: spinand: rework detect procedure for different
> > READ_ID operation")  
> 
> 
> I will rebase and send the patches.
> Meanwhile, there will be small code change because of the READ_ID patch.
> 
> Do I need to drop Reviewed-by from Boris?

Nope, you can keep it.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
