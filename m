Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE909B8ED1
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 13:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-reply-to:
	MIME-Version:Subject:From:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+3CSToGMLV9zXdqrW8QoohQSsLWmRyzxEL+kDjEL0A=; b=fSSe1ttdTlk/Y7
	f59uQy1QLZMBaTCch7jiR3BonilN/JZZlGlLs0JtXzbAdWdAwsMThO9d/WgQ1ZYNx6OJHPm63twvx
	1ms6HCWqbbdIjKNo+rsD8vxJhGJXrAbE74Lh2RFY21qlSbQ4xXtHaHKcIrsR/EDjnZRARoYIkgDR5
	ONIV5zx6Nh51pguyDg/4dD8ueryzHWuljM1BAaMxqXmG534TswjLxjTx7W69+gjLjUnnhe8AnVmEo
	nYLWG6PVglZqjUHLdl2oC2NKI/J/PRsucjw2M89HtiIQyStx/eIRY0ZlpoqrcfBSjcLP/TWKd/Rcg
	AfpeyC8cddj19m0rB3fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBGo0-0003tw-Hx; Fri, 20 Sep 2019 11:10:28 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBGns-0003tY-IH
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 11:10:22 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46ZWGH4qmJz1rGSc
 for <linux-mtd@lists.infradead.org>; Fri, 20 Sep 2019 13:10:15 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46ZWGH4hqkz1qqkC
 for <linux-mtd@lists.infradead.org>; Fri, 20 Sep 2019 13:10:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id ubhST_lkf04v for <linux-mtd@lists.infradead.org>;
 Fri, 20 Sep 2019 13:10:14 +0200 (CEST)
X-Auth-Info: iHqWdi80n8Le8SEsNf5SxuVB+7lXzWPYZT9f7jsX58U=
Received: from janitor.denx.de (unknown [62.91.23.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA
 for <linux-mtd@lists.infradead.org>; Fri, 20 Sep 2019 13:10:14 +0200 (CEST)
Received: by janitor.denx.de (Postfix, from userid 119)
 id F0FCEA2C21; Fri, 20 Sep 2019 13:10:13 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.4.0.2])
 by janitor.denx.de (Postfix) with ESMTPS id E53F8A2B83;
 Fri, 20 Sep 2019 13:10:10 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
 by gemini.denx.de (Postfix) with ESMTP id AF800240014;
 Fri, 20 Sep 2019 13:10:10 +0200 (CEST)
To: JH <jupiter.hce@gmail.com>
From: Wolfgang Denk <wd@denx.de>
Subject: Re: Missing all ubi commands in mtd-utils
MIME-Version: 1.0
In-reply-to: <CAA=hcWRK-ChXxovKqSLpDF+JO7DtjginYXY33O-xtEAq25MiuQ@mail.gmail.com>
References: <CAA=hcWRK-ChXxovKqSLpDF+JO7DtjginYXY33O-xtEAq25MiuQ@mail.gmail.com>
Comments: In-reply-to JH <jupiter.hce@gmail.com>
 message dated "Fri, 20 Sep 2019 19:52:42 +1000."
Date: Fri, 20 Sep 2019 13:10:10 +0200
Message-Id: <20190920111010.AF800240014@gemini.denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_041020_752500_3F92BBD0 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Dear Jupiter,

In message <CAA=hcWRK-ChXxovKqSLpDF+JO7DtjginYXY33O-xtEAq25MiuQ@mail.gmail.com> you wrote:
>
> I installed mtd-utils from Yocto, the document

So this is a Yocto question, not a MTD one. You should have asked on
the Yocto mailing list instead.

> http://www.linux-mtd.infradead.org/doc/ubi.html#L_usptools says that
> mtd-utils includes all ubi commands, but I cannot find any of them,
> what I am missing here?

Probably "ubifs" is not set in your DISTRO_FEATURES ?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
You get a wonderful view from the point of no return.
                                    - Terry Pratchett, _Making_Money_

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
