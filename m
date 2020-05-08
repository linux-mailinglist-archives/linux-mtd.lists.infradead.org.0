Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05881CA861
	for <lists+linux-mtd@lfdr.de>; Fri,  8 May 2020 12:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFBtGQO/yltPk1AccJpiDwM3QGlkZwSX4yiukPZwMJk=; b=catmgCiGQYN0Aw
	xRpaqIp/6lbc7WxPGIP1KBOH7OKHDtAEUCq5AoGGIguGu1NUOciP8a4Oya5rIb4RJYeB5i/3vk5U2
	JKd4fk+UUdTq1NBYeDYE4vgZ41q8OPYeFjTKqbTjj9R9c25FH9vYW+NpIYOdA6iReEdW4YYzKFxt6
	KMzK89tuhZSSraDqLopA7rSa1ToGinWEsB9y6o2hxtZ1Tmj0q9rCtT0EkTCLC7hOncnwMDBMUzpL7
	AgsTru5F7KzIGvtOyyjtcMaUU9ZObqAXSoJJiCiHwDVBlrQ4h+6AtJl5wXVWPwvn9yBxhP5E2IaRz
	+vwwrncA/QQN6nG0SBiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX0Iu-0007DK-Qe; Fri, 08 May 2020 10:32:28 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX0Ik-0007Cq-P2
 for linux-mtd@lists.infradead.org; Fri, 08 May 2020 10:32:20 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D6E66FF809;
 Fri,  8 May 2020 10:32:06 +0000 (UTC)
Date: Fri, 8 May 2020 12:32:05 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 00/17] mtd: rawnand: cafe: Convert to exec_op() (and more)
Message-ID: <20200508123205.4cf293b7@xps13>
In-Reply-To: <20200502151510.59a690a8@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200502112732.330971-1-lkundrak@v3.sk>
 <20200502151510.59a690a8@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_033218_946399_E4C23744 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, richard@nod.at,
 Lubomir Rintel <lkundrak@v3.sk>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


> > 2.) When the block after a conditional is multiple lines, could you please
> > include the curly braces? That is:
> > 
> >         if (ctrl1 & CAFE_NAND_CTRL1_HAS_DATA_IN) {
> >                 cafe_read_buf(chip,
> >                               subop->instrs[data_instr].ctx.data.buf.in +
> >                               nand_subop_get_data_start_off(subop, data_instr),
> >                               nand_subop_get_data_len(subop, data_instr));
> >         }
> > 
> > Instead of:
> > 
> >         if (ctrl1 & CAFE_NAND_CTRL1_HAS_DATA_IN)
> >                 cafe_read_buf(chip,
> >                               subop->instrs[data_instr].ctx.data.buf.in +
> >                               nand_subop_get_data_start_off(subop, data_instr),
> >                               nand_subop_get_data_len(subop, data_instr));
> > 
> > This makes things significantly easier to read for me, not to mention that it
> > comes handy to have the braces around for printf debugging.  
> 
> I do prefer the version without brackets, but given you debugged it,
> I'd be okay changing that one ;-) (assuming Miquel is okay with that
> too, of course).

I also prefer having curly braces around single-multiline-instructions
:)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
