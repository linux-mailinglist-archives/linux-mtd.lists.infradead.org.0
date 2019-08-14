Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D758E154
	for <lists+linux-mtd@lfdr.de>; Thu, 15 Aug 2019 01:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nftolgEwdhaoJ9e0BASViDOmVb8S00rw3LfDovtFcx4=; b=LaR/vLaJi7npVD
	jkWSY7qxb3NRMawOoko8d68d/1TrQZe+TMiOlYpq9QabMCzntBTFnWzc21u1aTAiz/DQ2dNQ8EDkl
	TWd5ITk4qya395ekVbmWObVHRpnTn6W5/Uw8GwQPS4YoEhxHF8EGlNU54syI8fRA9vJVcfr3uOGAC
	QryxGqUdRmLKRoiG2YWOM5ZLjbEHDiCeOPlXmspi+iIQlnKJQyvBv50AH3HFtG3iLy6f4jJ+iEyb+
	4R9FGLV5zKi83uc7aw+Y7YVegBUdkdyv4BNOSds0v9tT7bdtgomba0BGOgRHwrNLnooXAxkn+Xitz
	sovWfRuX9RcC5ogOeqQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy2s2-0002s2-Ap; Wed, 14 Aug 2019 23:39:58 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy2rs-0002m0-Qd
 for linux-mtd@lists.infradead.org; Wed, 14 Aug 2019 23:39:49 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hy2rq-0001jN-5Z; Wed, 14 Aug 2019 23:39:46 +0000
Date: Thu, 15 Aug 2019 00:39:46 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 05/11] quota: Allow to pass quotactl a mountpoint
Message-ID: <20190814233946.GX1131@ZenIV.linux.org.uk>
References: <20190814121834.13983-1-s.hauer@pengutronix.de>
 <20190814121834.13983-6-s.hauer@pengutronix.de>
 <20190814233632.GW1131@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814233632.GW1131@ZenIV.linux.org.uk>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_163948_865061_7B9172C8 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-fsdevel@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 12:36:32AM +0100, Al Viro wrote:
> On Wed, Aug 14, 2019 at 02:18:28PM +0200, Sascha Hauer wrote:
> > +/**
> > + * reference_super - get a reference to a given superblock
> > + * @sb: superblock to get the reference from
> > + *
> > + * Takes a reference to a superblock. Can be used as when the superblock
> > + * is known and leaves it in a state as if get_super had been called.
> > + */
> > +void reference_super(struct super_block *sb)
> > +{
> > +	spin_lock(&sb_lock);
> > +	sb->s_count++;
> > +	spin_unlock(&sb_lock);
> > +
> > +	down_read(&sb->s_umount);
> > +}
> > +EXPORT_SYMBOL_GPL(reference_super);
> 
> NAK, for a plenty of reasons
> 
> 1) introduction of EXPORT_SYMBOL_GPL garbage
> 2) aforementioned garbage on something that doesn't need to be exported
> 3) *way* too easily abused - get_super() is, at least, not tempting to
> play with in random code.  This one is, and it's too low-level to
> allow.

... and this is a crap userland API.

*IF* you want mountpoint-based variants of quotactl() commands, by all means,
add those.  Do not overload the old ones.  And for path-based you don't
need to mess with superblock references - just keep the struct path until
the end.  That will keep the superblock alive and active just fine.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
