Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE78900F4
	for <lists+linux-mtd@lfdr.de>; Fri, 16 Aug 2019 13:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzjJ0ccUSKDoXU6g4aBAba00aKUR4SIMTMylAm37gno=; b=WA963v+1WHr2pw
	MfDGbFFzsGoQKqKpp5HHvCCFJfFk/dMroaTQcg0lTGrytKQZl5vzWQ32+IjMUbXRYHM9EoLz0YW0l
	XLfhUjORUTd4lwrX4TEDBZ7AOySudMKaHCL4KhB0j2pV64kBKWhmap/92uStnXISoPbdsQI6U11aL
	tCMcbSLwdajbk9+QoSzppxyy7FhXy9XSO3AV1XBvHkws0zUAf09OzGWXLwYHsNjWFl3HFOx+jNfIq
	n4wWPbmQItnoap1WHyzoSKLzKiYbt37kQUsdtHYWF58EqeltmCLX+1EWq9mkLZno2doiD0uC4gZXe
	uLneStlI/ZUwcn6Nu/xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyajg-0007ix-Oz; Fri, 16 Aug 2019 11:49:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyajX-0007aE-SG
 for linux-mtd@lists.infradead.org; Fri, 16 Aug 2019 11:49:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hyajV-0004L7-Bq; Fri, 16 Aug 2019 13:49:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hyajS-0006mP-Ol; Fri, 16 Aug 2019 13:49:22 +0200
Date: Fri, 16 Aug 2019 13:49:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jan Kara <jack@suse.cz>
Subject: Re: [PATCH 02/11] quota: Only module_put the format when existing
Message-ID: <20190816114922.jegjilnjb2wffhls@pengutronix.de>
References: <20190814121834.13983-1-s.hauer@pengutronix.de>
 <20190814121834.13983-3-s.hauer@pengutronix.de>
 <20190815111800.GD14313@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815111800.GD14313@quack2.suse.cz>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:45:07 up 39 days, 17:55, 62 users,  load average: 0.15, 0.10, 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_044927_917149_C235C837 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-fsdevel@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 01:18:00PM +0200, Jan Kara wrote:
> On Wed 14-08-19 14:18:25, Sascha Hauer wrote:
> > For filesystems which do not have a quota_format_type such as upcoming
> > UBIFS quota fmt may be NULL. Only put the format when it's non NULL.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> But you do have quota format in the end. So is this patch needed?

I have quota_format_ops, but as I do not store any quota data I do not
have a quota_format_type. Yes, this patch is needed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
