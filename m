Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0072718107E
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 07:15:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQIil7TiJnzOIgbQPYD4Z4uUytrpp4uL/VJaTthjIns=; b=R6XNE9BRkVDLj1
	U2HUWx2lcGd0QnOlh6dnddOfncAGQoTX0UUcQ2UQcUFvEd//4IK+2NAdKMvRXIFF0QIiOZtPvUTEk
	zpTlJfnCHOvccXwO6WdHGKKtFGPRTGy1MLuwqBdE8gtiPTXchnFRo2ajpsWgA0hKAY3BCLJ5jX+kr
	QUpJYFpLjEMGIo3by6gwu3iOtF4APVKnHLdoH1k13sLK/UdTy5S2w11VSzev56Jkl9wfSzAzVjTdm
	o2G8L6ogFJ+vlvTjOGU+WNjMAvwDj0F9I9PcBUzz1Iz3GvjoEJgDgEgTmtbr9VVcSs4dvIk++30UB
	Slw2z1thiQI84hP6noUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBudl-0006eD-Q7; Wed, 11 Mar 2020 06:14:49 +0000
Received: from twhmllg3.macronix.com ([211.75.127.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBudc-0006dA-Cb
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 06:14:43 +0000
Received: from twhfmlp1.macronix.com (twhfm1p1.macronix.com [172.17.20.91])
 by TWHMLLG3.macronix.com with ESMTP id 02B6DuBs031825;
 Wed, 11 Mar 2020 14:13:56 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.macronix.com [172.17.14.55])
 by Forcepoint Email with ESMTP id 2D98922659A6E991C6EA;
 Wed, 11 Mar 2020 14:13:57 +0800 (CST)
In-Reply-To: <20200310204142.540fc7c4@collabora.com>
References: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>	<1583220084-10890-4-git-send-email-masonccyang@mxic.com.tw>
 <20200310203930.2b8c0cfb@collabora.com>
 <20200310204142.540fc7c4@collabora.com>
To: "Boris Brezillon" <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 3/4] mtd: rawnand: Add support manufacturer specific
 suspend/resume operation
MIME-Version: 1.0
X-KeepSent: 4AD2D1A1:2B35FBFA-48258528:0021AD65;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OF4AD2D1A1.2B35FBFA-ON48258528.0021AD65-48258528.00223C9B@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Wed, 11 Mar 2020 14:13:57 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2020/03/11 PM 02:13:57,
 Serialize complete at 2020/03/11 PM 02:13:57
X-MAIL: TWHMLLG3.macronix.com 02B6DuBs031825
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_231442_274415_FB8D30DD 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.131 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 richard@nod.at, s.hauer@pengutronix.de, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de, rfontana@redhat.com,
 linux-mtd@lists.infradead.org, stefan@agner.ch, miquel.raynal@bootlin.com,
 tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Boris,

> > > ---
> > >  drivers/mtd/nand/raw/nand_base.c | 11 ++++++++---
> > >  include/linux/mtd/rawnand.h      |  4 ++++
> > >  2 files changed, 12 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/mtd/nand/raw/nand_base.c 
b/drivers/mtd/nand/raw/nand_base.c
> > > index 769be81..b44e460 100644
> > > --- a/drivers/mtd/nand/raw/nand_base.c
> > > +++ b/drivers/mtd/nand/raw/nand_base.c
> > > @@ -4327,7 +4327,9 @@ static int nand_suspend(struct mtd_info *mtd)
> > >     struct nand_chip *chip = mtd_to_nand(mtd);
> > > 
> > >     mutex_lock(&chip->lock);
> > > -   chip->suspended = 1;
> > > +   if (chip->_suspend)
> > > +      if (!chip->_suspend(chip))
> > > +         chip->suspended = 1;
> 
> Shouldn't you propagate the error to the caller if chip->_suspend()
> fails?

Currently, chip->suspend() just do sending command to nand chip and
I think caller could check chip->suspend = 1 or 0 to know the status
of nand chip.

thanks & best regards,
Mason

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information 
and/or personal data, which is protected by applicable laws. Please be 
reminded that duplication, disclosure, distribution, or use of this e-mail 
(and/or its attachments) or any part thereof is prohibited. If you receive 
this e-mail in error, please notify us immediately and delete this mail as 
well as its attachment(s) from your system. In addition, please be 
informed that collection, processing, and/or use of personal data is 
prohibited unless expressly permitted by personal data protection laws. 
Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=====================================================================



============================================================================

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information and/or personal data, which is protected by applicable laws. Please be reminded that duplication, disclosure, distribution, or use of this e-mail (and/or its attachments) or any part thereof is prohibited. If you receive this e-mail in error, please notify us immediately and delete this mail as well as its attachment(s) from your system. In addition, please be informed that collection, processing, and/or use of personal data is prohibited unless expressly permitted by personal data protection laws. Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=====================================================================


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
