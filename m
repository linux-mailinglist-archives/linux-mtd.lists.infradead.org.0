Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 088B11BB62D
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 08:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5jXdJT6PR5CgUw9DFNYVeeVcAmaD6YdcI+hMPgeFOc=; b=fLgcx3pjp4zepm
	Gnhl11t8VvcBfNxz6jWB21AgMkXg9YEgIt5KzoK5svqQ+qqqCjAW7nNRb2KcqCagnGFb63Pk0NfZj
	2iK5F5mi6dUC3mgO8Fl4HrS3RwOKtcj2XuFo8hDwh6sAv4ywWFknXPiU2aeuCzF0MhEg3X0fTcsM2
	knn3vb/iZbnJ4xhY3A5OcjfXStQNSDUEoa5s0k5YDs44gng2a9z+A7VvcAgSYbGh5BIc+AwENbB5/
	NP9uklUy1VbJccCs0TcshocT44GIrMV2X80Uym9bgpfpe3YclkOkMj15S5BYhHurKWZ+qs/RcIvaP
	z9rfid7A1P27V9WJnpXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJQc-0003Va-58; Tue, 28 Apr 2020 06:09:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJQU-0003U6-Tg
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 06:09:04 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AC79A2A0B89;
 Tue, 28 Apr 2020 07:09:01 +0100 (BST)
Date: Tue, 28 Apr 2020 08:08:58 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 11/17] mtd: rawnand: cafe: Don't leave ECC enabled in
 the write path
Message-ID: <20200428080858.4914306f@collabora.com>
In-Reply-To: <20200427215132.1331d4f5@xps13>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-12-boris.brezillon@collabora.com>
 <20200427215132.1331d4f5@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_230903_088818_6C16BB9D 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>,
 David Woodhouse <dwmw2@infradead.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 21:51:32 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Mon, 27 Apr
> 2020 10:20:21 +0200:
> 
> > cafe_nand_write_page_lowlevel() sets the ECC auto-generation flag but  
> 
> IIRC you renamed this function in patch 1 so now it is named
> "_write_page()".
> 
> > never clears it, thus forcing the cafe_nand_cmdfunc() to clear it
> > in certain circumstances. Let's just clear this flag in
> > cafe_nand_write_page_lowlevel() instead.  
> 
> Same here              ^
> 

Right. That's what happens when you re-order commits without paying
attention to the commit message.


> > -	return nand_prog_page_end_op(chip);
> > +	ret = nand_prog_page_end_op(chip);
> > +
> > +	/*
> > +	 * And clear it before returning so that following write operations
> > +	 * that do not involve ECC don't generate ECC bytes.
> > +	 */
> > +	cafe->ctl2 &= ~CAFE_NAND_CTRL2_AUTO_WRITE_ECC;  
> 
> I like spaces before returning, but again it's really a nitpick, you
> can ignore that :)
>

Will add a blank line here as well.
 
> > +	return ret;
> >  }
> >  
> >  /* F_2[X]/(X**6+X+1)  */  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
