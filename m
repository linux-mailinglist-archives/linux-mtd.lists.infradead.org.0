Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1F6329A3
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 09:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQIq4XG1CV52NEwhz4Q7jvLz4lsi4BoHWdFYON+TXqU=; b=qX8kncRRAl6OZI
	I4omEWOv20GCLF0CdUe3UZ69h8JOW5+qgeQnzHmsgoIsmz2Av2n/6TBImrhE1DpB4M9yWc8/+QidU
	1wRkpP9pWLRPQTheHwWgfwHBBwEGKjISkwNPn/Dc3jh/Nc2v2fEzu9tgJoyqcrjM3a/KwqK7n4Coe
	o+NQaYYbkaSUpnyQ86FhbedjRouh1W17p3/E5ud3TDGl9rQxc8NqDMLoTKYIkzMw8HjqB275z3O+R
	47d2N1MDE8OFghmGlQWeXwtsULfHzgsr86Bp91uUIkLz+31mb4uqSTvjlLLHphZ2f1jz7z5cpQAIx
	0C8FOv4iWRmFLLXTsoYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhRQ-000349-6L; Mon, 03 Jun 2019 07:31:36 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhRH-00033b-QY
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 07:31:29 +0000
Received: by mail-qt1-x842.google.com with SMTP id z19so8185654qtz.13
 for <linux-mtd@lists.infradead.org>; Mon, 03 Jun 2019 00:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ATZcMIgH0T8S7gkhxn6bQK1eKcEY2J/kyDgzvMxeO0Y=;
 b=GuLDOBwx0skXLJzAnlgODFOCNL47x76yeO4tUPPizwScGit2Nt/+LQiE52nCpfcE+t
 3SooNiSDDvPVLehHrxMPALSvmT+cx8hi+xjIH7txrzq8xWmDd7F80fra1o+SDXeJliKb
 RpzMx/RnppUjAflclIdWYIXiW6EGSh8pgNAdxqMOd0lVDyXB4tmJC1r6MX2xAwWxMslX
 beCHlS6cxuCH+vcTUDw3IkNAfpkRR9Q4WtSvI3eYb2uP7L7zkM4/SiseAZ6SroIC343i
 2x836H78USS0bMNISPhkzgcAMKdOm+RoVzEEtJSijqR4QL2fz39g3Pp6DsLbwa+gdxdk
 eEww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ATZcMIgH0T8S7gkhxn6bQK1eKcEY2J/kyDgzvMxeO0Y=;
 b=ZFaMQbteTcY4goRqmalCMNupmpBh9foJ8gCw4MaSqf/77al1yGUzf3+P5KIRuFmUP+
 zfp+v3hCczCemjqt48/svC9ivLx5eEZTtSXCVoOS3LBZOI3zUOhJV8j5g2cbfr3qKxAn
 GSRi9+vlqqmnjfmvQHKeMZDiYhMg44NvVCkhpNt7TIhECuinFXb4eB23f0w3p532+Z4W
 XAaG0st1FaNOkh93NP7CvNsXBRoREGQ5x77w6SEooVyIr5RGL/cYFZbIAQrBlJgLxfyD
 xrjkO/egkMcl2tYtdXHmMKPx4Trj2tG09DFEPLPEuWQASx7n/iFH/fivE+JttQTERXdJ
 XMrA==
X-Gm-Message-State: APjAAAXr8vOob8kDsffF63hvklzrOKtqGH1BzYUo02RXrT2Viv9AEYXg
 RuxMvX6TWwIiBTgwEt4iqH1gw0ihriIFa2dprCk=
X-Google-Smtp-Source: APXvYqyH29jfB24lSkznk+fO/AdLbUc1mCPIlZERQiLw04YwzpdXWPVsFUwpBBuRoA5fqKmHGULp3NyDjwz8y6HWvvA=
X-Received: by 2002:a0c:c68d:: with SMTP id d13mr1504235qvj.145.1559547086561; 
 Mon, 03 Jun 2019 00:31:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAM===sSAP-qRv7jxBs9KZDFyuL+Dx3wSkQfSOiSQtp8Z8FQcMw@mail.gmail.com>
 <CAFLxGvymOZbBM=wtK-fcgYOv7OOucpcZ1eZJ9GQmUH8h9Jcc+Q@mail.gmail.com>
In-Reply-To: <CAFLxGvymOZbBM=wtK-fcgYOv7OOucpcZ1eZJ9GQmUH8h9Jcc+Q@mail.gmail.com>
From: Leon Pollak <leon.pollak@gmail.com>
Date: Mon, 3 Jun 2019 10:31:15 +0300
Message-ID: <CAM===sSzy4=joOnzLxbSDoC=4HgmXj7QF14vzFCKTWt8z-JLoA@mail.gmail.com>
Subject: Re: UBIFS on write-protected NAND
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_003127_881377_34846287 
X-CRM114-Status: GOOD (  25.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (leon.pollak[at]gmail.com)
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

Thank you, Richard.

On Sun, 2 Jun 2019 at 23:02, Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Sun, Jun 2, 2019 at 4:08 PM Leon Pollak <leon.pollak@gmail.com> wrote:
> >
> > I am sorry to disturb the list with the problem most probably already
> > solved ion later versions...
> >
> > I am running Linux 2.6.32 from TI and my root FS is on NAND UBIFS.
> > Linux boots with command line:
> > root=ubi0:ubi_rootfs ro noinitrd ubi.mtd=4,2048 rootfstype=ubifs
> > Please, note the "ro" in the command line.
> > Also the HW write-protect line is always set to "protected" state.
> > UBIFS stays most of the time in write protected HW state (system
> > requirement) and RO mounted, except the very rare cases when some
> > update is required.
> >
> > For this update purpose:
> > - HW write-protect is removed in SW;
> > - root FS is remounted to RW (mount -o remount,rw /);
> > - the change is performed;
> > - sync, sleep 3;
> > - mount -o,remount,ro / ;
> > - sleep 2, return HW write-protection;
> > - reboot.
> >
> > For some unknown reason (may be you know?), sometimes something still
> > remains in journal and on the next boot we receive a bundle of error
> > messages with error codes -5 and -30. This happens despite the RO
> More details please. Can you share a full back trace?
This is an example:
UBI error: ubi_io_write: error -5 while writing 512 bytes to PEB
1600:2048, written 0 bytes
UBI: run torture test for PEB 1600
UBI error: do_sync_erase: cannot erase PEB 1600, error -5
UBI error: erase_worker: failed to erase PEB 1600, error -5
UBI: mark PEB 1600 as bad
UBI error: ubi_io_mark_bad: cannot mark PEB 1600 bad, error -30
UBI warning: ubi_ro_mode: switch to read-only mode
UBI error: do_work: work failed with error code -30
UBI error: ubi_thread: ubi_bgt0d: work failed with error code -30


> But in general a re-mount to ro does not guarantee a clean journal.
> All it does is making sure that no new files can be opened in write-mode,
> it is a VFS thing. UBIFS tries to be nice as possible and disables further
> writes. Maybe your kernel has a bug, it is very old. Dunno...
OK, I understand. Is there any way to flush ALL data?
If "sync" and "ro" doesn't do the job, is there something more? Some IOCTL?...
Solving this issue will be the best possible for us.

> > state of the FS and effectively blocks all the system:
> > - after these errors detection, UBIFS switches to read-only state,
> > blocking any possible corrections/repairs.
> > - we can't remove HW protection to allow it to finish desired work as
> > it happens in the Linux boot, when initd is just starting.
> >
> > Now, I suppose that this issue (that everything is RO and shouldn't be
> > tried to recover) is treated already in the new versions. My problem
> > is that I can't move to newer Linux because of TI HW.
> >
> > So, my questions are:
> > 1. Where in the code of UBI (UBIFS?) can I insert the HW write-protect
> > removal in order to allow the UBI/UBIFS to do its desired work?
> > 2. When can I put write-protection back?
>
> Using a write protected NAND is not recommend.
> You basically remove the wear-leveling feature from UBI.
> Blocks can gain bit-flips also in a read-only environment, consider
> read disturb or other influences such as temperature changes.
Well, as I said, these NAND is updated not more than 30-40 times in
all its life.
So, wear-leveling is not so relevant.
May be this is relics of the NOR past, but our HW engineers always
keep flashes write-protected to be on the safe side and avoid possible
false writes/disturbances/problems at the power spikes.
The main goal here is to keep the system bootable despite everything
in the world, except nuclear explosion...:-)

Thank you for your help!

Leon

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
