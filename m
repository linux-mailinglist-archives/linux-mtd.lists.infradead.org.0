Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16971ECA15
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 09:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TCy4+d5NRxuuWW8ab991/LHQg0vyFP9fqY2BUEKT/I=; b=RPQMdERUvaZ9hf
	X5wefwRECdvt4tSo7FNZOg8vzHnjwHwUO3MUV/LjYX0L9Q2syA4MOxT8tXjm2LYUs+KYLbn00wzPf
	VEMEK5+HSbA4wOi+t2vP3yLRPSHCO9mhGMsfoJKXHT2JZBWM2J4h1O9G+y1jeWnxQTtQg17gk5MuQ
	ehGF+0RyOH4hmbHMX35dSw/kQ+JJN77R8p9dRF25HMezxUSFcIqtXpwKkDKrNnoQQH7MOb8M9+we4
	pyjHAIIIzjoaxNJ8jEPzOY/PnTT3Zx5d6i/EiyLViee7DdrNevY4ff/Keba23N1EQibgSp8gBWEO5
	8M2Uo+6BJS7CzR/KK4bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgNRW-0005Tc-7i; Wed, 03 Jun 2020 07:04:06 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgNRN-0005Ss-89
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 07:03:58 +0000
Received: by mail-qk1-x741.google.com with SMTP id 205so1176192qkg.3
 for <linux-mtd@lists.infradead.org>; Wed, 03 Jun 2020 00:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QzVzuQF02fR+c0YY6XKBCSbJXl7wL1vS1Ln1HL3oxGw=;
 b=hvP2SxRps2n5aDrbSR8AAQbnQC0t0zBApBAx25ugAFYja0lvhsnGmNibf86F7WvKGg
 J+O6rwI5Za3ngxG/RuczGwvXZ3CddVudqhO6xw7M7+73T2uBDtS7ELpJWP2naiVjX2H2
 CUUDBo8X/Wj/yf47+Ks7aZYgLdUeFkRoGjh3cdwA5sXdAsmV5J6+cQcqppbz4qujvnsL
 E67tZfym83Fdq1LejN6YfBTcKeO6oORXbhs+wk7R7Gy2OqWZHE9MOPoAQS/lnrQFzyyG
 AjE9anYFv4LZXRYmgdLwgbr9woyk8RnVX049/PQ0knkZFQzkAmEDQi+vxY7QJ6WXUua9
 yONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QzVzuQF02fR+c0YY6XKBCSbJXl7wL1vS1Ln1HL3oxGw=;
 b=ukYESIrFo88fylpOYZH0fuy7wk+3D8lT9e6ghlT8rNiDxAcL3S5Pv6xn1IOx83hTRc
 7GvzmkO90VLUauUH3dgi3u7bUSCNMMv5AU+rDhqTew67KWjX1MlfKtftOFJnu+QBfy3k
 agMnC1UKJUXe/Cz+MeX7HvpUQVlnrkWr2FILGZwryqstnEMrIqBnzTJmqnjohxZwlBtO
 QojZSZaisiTORh7jFQ4LH4X35tyHOmH2FsjWbe+CEbK3zQUXlh4aA8hvijz2WOYgK0vT
 GDLXBRU+Vl/tK6enwat1Ll7ZzDyASA2ifcmT5I+Lh5rZkGUzKDy4yli3EnoiPV+ByFse
 +TgQ==
X-Gm-Message-State: AOAM532YPna724qARydTAzzeWHV/poPuo5y6B1Ovc1zNOUtLRaCNYSKS
 53x51d4oOxisIOeMQyH/duFdgI7dhLa0LIJBF2I=
X-Google-Smtp-Source: ABdhPJwS785WPHrjWKaLX4MeXy/6grzSvVxeAqt/HilgrtQDmL2JfnOGPBC89BA9nkq4UOir+8xy7GPL5j/4cJuIFrQ=
X-Received: by 2002:a05:620a:15f4:: with SMTP id
 p20mr26692587qkm.283.1591167833314; 
 Wed, 03 Jun 2020 00:03:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200423025827.48736-1-lizhe67@huawei.com>
In-Reply-To: <20200423025827.48736-1-lizhe67@huawei.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 3 Jun 2020 09:03:42 +0200
Message-ID: <CAFLxGvzZequ2JtzaVOxSst_sH7PPWpWVF5nHv=B8oxLpy=wDjw@mail.gmail.com>
Subject: Re: [PATCH v2] jffs2: fix jffs2 mounting failure
To: Zhe Li <lizhe67@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_000357_288113_321D3050 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 4:58 AM Zhe Li <lizhe67@huawei.com> wrote:
>
> Mounting jffs2 on nand flash will get message "failed: I/O error"
> with the steps listed below.
> 1.erase nand flash
> 2.mount jffs2 on it (this mounting operation will be successful)
> 3.do chown or chmod to the mount point directory
> 4.umount jffs2
> 5.mount jffs2 on nand flash
> After step 5, we will get message "mount ... failed: I/O error".

The important step is missing. You need to unmount before jffs2 is done
with erasing.

>         if (c->nr_erasing_blocks) {
> -               if ( !c->used_size && ((c->nr_free_blocks+empty_blocks+bad_blocks)!= c->nr_blocks || bad_blocks == c->nr_blocks) ) {
> +               if (!c->used_size && ((c->nr_free_blocks+empty_blocks+bad_blocks) != c->nr_blocks || bad_blocks == c->nr_blocks) &&
> +                   !(has_root_inode(c) && !has_other_inode(c))) {

I see the problem but I don't think it is wise to implement such a workaround.
IIUC the real issue is that c->used_size being zero but
c->nr_free_blocks+empty_blocks+bad_blocks does not sum
up correctly in this situation.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
