Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432DA136185
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 21:06:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WpwTjxTxa5FTqyGJ1xJUNbvP/XYeKEbDAA3K0gZeRuw=; b=MeoZbbGF/ObBBF
	M6L06ElpeQ/yqT91nTbR2bGyNBPwquW+jE1Ua2HWZAKHbHvNXLkNN3pHixQ+O4mLXJ8gmDpd4GyZw
	SFi9doQseLAW4mXM9XQxXVAk6N1YD/GW7L0cnUhSZccLQJt9p5IT/x42zcTnns33h7ck+VL7n2HDO
	618uqYJTsdmI33rfrkwv06fmk+iuff26eJCytrwPw/t/GnYgsLGUTIRnjRj/DP4UP56UQYBrsrl8b
	PgchGNT1Recl0786XzeJ8nDarxklbtMhDHMplz6Z6gvL5NHqrhjiBK85O0+awutBq6suKHmghDA6e
	hS6iA6DlBcA1zpScwQQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipe4X-0007x2-PE; Thu, 09 Jan 2020 20:06:25 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipe4L-0007wK-5l
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 20:06:15 +0000
Received: from localhost (87-49-44-45-mobile.dk.customer.tdc.net [87.49.44.45])
 by first.geanix.com (Postfix) with ESMTPSA id 6CE09C1D;
 Thu,  9 Jan 2020 20:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1578600340; bh=JaB1eLjsLFXS4Bw5ZnorAPh6OPd6x2/+HvHsJ3LP8ns=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To;
 b=YNmnQe3lcH+JzGJMTUYH/MXNRwySzrgLolkxKVpcq8x/MY7R/RSyviDuRFR6/b6aP
 0wdRck4AJC9tD8jp8VlyJFfcVVRTmmIYOjzxP1ZkZx6BF5fUD7W1ytMV5PGG1ZrRlG
 ijbvXPpATkUErqldO9L8Cd9fpNdRyqfOtKrxHnUlQ6qaFAj/U7ZJs5mdr8Y4UJ45eO
 4Z9n2sDeam9yBqQCyjbF5xD0RG+7l3vd5sQwbMJDaAi1h7xZ87ox8fCffhmA4KYNv7
 MZkM5/D4SfT83+RefCzQJ4kinpG1et3M0O+BSHnsJ/XEUxm3hCQ7x4RsSaqJZc3B0K
 cpFKgSTeowEgQ==
From: Esben Haabendal <esben@geanix.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: rawnand: gpmi: fix the suspend/resume issue
References: <1578589556-683-1-git-send-email-han.xu@nxp.com>
 <20200109200127.0ace18cb@xps13>
Date: Thu, 09 Jan 2020 21:06:07 +0100
In-Reply-To: <20200109200127.0ace18cb@xps13> (Miquel Raynal's message of "Thu, 
 9 Jan 2020 20:01:27 +0100")
Message-ID: <87v9pkmm34.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=4.0 tests=BAYES_00,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on ea2d15de10a4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_120614_082254_42351E2D 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vigneshr@ti.com, richard@nod.at, s.hauer@pengutronix.de, sean@geanix.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 martin@geanix.com, Han Xu <han.xu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Miquel Raynal <miquel.raynal@bootlin.com> writes:

> Hi Esben, Han,
>
> Han Xu <han.xu@nxp.com> wrote on Fri, 10 Jan 2020 01:05:56 +0800:
>
>> fix several issues when system suspend/resume,
>> 
>> - leverage the runtime pm for system suspend/resume
>> - enable the clock before register access
>> - re-apply timing settings
>> - set the proper pinctrl state
>
> Esben are you fine with this patch?

It sounds like something that should probably be 4 separate patches.

> Or maybe Han you could take over Esben's patch and extend it?

I don't see why my two patches, which covers point 1 and 3 in the list
of issues covered by Han's patch, should not be merged.

Han, would you mind re-spin your patch to two separate patches covering
the remaining issues

 - enable the clock before register access
 - set the proper pinctrl state

/Esben

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
