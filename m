Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A697DE578
	for <lists+linux-mtd@lfdr.de>; Mon, 21 Oct 2019 09:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1n9OQlv+wm46AGHrVRmkkd0GtSFKz9kUpaSr//mn/S8=; b=XaPNYU8/8QkIEW
	DyzZ8OfKFvCKtiOooe/qdM5txgXc4u+eVhA4wrrf4xLaWppaZ9IaYjAIYW7/fy4GCTLHD6cuxtcX3
	oMvUkAyyc/O240W03L7nnVH+mikVwpyl8/htwo+v702fzrqCyd8iz177AntyPkBUIDXbNhTOYy/Sv
	R8JrJ5C3oEI7pthC3XeLygvp+CLpyD9UN965ILwycSqGCLtzCRST/+DY+P00BltWE75k0vhhBaGOV
	D6W4EazLAvZ9Pq9TwxgBtlEPp5gq+Wksy/GqJnmUOkrYeXK4mkZD+35S30rrXxL+CjP8vZAdUNzz0
	VvyNHKl/7WgtDMFbYjvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSN3-0008EK-AB; Mon, 21 Oct 2019 07:44:53 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSMv-0008DX-B1
 for linux-mtd@lists.infradead.org; Mon, 21 Oct 2019 07:44:46 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8DF67289F08;
 Mon, 21 Oct 2019 08:44:39 +0100 (BST)
Date: Mon, 21 Oct 2019 09:44:35 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH RFC 2/3] mtd: rawnand: Add support Macronix Block
 Protection function
Message-ID: <20191021094435.78f4b16e@collabora.com>
In-Reply-To: <OF894937F3.4B6774EB-ON4825849A.0027B2DF-4825849A.0028A53F@mxic.com.tw>
References: <1568793387-25199-1-git-send-email-masonccyang@mxic.com.tw>
 <1568793387-25199-2-git-send-email-masonccyang@mxic.com.tw>
 <20191007104511.5aa7b8f2@xps13> <20191007112442.783e4fbe@xps13>
 <OFEDE76FEE.8BC48D9E-ON4825848D.000BCC94-4825848D.000E0643@mxic.com.tw>
 <20191008170249.06bd45ce@xps13>
 <OFB4F10613.467EB346-ON48258494.0020403E-48258494.002550A2@LocalDomain>
 <OF894937F3.4B6774EB-ON4825849A.0027B2DF-4825849A.0028A53F@mxic.com.tw>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_004445_508372_C299A224 
X-CRM114-Status: GOOD (  18.92  )
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
Cc: richard@nod.at, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 frieder.schrempf@kontron.de, marcel.ziswiler@toradex.com,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 tglx@linutronix.de, computersforpeace@gmail.com, dwmw2@infradead.org,
 marek.vasut@gmail.com, vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 15:23:57 +0800
masonccyang@mxic.com.tw wrote:

> Hi Miquel,
> 
> 
> > > > > Then fill-in these two hooks from the manufacturer code, without   
> the
> > > > > postponed init.
> > > > >   
> > > > 
> > > > But in the final of nand_scan_tail(), mtd->_lock/_unlock will be
> > > > filled by NULL, right ?  
> > > 
> > > The NAND core should set mtd->_lock/_unlock() to NAND specific hooks   
> so
> > > that the MTD layer is abstracted and and drivers do not see it. Then,
> > > in the NAND helper, either there is no specific hook defined by a
> > > manufacturer driver and you return -ENOTSUPP, or you execute the
> > > defined hook.  
> > 
> > okay, patch specific manufacturer _lock/_unlock driver
> > in nand_manufacturer_init();
> > 
> > and in the final of nand_scan_tail()
> > if (!mtd->_lock)
> >  mtd->_lock = NULL;
> > if (!mtd->_unlock)
> >  mtd->_unlock = NULL;  
>  
> 
> I'm still considering of post_init() in nand_scan_tail() for
> MTD layer default call-back function replacement because
> there would be more call-back functions need it.
> i.e., 
> MTD->_lock/_unlokc
> MTD->_suspend/_resume

Again, that's something that needs to be abstracted so that both the
NAND manufacturer driver and the NAND controller driver can take
appropriate actions on suspend/resume operations.

> NTD->_point/_unpoint

->_point/_unpoint() are irrelevant for a NAND chip.

> ...
> 
> 
> actually, my patch series are including MTD->_locl/_unlock and 
> MTD->_suspend/_resume. how do you think ?

Miquel was suggesting to add nand_chip->{lock,unlock,is_locked}()
methods that would be implemented by the NAND manufacturer drivers, and
have generic wrappers implemented in nand_base.c:

static int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
	struct nand_chip *chip = mtd_to_nand(mtd);

	if (!chip->lock)
		return -ENOTSUPP;

	return chip->lock(chip, ofs, len);
}

...

If you do that, you won't need this post_init() hook.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
