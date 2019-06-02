Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15072324B6
	for <lists+linux-mtd@lfdr.de>; Sun,  2 Jun 2019 22:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tl5HGQnbRSevz6l94Fe0tC7NzJYqgXBWA5QFRuTLS34=; b=UKFDfgc6h7cS5I
	1QGq/8AhzVA5H1O79h9J07XJShejK91UOy5xiIuSqh4fHEX6k0nA82KQZgzlPDApSxN6a0Y1nEThm
	4RJtIQaPTNOIlq3xHS8K7EAuIB6U1Jt9Kxq7JmP5Oy2XGSwdvuDeEKA/Vgunlw7RSvaYjqPSjjcu/
	0bfN/35EDclcMJQwZazHX39VkvDpTFI7LavPM0342iB/5k0nQhCqeHrvCNsdASkItpbI7bT8z9NFr
	G4XrqoRH47Z1xUFnXT+Ay9SxrKgGj6t8vssy3DFerJVTkA/GFldo46d4bw/fswxdX8XRfJZQev7yf
	di99Oy6l1Qh1oEaLDC/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXWgz-0003BD-9d; Sun, 02 Jun 2019 20:02:57 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXWgr-0003Aq-Ap
 for linux-mtd@lists.infradead.org; Sun, 02 Jun 2019 20:02:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id g69so6105791plb.7
 for <linux-mtd@lists.infradead.org>; Sun, 02 Jun 2019 13:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WsXxtleAggAh+6KQX6Y8eg6ze+Ttlx8B4egua6L6Jb0=;
 b=eLoIca6ZtB7qHsBT5ilQIg6aP1yzqIYLVazfDc4qH+1zgRSjNrqE1gvel8dIjXq03h
 Q19rBJOF8+TsppF/VrNk7ixDBUJ+PMTnQkz67MZqyA5LQfdN0SsGSKrvML9DD7UPY3iz
 ua5PW2Wjg2456CGGbKlTzt4n5JniEm8m8DtRuZ/NeZlbf6fOSyBG3s15T8C8FOrWeVga
 ZOJXQEH1PF4aOM6u9qkRySKxWGkCBuPcRy+lFbapIYTXblL8pmbwFA8YYNTwNYRfnbgN
 Liu25EUXmGvvSqTD+8f9tVcS1KSAe0pUwBeUyj3+f68StZWBWzt3yC50JmBM68AyfeO7
 FCBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WsXxtleAggAh+6KQX6Y8eg6ze+Ttlx8B4egua6L6Jb0=;
 b=ipkvxWbL82n3/3H0cqQmkKeVoFKKvWAVh1EgQ5d+BfTXldbpb3ajk3LhbiDav9zakN
 stCxY4hgv9DKrPuQP8aXFNs+z7odU7m+NVV1fJ6mW9lPXT3VHwxXy/4L+B4Sb49+nYCN
 lllq7QsnHmv1WAZXNkoYLxuMpdvPEC4rTDRLMpO9BjkOWdezFj0Kw4t00GnbdJJJoQkv
 C5hciVDz8/MMsqN9UwZTMWpFrAfwVArexTGUWv7og5FcQtq8SHeO4Xrh8JQEWr8dcAa/
 FVaMG2JFMl6p7x7EQC1UxSqCIVJ/5Sr0dSfsSg50+kF43Vz/FkOgUskHbcj8jH/GkI5x
 p93g==
X-Gm-Message-State: APjAAAUOyP/RPUdcJizGi+E2kHhbzYjfIXvW2nlsT/hcLoWUGngkSqu+
 PXgf5iXU2oAwr/wyvRj1JooGcy2IsVHABSLSohk=
X-Google-Smtp-Source: APXvYqwS0AVsc+Q2oMghf2rIXxH88GVERFlIbkUXVFUc29WQPf7X/yORkxjnGypzBAFe8kvN6Nik9VC5jwzIaxcM2oQ=
X-Received: by 2002:a17:902:1566:: with SMTP id
 b35mr25976879plh.147.1559505763479; 
 Sun, 02 Jun 2019 13:02:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAM===sSAP-qRv7jxBs9KZDFyuL+Dx3wSkQfSOiSQtp8Z8FQcMw@mail.gmail.com>
In-Reply-To: <CAM===sSAP-qRv7jxBs9KZDFyuL+Dx3wSkQfSOiSQtp8Z8FQcMw@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 2 Jun 2019 22:02:31 +0200
Message-ID: <CAFLxGvymOZbBM=wtK-fcgYOv7OOucpcZ1eZJ9GQmUH8h9Jcc+Q@mail.gmail.com>
Subject: Re: UBIFS on write-protected NAND
To: Leon Pollak <leon.pollak@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_130249_386557_83BE47DC 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, Jun 2, 2019 at 4:08 PM Leon Pollak <leon.pollak@gmail.com> wrote:
>
> I am sorry to disturb the list with the problem most probably already
> solved ion later versions...
>
> I am running Linux 2.6.32 from TI and my root FS is on NAND UBIFS.
> Linux boots with command line:
> root=ubi0:ubi_rootfs ro noinitrd ubi.mtd=4,2048 rootfstype=ubifs
> Please, note the "ro" in the command line.
> Also the HW write-protect line is always set to "protected" state.
> UBIFS stays most of the time in write protected HW state (system
> requirement) and RO mounted, except the very rare cases when some
> update is required.
>
> For this update purpose:
> - HW write-protect is removed in SW;
> - root FS is remounted to RW (mount -o remount,rw /);
> - the change is performed;
> - sync, sleep 3;
> - mount -o,remount,ro / ;
> - sleep 2, return HW write-protection;
> - reboot.
>
> For some unknown reason (may be you know?), sometimes something still
> remains in journal and on the next boot we receive a bundle of error
> messages with error codes -5 and -30. This happens despite the RO

More details please. Can you share a full back trace?

But in general a re-mount to ro does not guarantee a clean journal.
All it does is making sure that no new files can be opened in write-mode,
it is a VFS thing. UBIFS tries to be nice as possible and disables further
writes. Maybe your kernel has a bug, it is very old. Dunno...

> state of the FS and effectively blocks all the system:
> - after these errors detection, UBIFS switches to read-only state,
> blocking any possible corrections/repairs.
> - we can't remove HW protection to allow it to finish desired work as
> it happens in the Linux boot, when initd is just starting.
>
> Now, I suppose that this issue (that everything is RO and shouldn't be
> tried to recover) is treated already in the new versions. My problem
> is that I can't move to newer Linux because of TI HW.
>
> So, my questions are:
> 1. Where in the code of UBI (UBIFS?) can I insert the HW write-protect
> removal in order to allow the UBI/UBIFS to do its desired work?
> 2. When can I put write-protection back?

Using a write protected NAND is not recommend.
You basically remove the wear-leveling feature from UBI.
Blocks can gain bit-flips also in a read-only environment, consider
read disturb or other influences such as temperature changes.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
