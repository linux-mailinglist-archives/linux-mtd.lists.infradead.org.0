Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03B0180E12
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 03:41:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJ//h/4341B2lnmFUxcR5CbAJJIxZAniDjlXd7MU0WI=; b=NPuiqlF94g4/WO
	blQBt17NWrkRiUycfY18aTQVYpFN5OawKtQMAN3rb7q8ePgbhciEMftzSQb3t74T/rqu0j3CLtYcD
	/H39yOrZrTegSWFGq1E0zUnffLUFn5y370Clj/g6dMHce8zfPPwSfg/PHenej+ZyTwgpN5aVF1VYX
	yHkdzEyg/I+4ycPrUslAILGepYksXKGQT/gykpn2i5KmqThxk3oYSPU+3N12xRx4FgCBCVk+yAXXd
	KfAwY/fhMbAvdr1RyJ30O0Fm57en5nA2zbLLhoDS7Y0t+tjW2ga2ljfQoNPdg7xLgWa0Sh31Gp/FT
	rRm8i17KPhgrzWza2YBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBrJD-0007CM-4j; Wed, 11 Mar 2020 02:41:23 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBrJ5-0007Bp-HR
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 02:41:17 +0000
Received: from twhfmlp1.macronix.com (twhfm1p1.macronix.com [172.17.20.91])
 by TWHMLLG3.macronix.com with ESMTP id 02B2e4K9076230;
 Wed, 11 Mar 2020 10:40:04 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.macronix.com [172.17.14.55])
 by Forcepoint Email with ESMTP id C5868B39AA6AF42ADD58;
 Wed, 11 Mar 2020 10:40:04 +0800 (CST)
In-Reply-To: <20200310202723.16b48f4b@collabora.com>
References: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>	<1583220084-10890-2-git-send-email-masonccyang@mxic.com.tw>
 <20200310202723.16b48f4b@collabora.com>
To: "Boris Brezillon" <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 1/4] mtd: rawnand: Add support manufacturer specific
 lock/unlock operation
MIME-Version: 1.0
X-KeepSent: CDE22522:001A7410-48258528:000E260F;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OFCDE22522.001A7410-ON48258528.000E260F-48258528.000EA7E7@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Wed, 11 Mar 2020 10:40:04 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2020/03/11 AM 10:40:04,
 Serialize complete at 2020/03/11 AM 10:40:04
X-MAIL: TWHMLLG3.macronix.com 02B2e4K9076230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_194115_858749_B6F3EB26 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.201 listed in list.dnswl.org]
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

> > Add nand_lock() & nand_unlock() for manufacturer specific lock & 
unlock
> > operation while the device supports Block Portection function.
> > 
> > Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> > Reported-by: kbuild test robot <lkp@intel.com>
> 
> Reported-by on something that's not a fix doesn't make sense. I know
> the 0day bot asked you to add this tag, but that should only be done if
> you submit a separate patch, ideally with a Fixes tag. If the offending
> patch has not been merged yet, you should just fix the commit and ignore
> the Reported-by tag (you can mention who reported the problem in the
> changelog though).
> 

okay, understand it.
Thanks a lot for your explanation.

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
