Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090DF1C5223
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 11:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AuZN5H5veobv8EdGqGvXShkjpscxxmqF4S1gFlilSqI=; b=kYSXCPmkJRon/T
	vIhTWbs4AzrRQQfnHhR/wJfvKnF/UesxvzvBpFm9l2jSFK8kSezhysPd5rhNWtfz6dfQVT6OBz0K1
	U74+cgye483Na+R2BqALYJ29HJEXRojQA+yLPs9bL2qGEV1kt7uiEN43NAy0qp3D5GGAcibcYXLgk
	eX28B2Wqx1xVZmvdestxqfSIItqhvzgEZsLSNXRnIGXsCd4KmcovlGTfuExRzSkJxsyvU5tEkrEWm
	5ZZ6XmZpr87DhN7Luq8hF0EpyMpCmYZH8Gq3vcQH4v5Z1fTJ2zbALM7gLiqiQRWzwpKHOZmhLYm1D
	MXOTIYSaQtYcjq8jTt9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVu8K-0001pH-Br; Tue, 05 May 2020 09:45:00 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVu88-0001mJ-1R
 for linux-mtd@lists.infradead.org; Tue, 05 May 2020 09:44:49 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:d3ea:1c7:41fd:3038])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 143F32A1B43;
 Tue,  5 May 2020 10:44:46 +0100 (BST)
Date: Tue, 5 May 2020 11:44:43 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH v2 0/5] mtd: spi-nor: Add support for Octal 8D-8D-8D mode
Message-ID: <20200505114443.6ebd5d3c@collabora.com>
In-Reply-To: <OF28AE0642.4F34D6BB-ON4825855F.002D6E58-4825855F.003458C9@mxic.com.tw>
References: <1587451187-6889-1-git-send-email-masonccyang@mxic.com.tw>
 <20200421092328.129308f6@collabora.com>
 <20200427175536.2mmei2fy6f7bg6jm@yadavpratyush.com>
 <OF18214CA5.6A9B2B30-ON48258558.001D894C-48258558.002249E0@mxic.com.tw>
 <20200428085401.574wmo6qddmumd7q@yadavpratyush.com>
 <OF04289CE2.B346916F-ON48258559.002280BD-48258559.00295800@mxic.com.tw>
 <20200429181856.kkavelcczylg4yxf@yadavpratyush.com>
 <OF28AE0642.4F34D6BB-ON4825855F.002D6E58-4825855F.003458C9@mxic.com.tw>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_024448_216611_9DC04F4A 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, juliensu@mxic.com.tw,
 richard@nod.at, Pratyush Yadav <me@yadavpratyush.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, broonie@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 5 May 2020 17:31:45 +0800
masonccyang@mxic.com.tw wrote:


> > > > > I quickly went through your patches but can't reply them in each   
> your 
> > > > > patches.
> > > > > 
> > > > > i.e,.
> > > > > 1) [v4,03/16] spi: spi-mem: allow specifying a command's extension
> > > > > 
> > > > > -                                u8 opcode;
> > > > > +                                u16 opcode;
> > > > > 
> > > > > big/little Endian issue, right? 
> > > > > why not just u8 ext_opcode;
> > > > > No any impact for exist code and actually only xSPI device use   
> > > extension   
> > > > > command.  
> > > > 
> > > > Boris already explained the reasoning behind it.  
> > > 
> > > yup, I got his point and please make sure CPU data access.
> > > 
> > > i.e,.
> > > Fix endianness of the BFPT DWORDs and xSPI in sfdp.c
> > > 
> > > and your patch,
> > > +                                ext = spi_nor_get_cmd_ext(nor, op);
> > > +                                op->cmd.opcode = (op->cmd.opcode <<   
> 8) | 
> > > ext;
> > > +                                op->cmd.nbytes = 2;
> > > 
> > > I think maybe using u8 opcode[2] could avoid endianness.  
> > 
> > Again, thanks Boris for answering this. FWIW, I don't see anything wrong   
> 
> > with his suggestion.
> > 
> > To clarify a bit more, the idea is that we transmit the opcode MSB 
> > first, just we do for the address. Assume we want to issue the command 
> > 0x05. In 1S mode, we set cmd.opcode to 0x05. Here cmd.nbytes == 1. Treat   
> 
> > is as a 1-byte value, so the MSB is the same as the LSB. We directly 
> > send 0x5 on the bus.  
> 
> There are many SPI controllers driver use "op->cmd.opcode" directly,
> so is spi-mxic.c.
> 
> i.e,.
> ret = mxic_spi_data_xfer(mxic, &op->cmd.opcode, NULL, op->cmd.nbytes);

Just because you do it doesn't mean it's right. And most controllers use
the opcode value, they don't dereference the pointer as you do here.

> 
> > 
> > If cmd.nbytes == 2, then the opcode would be 0x05FA (assuming extension 
> > is invert of command). So we send the MSB (0x05) first, and LSB (0xFA) 
> > next.  
> 
> My platform is Xilinx Zynq platform which CPU is ARMv7 processor.
> 
> In 1-1-1 mode, it's OK to send 1 byte command by u16 opcode but
> in 8D-8D-8D mode, I need to patch
> 
> i.e.,
> op->cmd.opcode = op->cmd.opcode | (ext << 8);
> 
> rather than your patch.

Seriously, how hard is it to extract each byte from the u16 if your
controller needs to pass things in a different order? I mean, that's
already how it's done for the address cycle, so why is it a problem
here? This sounds like bikeshedding to me. If the order is properly
documented in the kernel doc, I see no problem having it grouped in one
u16, with the first cmd cycle placed in the MSB and the second one in
the LSB.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
