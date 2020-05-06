Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 978D01C7641
	for <lists+linux-mtd@lfdr.de>; Wed,  6 May 2020 18:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhUSYpsD6KFXA50seHLJoVfPAPQ1O2p3AcF2cKYU6r0=; b=HdaMzW01F8vdMM
	f6p/M8MX+lu6O6K3HvlL2TVE/bT8Uq225sCfxU/DfiEBarr1zcVBhNo69GtLRULVbxT05pOjEFgi8
	vbD0QO3rR7OEjCFlALJXyh/tgd4HkArsRXglPIVGAH5GhJlF0aAkyRIKeaH8YW5eUjp/5+ZxUw3YR
	iQh6N0BjMS7OaIE7mPM4NmTdlW0/UiQEg5/0GSmecp/z4b8Sdt/S0fJeLF9DBtt0KUDdyzuFCF57x
	HkufyExVC+1pcL4kcVXsIubTOpWyDXpbyhGWVdUs3exG8Ta0S9WtxVtkFjEMMKsyyH0euVYOnwHLT
	m+WkPXw6tw1+WZjExGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMvE-0005vr-VF; Wed, 06 May 2020 16:29:25 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMv5-0005ut-CC
 for linux-mtd@lists.infradead.org; Wed, 06 May 2020 16:29:16 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BBC312A24E9;
 Wed,  6 May 2020 17:29:13 +0100 (BST)
Date: Wed, 6 May 2020 18:29:10 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Bean Huo (beanhuo)" <beanhuo@micron.com>
Subject: Re: [EXT] [PATCH v2 3/3] mtd: rawnand: micron: Address the shallow
 erase issue
Message-ID: <20200506182910.6a9863bd@collabora.com>
In-Reply-To: <BN7PR08MB56843895500F4ADA88262C59DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200503114029.30257-1-miquel.raynal@bootlin.com>
 <20200503114029.30257-4-miquel.raynal@bootlin.com>
 <BN7PR08MB5684D285CAE2438B355DCE80DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
 <20200506104522.6c90f88f@collabora.com>
 <BN7PR08MB5684D8DFC50CB93B53705619DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
 <20200506180420.13996633@collabora.com>
 <BN7PR08MB56843895500F4ADA88262C59DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_092915_550334_A6E3C158 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Steve deRosier <derosier@gmail.com>,
 "Zoltan Szubbocsev \(zszubbocsev\)" <zszubbocsev@micron.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Piotr Wojtaszczyk <WojtaszczykP@cumminsallison.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 16:09:19 +0000
"Bean Huo (beanhuo)" <beanhuo@micron.com> wrote:

> Hi, Richard
> 
> > > > > > +	}  
> > > > >
> > > > >
> > > > > Here, if the power loss happens before erasing this block, for the
> > > > > next time boot up, What will happen from FS layer in case FS
> > > > > detect this filled  
> > > > data?
> > > >
> > > > Most likely ECC errors will be returned, but that doesn't matter
> > > > since this block was about to be erased. You have pretty much the
> > > > same problem for partially erase blocks already, and that should be
> > > > handled by the wear-leveling/FS, if not, that would be bug (note
> > > > that it's properly handled by UBI, which just considers the block as invalid and  
> > schedules an erase).  
> > > >  
> > >
> > > Concerning this, I still have question, for the UBIFS,  If I am
> > > correct, there are EC and VID header both being damaged, then UBIFS
> > > will re-erase it. I don't know if UBIFS can handle there is dirty/filling data in the  
> > some pages  and EC/VID valid.  
> > > Maybe Richard has fixed it.  
> > 
> > If the block is being erased that means there's another one mapped to the same
> > LEB, or the block is simply not needed anymore. In both cases, this old block
> > shouldn't be referenced. Again, if that happens, it's a bug.  
> 
> Would you please help us confirm this?  how does ubifs handle this situation? Also other FS? Eg, jffs2, yaffs
> 

And if you're really worried about that, forcibly writing all pages
starting from 0 should do the trick. But I don't think that's needed.
As I said, when you trigger an erase, you're not guaranteed the erase
will complete before a potential power-cut, meaning that part of your
data might still be valid, while others could be corrupted.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
