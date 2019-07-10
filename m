Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 899FE64475
	for <lists+linux-mtd@lfdr.de>; Wed, 10 Jul 2019 11:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MHxLZ/sRWOqkdFvnr4XjhYLwhsJaedSRUIgjmlpnP8=; b=Pql7zLwMiSfcXs
	wggCH29NZxc21KddLZdR/b+RZaC/UOMrgwDD+uEpJa0ofbQyK+j37rYSt28rXFkOD8DBWI7NCIgUt
	sqVhoaXl7DWIuilq3ZqTGMQ8g55imxhCNCkyJRmC1oHrR4b45+o60H0zuyRJPIoTB9ANLD7KyckO8
	JN/Yb71ePLfFaaEonTsxKT4mUxbMrpO5LvhUGUKWCtFPTdjEUAQulpVZFFLueAEIzv3bzuKEo1PX4
	LJDzcyS7mNd/o/RCxUTrZhtS2ppCdZkxhgn4eVbsIqj4HvfQswF0gHDPqO0UHmyMho8Y/ofmpp/h1
	QLFbc9U32+e9O46Uko+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8zm-0003hR-Sd; Wed, 10 Jul 2019 09:34:39 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8zV-0003h2-1y
 for linux-mtd@lists.infradead.org; Wed, 10 Jul 2019 09:34:22 +0000
Received: by mail-wm1-x32f.google.com with SMTP id s15so1508958wmj.3
 for <linux-mtd@lists.infradead.org>; Wed, 10 Jul 2019 02:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sJlwBRkhAO3ifRTBL5TgLIjDO60DnjEFbj6dmQ+4e6Q=;
 b=PPWGN6hrrjzQr87tUqfFEhLgMsN+dUPnl5fofo8pz7gD9DiUub5PC9deqODv3zsQ01
 FOptaBND+tYOmy/n7AOHHom1iSmQ+NCw8UbLAOQS2+ll3hCP0IY7na7hg+2hCJbZBHo+
 fhxQZIXpBWRGuyjTj6HbvpPGWNNBRveG29AmhjPJaOoXiviavnL64SHxGXOHvxgmoIVJ
 RMAFlAZ3khX8WIkxYQAI79bwySqsq0WcN5nzdc9v6Lu6DPpY32MBD5kYu+RBs5dAnQIF
 sYAr7VD+ZUum7oJ0i//nxPgxdhwR1twKAi5JrW599MEtaYLI0TwDdPPgpUQMFx0LnAB8
 Ne7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sJlwBRkhAO3ifRTBL5TgLIjDO60DnjEFbj6dmQ+4e6Q=;
 b=V95OXqi5urs2XWWPM29kkFXex0UNEIINoUDqUpN+c/JlEm+nj+isxMPjRQnWJB6ky4
 sf0RmPBzG6tubrtbGRepLPg7VtCoLlPUaIgbgCjqBayI3VX3hFaJNt+36IsoW9NukkBC
 Ek0/8Z8Ik4Yw0Fm5VdD5fps5mDHPTpAJOUCRupD69vc12EofmVeE6Vov0oz3wCVhVZ2P
 QpBlgHyqGjT5CevRl5wX2LadRPNjUX3WC8te6rBXPon/dgWaFp2VYNBkXECxRDTvYVgA
 yia9Ho8E70P6TUdbbid9q+6xp7+2xNFzkp7tVNduDUnJQxBr42E97j9Hm+t5HzOgb1b4
 XJ/w==
X-Gm-Message-State: APjAAAXmFZYLxUeqMw6rpbSafg41ovXw0/BKiyI+YrTmu0FQcLW6k6yL
 ktnNl1xBwjB5j2ae+xooVDubDCqltQDaCjFlhRI=
X-Google-Smtp-Source: APXvYqw63SyPVeIEo9pchcmSLB4FVJdTg8yUUi2GT4MxPovFiW3TfR75Tec2ZwKizHTUFJ8Tqm2GtHiGGKMaJHI7MkY=
X-Received: by 2002:a1c:9e4d:: with SMTP id h74mr4676409wme.9.1562751258410;
 Wed, 10 Jul 2019 02:34:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAMk-x8NpDDjqtJQ0WqqRcggQxBp3uu7QbQET0m019LoG9OSkvA@mail.gmail.com>
In-Reply-To: <CAMk-x8NpDDjqtJQ0WqqRcggQxBp3uu7QbQET0m019LoG9OSkvA@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 10 Jul 2019 11:34:07 +0200
Message-ID: <CAFLxGvy=iwwUbS8O1xMAtMZYibzQ+vbft1ZVpg9erR=S1c8s2g@mail.gmail.com>
Subject: Re: Available space loss due to fragmentation?
To: Ben Schroeder <klowd92@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_023421_125912_4862E3D0 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Ben,

On Wed, Jul 10, 2019 at 5:32 AM Ben Schroeder <klowd92@gmail.com> wrote:
> Why do I see a loss of space when rewriting the same file?

Please see my answer below.

> Can I use an upgrade scheme with file binary diff as mentioned above -
> One that would run correctly with low available space?

If the filesystem is full and all nodes are already packed, it can be
a challenge.

> Can I use an upgrade scheme with UBI volume binary diff?

Yes, you can alter a dynamic volume as you wish. But keep NAND odds on mind.
So you need to replace whole LEBs.

> Sorry for the long mail, I have not found much information about fragmentation
> and space loss in UBIFS. Let me know if I forgot any relevant details.

I think the root cause of the problem you see is how NAND works.
On NAND we write always full pages. So if you ask UBIFS to change one byte
of a file or change meta data, it has to waste a full page.

Luckily Linux is a modern operating system with a write-cache and upon
write-back UBIFS can pack nodes (UBIFS data nodes, inode nodes, etc...) together
and wastes less space.
But it wastes still a significant amount of space if userspace forces
it to persist data.
i.e. by using fsync()/fdatasync().
If UBIFS runs out of space the garbage collector will rewrite nodes
and pack them tightly
together.

So, if you have a pre-created UBIFS, nodes are already packed and your
update mechanism
might force UBIFS to faster than the garbage collector can pack nodes.

With that information in mind, do your other questions resolve?

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
