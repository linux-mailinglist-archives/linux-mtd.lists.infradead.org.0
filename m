Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F674B3BE
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Jun 2019 10:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ineP48qq/MTI8BHOKhdNvngwXS5r8oi0YLOsgduSyGs=; b=VGnvBhfEdSngPO
	SBAf7lIClN74vmWfaEoH/Eq2ApkHdoYBIExCJACGhbq6VwGh9r41QXbX2zqHwLYdPpg2PwqWfTybB
	ZFsg2fi1Ak9ZuCge8HaJ5/dUGn4AwmHPepzL2iaLou1cJSYhIQqluRJEDXqGCOsjKytvr5McuaKyM
	LJvVDM/an6xFShuKBOkrkFhv8h6lLpfAd6cOWsg7L4MwFUXJTQOKE9Egl/tRr8nWms4mh1X3XIO+p
	hLw268KSGNEdatrrki/5Pa5JN5eoG89wdR9vzAGc5CCb3/PhwPUs63nZq4MaOyigDIbzreaBuYBCC
	k4k8sA7nAv+NNoEUuffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdVkl-0007yG-NC; Wed, 19 Jun 2019 08:15:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdVkc-0007xM-Nn
 for linux-mtd@lists.infradead.org; Wed, 19 Jun 2019 08:15:29 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 521AE263B50;
 Wed, 19 Jun 2019 09:15:22 +0100 (BST)
Date: Wed, 19 Jun 2019 10:15:19 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH v3 2/4] mtd: rawnand: Add Macronix MX25F0A NAND controller
Message-ID: <20190619101519.391919ec@collabora.com>
In-Reply-To: <OF5EAF94EB.AE31CF59-ON4825841E.002A2C38-4825841E.002C60BF@mxic.com.tw>
References: <1555320234-15802-1-git-send-email-masonccyang@mxic.com.tw>
 <1555320234-15802-3-git-send-email-masonccyang@mxic.com.tw>
 <20190512151820.4f2dd9da@xps13>
 <OF074A1F06.5C1A58BE-ON482583FD.0031CD95-482583FD.003437AD@mxic.com.tw>
 <20190520142333.390091d5@xps13>
 <OFADC47344.0F9941B2-ON48258403.002336E3-48258403.003141F0@mxic.com.tw>
 <20190527144250.71908bd9@xps13>
 <OFE923A8E5.50375C30-ON48258409.0009AE1B-48258409.00119767@mxic.com.tw>
 <20190617143510.4ded5728@xps13>
 <OF1C1397B4.241DC339-ON4825841D.000482A2-4825841D.0007B67E@mxic.com.tw>
 <20190618081436.5d488320@collabora.com>
 <20190618092901.3bdd9f61@collabora.com>
 <OF5EAF94EB.AE31CF59-ON4825841E.002A2C38-4825841E.002C60BF@mxic.com.tw>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_011527_744598_0134E231 
X-CRM114-Status: GOOD (  18.34  )
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
Cc: mark.rutland@arm.com, christophe.kerello@st.com,
 marcel.ziswiler@toradex.com, stefan@agner.ch, liang.yang@amlogic.com,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 lee.jones@linaro.org, richard@nod.at, marek.vasut@gmail.com,
 geert@linux-m68k.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 bbrezillon@kernel.org, juliensu@mxic.com.tw, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, paul.burton@mips.com, broonie@kernel.org,
 computersforpeace@gmail.com, dwmw2@infradead.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 16:04:43 +0800
masonccyang@mxic.com.tw wrote:

> Hi Boris,
> 
> > 
> > Re: [PATCH v3 2/4] mtd: rawnand: Add Macronix MX25F0A NAND controller
> > 
> > On Tue, 18 Jun 2019 08:14:36 +0200
> > Boris Brezillon <boris.brezillon@collabora.com> wrote:
> >   
> > > > > > > > 
> > > > > > > > How to make all #CS keep high for NAND to enter 
> > > > > > > > low-power standby mode if driver don't use   
> "legacy.select_chip()" 
> > > > ?   
> > > > > > > 
> > > > > > > See commit 02b4a52604a4 ("mtd: rawnand: Make ->select_chip()    
> > > > optional   
> > > > > > > when ->exec_op() is implemented") which states:
> > > > > > > 
> > > > > > >         "When [->select_chip() is] not implemented, the core   
> is 
> > > > assuming   
> > > > > > >    the CS line is automatically asserted/deasserted by the   
> driver 
> > > > > > >    ->exec_op() implementation."   
> > > > > > > 
> > > > > > > Of course, the above is right only when the controller driver    
>  
> > > > supports   
> > > > > > > the ->exec_op() interface.   
> > > > > > 
> > > > > > Currently, it seems that we will get the incorrect data and   
> error
> > > > > > operation due to CS in error toggling if CS line is controlled   
> in 
> > > > > > ->exec_op().   
> > 
> > Oh, and please provide the modifications you added on top of this patch.
> > Right now we're speculating on what you've done which is definitely not
> > an efficient way to debug this sort of issues.  
> 
> The patch is to add in beginning of ->exec_op() to control CS# low and 
> before return from ->exec_op() to control CS# High.
> i.e,.
> static in mxic_nand_exec_op( )
> {
>  cs_to_low();
> 
> 
> 
>  cs_to_high();
>  return;
> }
> 
> But for nand_onfi_detect(), 
> it calls nand_read_param_page_op() and then nand_read_data_op().
> mxic_nand_exec_op() be called twice for nand_onfi_detect() and
> driver will get incorrect ONFI parameter table data from 
> nand_read_data_op().

And I think it's valid to release the CE pin between
read_param_page_op() (CMD(0xEC)+ADDR(0x0)) and read_data_op() (data
cycles) if your chip is CE-dont-care compliant. So, either you have a
problem with your controller driver (CS-related timings are incorrect)
or your chip is not CE-dont-care compliant.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
