Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F351AE4E7
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Apr 2020 20:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IKRm1LlxOMH+4AdZ6t66SuhCox6UxwIq/Pa5cYazYxg=; b=S7saG5qse2yXle
	xSZlvXRgvfnTMUbv36hay3oK2jrmNe14lVwg40mk0kDFpdAtRfiRuTcspStbhmE0pOfussq8QJ5F8
	08rUUuJZTzUjdF4vmYt07mfF+bLGPgdL75ocIQ49aUUJnhS+ZDH5dGgRa3mHkPzO9HrgwbgUNJnfn
	KkxMvoqh5oGaa1CebKiy9SG4hK6yQCoZA3LenuuMJ68RgX2cqdnIXR3/EY1wosB3YA3x5eXLOkABj
	Y+iHEtdaNd6bMssVYsRK9xvsBLtoGt3sWQCYxT//EaFURB7Ul3z4qEnBzJd8LFeN4cKhTGgm2w2Ul
	hZmvDhhEBdJX9JWILP2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVvP-0006bd-Vs; Fri, 17 Apr 2020 18:41:15 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVvE-0006ag-Uz
 for linux-mtd@lists.infradead.org; Fri, 17 Apr 2020 18:41:06 +0000
Received: by mail-il1-x142.google.com with SMTP id e4so3125769ils.4
 for <linux-mtd@lists.infradead.org>; Fri, 17 Apr 2020 11:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FBnUrRDDNk8XJ276R8ygyYCspd54z2pKqY+O6PbDooc=;
 b=roFQ9PgmfN3Ru6ytOF6mOiDLxD4KhVctBp6Ruuzzz85yUWf+U21WvMNLXR3AFvFTbj
 w5EhEnYlaNCo8KqDIjZIIl8xNrAGmtmfm9IpVWsBOhPGVu3vdZ5wVIZjADzspefkJM/u
 TOljNMvaQTNg6JRPgeMukoDmPbCNOf3/NSDq02YAY/B1gzTuOe0Rrysek5UJg70L3aSH
 Pevme0Q0hdXtE9nfEwiG9e3ZC2ozXl3hORncd40esHZotLPiLKaH2JfVIuo4Gc19d16z
 bIG+KH9UPPOLWNQsbbleXn/6UTLmooZE82sLntCdfWyQ1qGrzbDw7NW3qRi4BBjzv+mI
 skPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FBnUrRDDNk8XJ276R8ygyYCspd54z2pKqY+O6PbDooc=;
 b=lSVcJumA4ooM1d7gqPvAnsVBVjqXwiPMYgx4Dkgv2o7Tsb/24wOxDobsrPoFdN8L2t
 XGihUPNxBBOPfPSIT+HPmiTOQaqk9amZOWQruotMstuMQmqsTS7LVqqOKUlqtQayj9dp
 hkCmIutmIw1VlPK183qsZbSNjA7hMKFdvseeSAQRcH70LpDmDmWMjXD6N79PGbbMMbSg
 xOQlqJaUB61cZ9TimPGTTYrPlpRAoBbuLV2ss7qmP06/Ivp7V4MHuc3/M80JwsJ4pj/h
 n8t7URmRDlfRMXLyUKYsxyPu8RMJqCyruKXD/pc+I2s7oqayWbzxCcBxayAqEh1v/auL
 aVjw==
X-Gm-Message-State: AGi0PuZfIGaLHly26dJKj74CiyMagpndyfHeks/WJGfv5FIrIOMejVha
 NyhRCKTwzqOkZMUIb5dP/zJwQeD/gYB05Nk7nFE=
X-Google-Smtp-Source: APiQypJvUJ9zH0W0ghHCenb+ebbNN41AW0ItOJQ82go2K6IrD/bPDDCAGb1LHExIuoyq9J4nCkKqK0AwnulnQHwCh4M=
X-Received: by 2002:a92:3b88:: with SMTP id n8mr2126604ilh.248.1587148863175; 
 Fri, 17 Apr 2020 11:41:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200417101129.35556-1-yuehaibing@huawei.com>
In-Reply-To: <20200417101129.35556-1-yuehaibing@huawei.com>
From: Kamal Dasu <kdasu.kdev@gmail.com>
Date: Fri, 17 Apr 2020 14:40:51 -0400
Message-ID: <CAC=U0a2VfQBmHdS4eL0Fbm==aVCS0FWoBnZi7tRHzNKmm=SDVQ@mail.gmail.com>
Subject: Re: [PATCH -next] mtd: rawnand: brcmnand: Remove unused including
 <linux/version.h>
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_114105_023721_32777BBE 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "R, Vignesh" <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 6:12 AM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Remove including <linux/version.h> that don't need it.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>

> ---
>  drivers/mtd/nand/raw/brcmnand/brcmnand.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> index e4e3ceeac38f..57076c3d98dc 100644
> --- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> +++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> @@ -4,7 +4,6 @@
>   */
>
>  #include <linux/clk.h>
> -#include <linux/version.h>
>  #include <linux/module.h>
>  #include <linux/init.h>
>  #include <linux/delay.h>
> --
> 2.17.1
>
>
--

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
