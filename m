Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739FB8E89E
	for <lists+linux-mtd@lfdr.de>; Thu, 15 Aug 2019 11:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OjN3yzmPdWK5PsixSKOJC09UoBq765ef49reYfnIX0=; b=ix+o/XWO0VktEa
	0L4aqS6VahGY7SUPycuVNjKFrH7rf/vi3xoJxqqcdWWFyDzA4U6WpDDhrkZk1iR9kirFWyOtHu7a6
	uMYKljsMfCNqSfkXFR1H+I7Uw7wOOX8FBNn1h+84hwwGDcl8Pmlohfe0PlZmwaNHzZ7GepComRTtf
	nYXM6w5lbGDwjOsrbAXgDINdOt7PwmAT5kUB/Xeo99z06J8I7dUAYA7PWQjtUGLxfL9/EeU0G3wbN
	XOrPIhMSttQldlfo7cBUYyXLhbya4u1f1J3IXsMHprZSrDEC/FvPTKacIl6EiKvgLH1f/AaclJJLT
	ED3sj9FT6pkNuk2Ngefg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyCRm-0000TP-B1; Thu, 15 Aug 2019 09:53:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyCRR-0000Sf-0o
 for linux-mtd@lists.infradead.org; Thu, 15 Aug 2019 09:53:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 54B36B63F;
 Thu, 15 Aug 2019 09:53:07 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id CBDEF1E4200; Thu, 15 Aug 2019 11:53:06 +0200 (CEST)
Date: Thu, 15 Aug 2019 11:53:06 +0200
From: Jan Kara <jack@suse.cz>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH 05/11] quota: Allow to pass quotactl a mountpoint
Message-ID: <20190815095306.GB14313@quack2.suse.cz>
References: <20190814121834.13983-1-s.hauer@pengutronix.de>
 <20190814121834.13983-6-s.hauer@pengutronix.de>
 <20190814233632.GW1131@ZenIV.linux.org.uk>
 <20190814233946.GX1131@ZenIV.linux.org.uk>
 <20190814235124.GY1131@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814235124.GY1131@ZenIV.linux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_025309_211911_154FFE78 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu 15-08-19 00:51:24, Al Viro wrote:
> On Thu, Aug 15, 2019 at 12:39:46AM +0100, Al Viro wrote:
> > > 1) introduction of EXPORT_SYMBOL_GPL garbage
> > > 2) aforementioned garbage on something that doesn't need to be exported
> > > 3) *way* too easily abused - get_super() is, at least, not tempting to
> > > play with in random code.  This one is, and it's too low-level to
> > > allow.
> > 
> > ... and this is a crap userland API.
> > 
> > *IF* you want mountpoint-based variants of quotactl() commands, by all means,
> > add those.  Do not overload the old ones.  And for path-based you don't
> > need to mess with superblock references - just keep the struct path until
> > the end.  That will keep the superblock alive and active just fine.
> 
> 	To clarify: I suggest something like #define Q_PATH     0x400000
> with users passing something like QCMD(Q_QUOTAON | Q_PATH, ...) instead
> of QCMD(Q_QUOTAON, ...) to get a path-based behaviour.

Yeah, this sounds like a good plan to me. If Sasha plans on using userspace
quota-tools for handling ubifs, some work will be needed there as well but
it's doable.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
