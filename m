Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63872142C4
	for <lists+linux-mtd@lfdr.de>; Mon,  6 May 2019 00:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIYB6u8t1RwT2yx1OKv9HP2B+Sa2r2RwOQWq/Za71Wk=; b=d5D1fZ4Gu9WSPO
	cgNdQE8hF8WxD/vBTvn87r3l09g8KbpByU60nnqDKWTgPDM9BCKdyhBpFU5CdHn9x+bQNjP+pc2C7
	XfamsL8QAvbjtU72xIrMzsXVpSNLMP7f3dKly+7lTccr/qdB+LO7As9HCgiTlK5UOcoOTRxeQrniE
	nfvYX6vp+6mkk3ladu7fv4kOV4EgYZNtS8EYclqSssZHQeTXukAXTRk0beq+LQmS+3fblttwg3j9B
	2jju5zc3MImkf27aAZkFxxtNAWVJy2l+WM2gCWHskS6QlOCPb99RmLaMGyq3e/EdN5dh4V7DO7FXI
	9H1Ol0h0w0lbidncZezQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNPXB-0008SF-7K; Sun, 05 May 2019 22:23:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNPX4-0008Re-5d
 for linux-mtd@lists.infradead.org; Sun, 05 May 2019 22:22:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id m20so4126807wmg.1
 for <linux-mtd@lists.infradead.org>; Sun, 05 May 2019 15:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIK78OWFN5F6a67Z+IPuq48OTFugFvrSuOrzdZXkG28=;
 b=HTEliK+/5ymhrv3FYMarahOPO0wVvwzQdr3xKV8xTmsbdCkp0gmhUFjXGgH0islpWq
 CpH/NsD0YN/9saqDRI7JCO6PltPXhCb83HNydVXq15W3zox+bTQgOgsS5UheimM5aKmt
 xLong0f22CXftSvfP4dkAyK8AdH3yyKq2hrK1Ja9FB7/Zrx2dipvrF0ALv47uRMmyXAY
 n14tTo+DHMA+Z1cpOVOYrMkJcS5iaArn5s3gwmUTUcImgm9uMgxfDbIqHo13gzba/JeW
 twgN9Z+26MQcs7JQ8vN1RzQSa+LWL2vmAZUPzt0zymz+L5V+sZoQ5sFe45g37HX3yAEp
 jtGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIK78OWFN5F6a67Z+IPuq48OTFugFvrSuOrzdZXkG28=;
 b=cBcfW0BJOlf/vEe810x5Ic/bldnpn9BW5C4jXLhyn7op6tF3lnr+LRG36JnGcdLMn4
 8s3gSMZ0nqo61vBwRz9tBfLtOYvvE01JEpkpRzIz22Ttxf7GVOAOqFH1lELXnKROol7T
 ysl86qIJGvIm3ZHCE9O6mbnsM0Lx0cHy1l1e1n4hwCT/MkZ8/6F0QWzOfll2PC4eJlpR
 apYtdFvCOXM6Lw8pDkTIZTI39DpPVfm4xJzh3wJo7lqr1aTSW5dvsV3sM9Ug6I0Hpitj
 flXMDvZpj4dtHlqaoTJ/2rJ6pdYczHPqLimOkBDfZJuzHpqN5PDUHaaPhQN34yfxESPX
 x34w==
X-Gm-Message-State: APjAAAWtqpSQab6F7krPlIaAbycXH7BXxDoO3XBx19BI4M7c1Ls7RjFR
 c9HS6R0rXLlZmz3mtqsOQXiKEzMRkBQ+zmP7Dbs=
X-Google-Smtp-Source: APXvYqzX40T19I3OwfZB7lqeGAMjjG0LGmQKnTSerrj6EtRBKN3D9QbVAA2GpSLolQ1NeuZXHgfYZeX0sOk/i0TeLfc=
X-Received: by 2002:a7b:cd18:: with SMTP id f24mr13876894wmj.19.1557094969274; 
 Sun, 05 May 2019 15:22:49 -0700 (PDT)
MIME-Version: 1.0
References: <1556914418-40288-1-git-send-email-clayton.shotwell@rockwellcollins.com>
 <1556914418-40288-2-git-send-email-clayton.shotwell@rockwellcollins.com>
In-Reply-To: <1556914418-40288-2-git-send-email-clayton.shotwell@rockwellcollins.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 6 May 2019 00:22:38 +0200
Message-ID: <CAFLxGvxgQb1iCTdHbFWz6VmMU1mjnGOadkHtLvA68Jaa0BS=bg@mail.gmail.com>
Subject: Re: [PATCH 2/2] jffs2: Add sync to underlying mtd device when file
 system is synced
To: Clayton Shotwell <clayton.shotwell@rockwellcollins.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_152254_241525_76F1C271 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: bbrezillon@kernel.org, Richard Weinberger <richard@nod.at>,
 Brandon Maier <brandon.maier@rockwellcollins.com>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 10:14 PM Clayton Shotwell
<clayton.shotwell@rockwellcollins.com> wrote:
>
> Need to ensure the underlying flash does not cache anything even though
> the file system thinks it's synced back.
>
> Signed-off-by: Clayton Shotwell <clayton.shotwell@rockwellcollins.com>
> ---
>  fs/jffs2/super.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
> index 05d892c..4341565 100644
> --- a/fs/jffs2/super.c
> +++ b/fs/jffs2/super.c
> @@ -111,6 +111,7 @@ static int jffs2_sync_fs(struct super_block *sb, int wait)
>         mutex_lock(&c->alloc_sem);
>         jffs2_flush_wbuf_pad(c);
>         mutex_unlock(&c->alloc_sem);
> +       mtd_sync(c->mtd);

This needs a more detailed explanation.
mtd_sync() is not cheap, so you make syncfs() more expensive.

Please explain what failure you are facing without mtd_sync().
jffs2 is supposed to recover from a power failure at any time, just like ubifs.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
