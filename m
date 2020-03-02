Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48ABA1765B3
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Mar 2020 22:15:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7v8NjrvXtEF+Ud3zR7jLTOwVUwTRze+tbGokqr/JXis=; b=YS2R99cP5pBDn7
	E1fGIa4kvnVF97+kbD7qZx5ANeeZV5l2LHcrS4c5xcbaF4S6bENGcoddMLtz/kkxF8FadCmMoshdC
	QD6U9BwxR8dC0hXpgokUrmV48ZqIdMlNEzO3PoLMHmaG+QuGibUbyrqLDCdAjjwrsuB6bgCsQLT5S
	UqzZu9dYFgJYJdvHoKbHl02OnLuLotSYP2KntC3v86yv5vZanyNcivH5iHQ25gt43KBFQcdGw+C2W
	FFWVh7cGzyMeIIJaDKhG25ofis8q5Ok+go8gmP2d/H2SxOKvMheYPgWjHntrcxqh9exKTxL3WrNlO
	UF8B29fSb8Q3uAPUIavw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sOs-0007Uo-1U; Mon, 02 Mar 2020 21:14:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sOj-0007UV-62
 for linux-mtd@lists.infradead.org; Mon, 02 Mar 2020 21:14:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id i10so819921wmd.1
 for <linux-mtd@lists.infradead.org>; Mon, 02 Mar 2020 13:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5matOJha1/pSHqpUD5pSs/+tLZfS/76GQlE2SX6b0M0=;
 b=WLQ1bbKd2/Yex4Q33Lc0u9NSdLhA9uHVbuYnOCrpz42gx4tDvnHyw37bkof+kxeg2g
 hJL/C/z7x+8qQSerlbyXUrA+K3/C10b4OngzKpAfFvgu3khnAIbSkWupZe0JF3C7h0fO
 fWbPL2ZpUuliXUNVKUpMceOP2RiYIhRRWQBORtNKsV7kISGDOYJmZbEAQjziwXAF6JVd
 1is4yQOO2QbvNBTQfj30G0Vm5wRIj0cesC1Kl1mxS2yI34qeBf+Cuez5b1eHJlDQehQY
 qHQ5hqvBMzE5OEhaeN+0Ln4OUv0VaZ0gs4P6ZNoybjQnf+yZ355jE8DP5XqYRQdeBjbO
 4sLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5matOJha1/pSHqpUD5pSs/+tLZfS/76GQlE2SX6b0M0=;
 b=pfMBcQa7y14vcB/1TXtAC8XguoQfG+mTTJA9b7/EW00r1zEl8SfcqnOZJ+UVL4lGf4
 C5+4IgnXyk7UYQBO2ur+JuhIvtOlJi9zPPwBAdLx1LAqeW22GGZbMoDds/yjeeI9qJ/O
 UPEZa4B50FQeKqUxils/m7GY5f+K9v9uuGzhmaMUr8dyIX492oYehYU5JIQWtNILhnLu
 zGpWRF+ulUhxT7nXD0sIef6NXYWU1AxZClYf4I2TK4SQ+aT/yv6lP7gEsArzBpMfkXKA
 2fYVR5aV6dyt4CdIJF8ph/hUpnHYyR2yrKCPoBdwvOTnMZoKVC+SWDcMj2u+bt6x7+A8
 LalA==
X-Gm-Message-State: ANhLgQ0FcNQhaJBXZ9G1F0HYgx1ysvObI5hOaMaC3BMp26DjZfOVlx64
 5kUfhhQB8R5Kit9KgTuoFqRIdT3UPQu/Aj7pVAM=
X-Google-Smtp-Source: ADFU+vuMf9SHRTAY+xs2I9u0Kg6nZacUjd/Ddr8o3fzGXr+IXjL892fsxOEvPf0cdRZOV1l6TiW91JlFQ1aXGbvCJbI=
X-Received: by 2002:a1c:208a:: with SMTP id g132mr279108wmg.143.1583183683752; 
 Mon, 02 Mar 2020 13:14:43 -0800 (PST)
MIME-Version: 1.0
References: <1582293853-136727-1-git-send-email-chengzhihao1@huawei.com>
 <CAFLxGvyJdWcXQt3H2aknTuGhCJpV5YvAbW_wuHfs3m+KcNSjtw@mail.gmail.com>
 <58b11ca2-6b91-52b3-bc75-d44abb202cfb@huawei.com>
In-Reply-To: <58b11ca2-6b91-52b3-bc75-d44abb202cfb@huawei.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 2 Mar 2020 22:14:32 +0100
Message-ID: <CAFLxGvyYFEiEe108Hf_TO7q0ZsiLPswVsgPBQOU29aFqebD4XA@mail.gmail.com>
Subject: Re: [PATCH] ubifs: Don't discard nodes in recovery when ecc err
 detected
To: Zhihao Cheng <chengzhihao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_131445_249146_0FEC6E29 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 "zhangyi \(F\)" <yi.zhang@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 4:58 AM Zhihao Cheng <chengzhihao1@huawei.com> wrote:
> I mean, the uncorrectable ECC error is caused by hardware which may lead
> to corrupted nodes detected in UBIFS. I found uncorretable ECC errors on
> my NAND, in the environment of high temperature and humidity.
>
> At present, UBIFS ignores all EBADMSG errors, so the corrupted node is
> only considered in being caused by unfinished writing. I think UBIFS
> should consider the corrupted area caused by ECC errors in process
> ubifs_recover_leb(). no_more_nodes() will skip a read-write unit. Maybe
> the corrupted area is skipped.

Well, if your NAND data is corrupted by your environment UBIFS cannot
do much. Sure, we can paper over some places but at the end of the day
you will always lose.

What if the UBI VID header becomes unreadable or the root node of the
index tree?

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
