Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F375160E62
	for <lists+linux-mtd@lfdr.de>; Mon, 17 Feb 2020 10:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2DuKKS4e5+yc8p/W78XzSK8OxRBcKuHQfEpJlLFo70=; b=jZfQFi5b5UWgTt
	IDEUvrOhJIK58J4kwnoS7DvEqA2ETO3eLmZYLIknQoFMrokh9UXCuZbT+p1IIRtWAvkKVgrm2iPGm
	VffGRwLclHDRxrEVTFCLgYiDqYQ+Hw8slm77Z76Wf7oPKnWOPjcVk+hPPYvxroPBZkYFFHmg1642n
	rKE/G4Z/VQr79M4iVICg0Gn89vXxi2Gvhvb6l1gVEW9C8SlBD1xoUH4HJ3Rk+k7+0ZWw2MHnXF98z
	zjjZaf7KXxllop7YQfrwn9FNO+uHvCFyCIAJY6k9d0CePExgrIvE5CZghhA/5LJeqoJShyXaRnRKG
	bNYpVtR93J9iBQQMvngg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cc2-0003rr-Eu; Mon, 17 Feb 2020 09:22:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cbu-0003qb-58
 for linux-mtd@lists.infradead.org; Mon, 17 Feb 2020 09:22:39 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0897F28BDB9;
 Mon, 17 Feb 2020 09:22:34 +0000 (GMT)
Date: Mon, 17 Feb 2020 10:22:30 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 1/4] mtd: rawnand: Add support manufacturer specific
 lock/unlock operatoin
Message-ID: <20200217102230.5dfd36e3@collabora.com>
In-Reply-To: <20200217100124.6ff71191@xps13>
References: <1572256527-5074-1-git-send-email-masonccyang@mxic.com.tw>
 <1572256527-5074-2-git-send-email-masonccyang@mxic.com.tw>
 <20200109203055.2370a358@collabora.com>
 <OF505D0437.0130F15A-ON48258511.002C7F75-48258511.002D4341@mxic.com.tw>
 <20200217100124.6ff71191@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_012238_329005_B8791E6C 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: masonccyang@mxic.com.tw, vigneshr@ti.com, bbrezillon@kernel.org,
 juliensu@mxic.com.tw, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 10:01:24 +0100
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Mason,
> 
> masonccyang@mxic.com.tw wrote on Mon, 17 Feb 2020 16:14:23 +0800:
> 
> > Hi Boris,
> >   
> > >     
> > > >  /* Set default functions */
> > > >  static void nand_set_defaults(struct nand_chip *chip)
> > > >  {
> > > > @@ -5782,8 +5810,8 @@ static int nand_scan_tail(struct nand_chip     
> > *chip)  
> > > >     mtd->_read_oob = nand_read_oob;
> > > >     mtd->_write_oob = nand_write_oob;
> > > >     mtd->_sync = nand_sync;
> > > > -   mtd->_lock = NULL;
> > > > -   mtd->_unlock = NULL;
> > > > +   mtd->_lock = nand_lock;
> > > > +   mtd->_unlock = nand_unlock;
> > > >     mtd->_suspend = nand_suspend;
> > > >     mtd->_resume = nand_resume;
> > > >     mtd->_reboot = nand_shutdown;
> > > > diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> > > > index 4ab9bcc..2430ecd 100644
> > > > --- a/include/linux/mtd/rawnand.h
> > > > +++ b/include/linux/mtd/rawnand.h
> > > > @@ -1136,6 +1136,9 @@ struct nand_chip {
> > > >        const struct nand_manufacturer *desc;
> > > >        void *priv;
> > > >     } manufacturer;
> > > > +
> > > > +   int (*_lock)(struct nand_chip *chip, loff_t ofs, uint64_t len);
> > > > +   int (*_unlock)(struct nand_chip *chip, loff_t ofs, uint64_t len);    
> > > 
> > > Please drop this _ prefix.    
> > 
> > Drop _ prefix of _lock will get compile error due to there is already 
> > defined "struct mutex lock" in struct nand_chip.  
> 
> Right!

Or maybe move all hooks to a sub-struct (struct nand_chip_ops ops). I
had planned to do that in my nand_chip_legacy refactor but never did, so
maybe now is a good time.

> 
> > 
> > What about keep this _ prefix or patch it to blocklock/blockunlock,
> > i.e.,
> > int (*blocklock)(struct nand_chip *chip, loff_t ofs, uint64_t len);
> > int (*blockunlock)(struct nand_chip *chip, loff_t ofs, uint64_t len);  
> 
> What about lock_area() unlock_area() ? Seems more accurate to me, tell
> me if I'm wrong.

Yep, definitely better.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
