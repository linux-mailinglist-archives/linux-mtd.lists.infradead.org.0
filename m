Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FBB1C337C
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 09:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77PoD/17+3q52JEIuYvqYo1ow+yqJt0bXiy7AhV4hgo=; b=FErIsoF8WKRcOY
	TA1sk+/db7hBqQLkIym9m17pkff4NhwcBusyVCvG2HBwDCm6VUzL+1A5RpD59M0XgFQfEGkyVy7Oe
	PYgSKWQU7Dut1J8jyFge3HuGJv1uI1nHSfOVK3eSv5D8eipVXwj76u3WQVf1uauuuSVhrEOH+DnV+
	afIMVXdlehTH3kXNPXBUA1dXA8mAy6S+Et1yOAUh0zZGL2kjlz7l7CEE8uIbN9aWdVAfiJOSqTY8Z
	Lmi3duSfIUDOIh6qyf9/9HiawLZU8uWHra5+ywpjy3izk97k8QANTgWX3vxw9BCv7qEnP+7sUNe+j
	rwq3fQ1swKPLEO30h91A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVVLS-0006P8-EO; Mon, 04 May 2020 07:16:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVLL-0006Ol-UH
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 07:16:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jVVLI-00028Z-SR; Mon, 04 May 2020 09:16:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jVVLI-0001Mp-3y; Mon, 04 May 2020 09:16:44 +0200
Date: Mon, 4 May 2020 09:16:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH] ubifs: fix wrong use of crypto_shash_descsize()
Message-ID: <20200504071644.GS5877@pengutronix.de>
References: <20200502055945.1008194-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502055945.1008194-1-ebiggers@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:12:17 up 74 days, 14:42, 102 users,  load average: 0.08, 0.30,
 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_001647_974689_A3C075B7 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 10:59:45PM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> crypto_shash_descsize() returns the size of the shash_desc context
> needed to compute the hash, not the size of the hash itself.
> 
> crypto_shash_digestsize() would be correct, or alternatively using
> c->hash_len and c->hmac_desc_len which already store the correct values.
> But actually it's simpler to just use stack arrays, so do that instead.
> 
> Fixes: 49525e5eecca ("ubifs: Add helper functions for authentication support")
> Fixes: da8ef65f9573 ("ubifs: Authenticate replayed journal")
> Cc: <stable@vger.kernel.org> # v4.20+
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Looks better that way, thanks.

Acked-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
