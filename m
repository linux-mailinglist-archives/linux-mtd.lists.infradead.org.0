Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9FA1400BC
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 01:20:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnOtW19OPXjX5KGC1UJ4Gl3e9gTqIIBdPWqFiZLo6oo=; b=JNfhm62Xx5dUPv
	amOlpfS7P/Fk1qsTdmhUYYmFrah3ced3nThvjOD1ykmx/JAoOmWJGGitjBm1O+1ya2BJ0AF48jL+4
	X0M6OHVdXkNyCLTtdyWkw2bdgMyxwEvAoZ6RKJbZNqB38v9bcLviag0D6Zqs7386DHECdm5ZUw08E
	bimv/oWiWYNiW174qfAULObt07jnITnp1YpDKdICeTC4m2/GPhsHcFrFYrYSJckjSBtVbNkBx8xs8
	cHB68vWuZb5WPQkiHIhcfa4hicU4/fx6BuicGeeVrZzkdMo3GcKqK3AxrWWh4tQaGW5+0RZnJaKh6
	vfNMqS88zAdFVJetAtFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isFN0-0000Cc-2g; Fri, 17 Jan 2020 00:20:14 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isFMj-0000CI-Gt
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 00:19:58 +0000
Received: by mail-wm1-x341.google.com with SMTP id m24so5680010wmc.3
 for <linux-mtd@lists.infradead.org>; Thu, 16 Jan 2020 16:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YtAu6CntA98sg4QasQiVwT8J4f884w2dKvGVX3F4OgY=;
 b=qz4UUSZBYuZmpNvRK4A96/JeQZzx1LsE43cxFEY+CcBL2lTZjNnAdvFqTgWcd/j+kx
 1ZeciA9kVYJtGjpJCMBdAxZnCxpO0jabFk/v4BGZgFsOyL3dmzD/C93tbsVnIyzl8oUG
 VlGi1u0ojHPv4pbnKO5okUGPSb6Ky0fxRrIfBedYTmwgOYFfLvf4EzGmvDiKryrepZud
 fpFg7ShbN8EdZBOePum++NK8tjGQHswgdjHyXUAiNzQQ52FHtIATUwbZ5Mp+WDhNWrTW
 41h/ykcv0Z99LQag9VO4T/GTquo5WS1b1kO8g42Z3cxEvjas9KC9d+Jw7B2/R5b9ovYH
 UHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YtAu6CntA98sg4QasQiVwT8J4f884w2dKvGVX3F4OgY=;
 b=AhPxJAJYvtDV4KAQ+1EgCqDGueupcyKRjdZInqDQP6e9YimyBvaME+fl6CBG4BgWrY
 73GX3hEBiuZKTsFRihcL9yfRnJrsxd00wCawdG3hC2oqD7fu/kO0eFztgLNHReoDhGzT
 6/hxXD+6eONDDsvBAZ6dIvjvagduWKNXiJGbeNCEeVl40i3AWanH29GiUIbPSucso6UO
 cyiUsi+rUDRaqKjwu86w9R3g2m3gAKudbsfbZOntT0EV4ofG3f9EnGLQ4FgG29OY9sHk
 38LNbebPD3UWYajckp/1DP4T4NHaoR1Odi4bKCcFJJlYxAuuGx20eMEDrMz9lRBRLntY
 djuA==
X-Gm-Message-State: APjAAAX5rKCnDsrM6XWMmV11N8HiHGUcu/c7Tr3cLs++qQXDhyl9Sn/Y
 fcA+qstm7QjirQOWQUYPnJ6MVXkNEbnJMKLJCWYaWCNd
X-Google-Smtp-Source: APXvYqwy4iy+TReynJryB/2S7/6TAfTtS1zIuRIrmqGHJ6hVtXy4vWRkcTIAf+JJYpHUJgaEorOgmP1ZB202AYNnDdI=
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr1757180wmk.68.1579220395930; 
 Thu, 16 Jan 2020 16:19:55 -0800 (PST)
MIME-Version: 1.0
References: <CA+VTqBkr+1Kd0QSLUJbRZG3CMZdNct_svGNjSfVh=8Gaozfrfw@mail.gmail.com>
 <CA+VTqB=0QSWG68GLO=6LuetoSwwiuxDT6k_n=m+ruZpbjuvgeQ@mail.gmail.com>
 <396862842.29400.1571476176976.JavaMail.zimbra@nod.at>
 <CA+VTqBnmjXDtz2DdaaM=9-GHBVfYU909qw2V9G8DkYfu3w6DMw@mail.gmail.com>
 <CA+VTqB=DByeW-NmHoGuybPB1odL+WkwxRg2z4O+qVobHaHpVsA@mail.gmail.com>
 <CA+VTqBmNiHQkaOS3aApekiuP8XOrUB8gf39EYAA=AfGpiTDRiA@mail.gmail.com>
In-Reply-To: <CA+VTqBmNiHQkaOS3aApekiuP8XOrUB8gf39EYAA=AfGpiTDRiA@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 17 Jan 2020 01:19:44 +0100
Message-ID: <CAFLxGvxJQws9qMY51Wd+buJirYUR=mSBUO-MurAMOPP3MG2pyQ@mail.gmail.com>
Subject: Re: Seeing ubifs unmap LEB error with linux 2.6.35 kernel
To: Kiran B S <bs.kiran81@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_161957_562611_4955011B 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 9:37 AM Kiran B S <bs.kiran81@gmail.com> wrote:
>> On Tue, Jan 7, 2020 at 6:01 PM Kiran B S <bs.kiran81@gmail.com> wrote:
>>>
>>> Hi Richard,
>>> We could hit this error now on multiple systems. An attempt to write some data was done during this time.
>>> Please find below the stack dump trace as per the changes that you had suggested:
>>>
>>> Stack dump trace:
>>> [dump_backtrace_entry]:59:[<c04ca258>] (unwind_backtrace+0x0/0xe8) from [<c0663280>] (ubi_leb_unmap+0x68/0x70)
>>> [dump_backtrace_entry]:59:[<c0663280>] (ubi_leb_unmap+0x68/0x70) from [<c05d0088>] (ubifs_garbage_collect+0x2f4/0x308)
>>> [dump_backtrace_entry]:59:[<c05d0088>] (ubifs_garbage_collect+0x2f4/0x308) from [<c05bcaf4>] (make_reservation+0xec/0x3a0)
>>> [dump_backtrace_entry]:59:[<c05bcaf4>] (make_reservation+0xec/0x3a0) from [<c05bd718>] (ubifs_jnl_write_data+0xec/0x1b8)
>>> [dump_backtrace_entry]:59:[<c05bd718>] (ubifs_jnl_write_data+0xec/0x1b8) from [<c05be8d8>] (do_writepage+0x100/0x16c)

So we know now that garbage collection tries to unmap an invalid LEB.
Like I said before, your kernel is super old and unsupported.
You can try try to backport fixes which affect garbage collection in UBIFS.

But I'd strongly suggest to upgrade the kernel.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
