Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ECF7BADF
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 09:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vz0cVYv1MTuuRotSdVu5bomhfpXinDKyDOlEtoQxTo=; b=RyjCI69yVDTtGY
	0E4JRPslGncEoaetpzGqPEiAkLfNrAykr2f3MaouE+GwDShFQ1oJ6yap+Wa52vB2p+EBjfimDqMxu
	nu2JDS1t4fDOCCENtFwrAY0dBeZopMuylFO2M6Li/1Jz45N+ql1jeryeHirXyZoncNfzJn6smc54k
	dh7OZwuSZTcNG9PVtDtNDJn5H/xw0CV5QZ43qanrIRSEifiow+2iKdcKkbTjMmNzwHR/I8jJ6hNNB
	xVIz40PRtugGbFop3PP8qZwXBkgvsNYROJ+Kn/EGeBNo/oWJjh8B+LLP9hOANLf2xAwEaJM8ftARv
	zXHMN7Ry7EfO+9OTI0gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjHr-0007Oj-JT; Wed, 31 Jul 2019 07:44:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjG4-0007MD-JP
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 07:43:12 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsjG1-0002Gz-ON; Wed, 31 Jul 2019 09:42:45 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsjG0-0007Dd-Uf; Wed, 31 Jul 2019 09:42:44 +0200
Date: Wed, 31 Jul 2019 09:42:44 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] ubifs: Correctly initialize c->min_log_bytes
Message-ID: <20190731074244.2msdjvuokoci2lxx@pengutronix.de>
References: <20190725205627.31313-1-richard@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725205627.31313-1-richard@nod.at>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_004256_799881_A47C7A9F 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello Richard,

On Thu, Jul 25, 2019 at 10:56:27PM +0200, Richard Weinberger wrote:
> Currently on a freshly mounted UBIFS, c->min_log_bytes is 0.
> This can lead to a log overrun and make commits fail.
> =

> Recent kernels will report the following assert:
> UBIFS assert failed: c->lhead_lnum !=3D c->ltail_lnum, in fs/ubifs/log.c:=
412
> =

> c->min_log_bytes can have two states, 0 and c->leb_size.
> It controls how much bytes of the log area are reserved for non-bud
> nodes such as commit nodes.
> =

> After a commit it has to be set to c->leb_size such that we have always
> enought space for a commit. While a commit runs it can be 0 to make the
> remaining bytes of the log available to writers.
> =

> Having it set to 0 right after mount is wrong since no space for commits
> is reserved.
> =

> Reported-and-tested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.d=
e>
> Signed-off-by: Richard Weinberger <richard@nod.at>

I assume you care for applying this to mainline? I wonder it isn't in
next yet?!

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
