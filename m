Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD50A15AFBE
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Feb 2020 19:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lcj+Fp1zRWeXQ50AQ8Anm687h7e/aajcxXTowcpM6Lg=; b=LK9bXrBRTXiRLJ
	pjAJUec9+K5oczMp4qjccIljBaDUstLI9zzB6uKad5w27O042uURsLTSqnLL2xiRVkKM3kj+fuYdU
	XFGpXGs7k9HXOGT2RWqWl7F6TbhGFcDoVjh7FP6qF0XmnEo5pQe+WMTdW3P1V4hntxCDFAC4ev3xy
	uYHY2Rfir3gX5lRMhAf6TGpcA0LE3TutYb23fFx2HEfMhPq5l0Burqapg0rkpVy88xEuDKFNzLMLf
	yzlUtvX/KrojAFKpuNm4UhZlsWE9e/at29T0zGcaKgbuqA5VQA87BrI9RGlaK5yD3CBVrUuE3SQhc
	A6CQMbMl5j6CcAWwT0IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wkT-0000cW-Sr; Wed, 12 Feb 2020 18:28:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wkB-0000Uz-J1; Wed, 12 Feb 2020 18:28:16 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 566EB80F6;
 Wed, 12 Feb 2020 18:28:53 +0000 (UTC)
Date: Wed, 12 Feb 2020 10:28:06 -0800
From: Tony Lindgren <tony@atomide.com>
To: Janusz Krzysztofik <jmkrzyszt@gmail.com>
Subject: Re: [RFC PATCH 06/14] mtd: rawnand: ams-delta: Push inversion
 handling to gpiolib
Message-ID: <20200212182806.GL64767@atomide.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
 <20200212003929.6682-7-jmkrzyszt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212003929.6682-7-jmkrzyszt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_102815_668964_E2EAA1F1 
X-CRM114-Status: UNSURE (   5.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

* Janusz Krzysztofik <jmkrzyszt@gmail.com> [200212 00:41]:
> Let platforms take care of declaring correct GPIO pin polarity so we
> can just ask a GPIO line to be asserted or deasserted and gpiolib deals
> with the rest depending on how the platform is configured.
> 
> Inspired by similar changes to regulator drivers by Linus Walleij
> <linus.walleij@linaro.org>, thanks!

Acked-by: Tony Lindgren <tony@atomide.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
