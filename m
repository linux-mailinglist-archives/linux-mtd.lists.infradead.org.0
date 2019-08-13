Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66308C3D6
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 23:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u67YX+9q4/Ux70rHzWW2XQYfNBAZZUcb0yW+/weoWdY=; b=aoL459bP/glgIN
	Nmm3CjkoQ9lN+SExwaxf8gzmgbeAYXzUcIWQFxwJl0H+HWNNQTx+dXmHonPoIpusAtxO6X1tKiYpZ
	4FgHGgS3PYDGVnqevaA+II3eJQ8+B2ORy8AskXJfG2uJlVGR9J8IMz136K64rLfUTjmkGGyEOdxX3
	Jdpc9Czt46NJJiYhvgvK3txKUP5VC4UthXwdpGZOXc8xDgoeyjtxgQhpYMjLtqAs5LEx5YRrEOAjX
	LnnS3dMr8wJOQ6f8hIpcbz5lQHIdymJcMwKucZohQ5SPOP3SsN8GyX33wDdq6MTc3YB5TnraLHwV0
	cnd0E4MrjrB/+sjIj8aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeUv-0002wt-6u; Tue, 13 Aug 2019 21:38:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeUm-0002wU-SC
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 21:38:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id v15so2805072wml.0
 for <linux-mtd@lists.infradead.org>; Tue, 13 Aug 2019 14:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DPqZmEUP+OCmd1zB4XrRpQqFSNaRPFjphn5AyHf/W4c=;
 b=hVbPiymkiv59P7I9Izziyl7CrbyvNYc3fv4pVc1WuPgaq39dWUbX+I9IUz3RbFVQ0K
 xldm0LGnNWLsSJRwfLK8Q9TLst4LWCB9BgV76Q3ly+mi2WX2mhrrGXCaV0th/wh3cq06
 4OdC24uGCz+BiXf+fYd6NpJ1p1v0Kr5vzzd2Ysi7sJ8zZODnW+6R9tqijRlgDc5ReHFr
 fI2d8nW26Qr79AeUQDESX6bEcadgoduHn0+bZBmEXZPgF6NobyfGyz9dAC8CaKReXEc+
 V5UFFdTGaJfgy+n/SFDR5T83VViKsJx0EZ7opBNdBQqu8wS8OS7XujXEhpSH0Vshbywy
 7mAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DPqZmEUP+OCmd1zB4XrRpQqFSNaRPFjphn5AyHf/W4c=;
 b=FX4VwYw+wIWxpl2A1jifEkt26ChPou2ZZE/Tu1tAnSMxJfCPXR/FNYiLdxdMRwmWrh
 R36UP1tSE2sVNYivnD10ZqGVmUatxRkaZwdjULh5v6FUobKqsnacE1nGj6zEMOBXTTcC
 XK5RitLaom/bd3maGMlZX9iZIZKvzg64s0rOJlcrwNtMfRqVYnRlGn6LaSau0IFxTjmx
 fMYn9+SBW6vyepLiP5V9ooNvAa1zt5hNgQfXFgo00rJBfjielhdkkHkXKyIDp2oNMtWB
 AL4ZGndQf5+b8nbkgCpUBmnEj8la8pvEB9PjJIDurlK5z60u2M9aZoDm3kQrZtuha+G3
 TtZQ==
X-Gm-Message-State: APjAAAX4/7+sIajvOhDYQLY96gYhAeyyDeg9WyfcEGXBN5hMceFC/xTi
 65Vourz9Of7rxtHE0eRQ53LY28gOHWshu1T6Rqs=
X-Google-Smtp-Source: APXvYqwvvWTtS3T/7ubA6lTx2mfmOnYn4Fn0A685ouv4FtXe9gICxk42c5HllO89PO9U+xLY3vmztsutJ0NFhk4wN8o=
X-Received: by 2002:a1c:9e4d:: with SMTP id h74mr5197971wme.9.1565732299027;
 Tue, 13 Aug 2019 14:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <1565431061-145460-1-git-send-email-chengzhihao1@huawei.com>
In-Reply-To: <1565431061-145460-1-git-send-email-chengzhihao1@huawei.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 13 Aug 2019 23:38:07 +0200
Message-ID: <CAFLxGvzOMfqJJ+ZKTUavxEx+0_OJO_VcrNu1nn2rrvcypAxAAA@mail.gmail.com>
Subject: Re: [PATCH RFC v2] ubi: ubi_wl_get_peb: Increase the number of
 attempts while getting PEB
To: Zhihao Cheng <chengzhihao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_143820_939358_6B895055 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, yi.zhang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, Aug 10, 2019 at 11:51 AM Zhihao Cheng <chengzhihao1@huawei.com> wrote:
>
> Running stress test io_paral (A pressure ubi test in mtd-utils) on an
> UBI device with fewer PEBs (fastmap enabled) may cause ENOSPC errors and
> make UBI device read-only, but there are still free PEBs on the UBI
> device. This problem can be easily reproduced by performing the following
> steps on a 2-core machine:
>   $ modprobe nandsim first_id_byte=0x20 second_id_byte=0x33 parts=80
>   $ modprobe ubi mtd="0,0" fm_autoconvert
>   $ ./io_paral /dev/ubi0
>
> We may see the following verbose:
> (output)
>   [io_paral] update_volume():108: failed to write 380 bytes at offset
>   95920 of volume 2
>   [io_paral] update_volume():109: update: 97088 bytes
>   [io_paral] write_thread():227: function pwrite() failed with error 28
>   (No space left on device)
>   [io_paral] write_thread():229: cannot write 15872 bytes to offs 31744,
>   wrote -1
> (dmesg)
>   ubi0 error: ubi_wl_get_peb [ubi]: Unable to get a free PEB from user WL
>   pool
>   ubi0 warning: ubi_eba_write_leb [ubi]: switch to read-only mode
>   CPU: 0 PID: 2027 Comm: io_paral Not tainted 5.3.0-rc2-00001-g5986cd0 #9
>   ubi0 warning: try_write_vid_and_data [ubi]: failed to write VID header
>   to LEB 2:5, PEB 18
>   Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.0
>   -0-ga698c8995f-prebuilt.qemu.org 04/01/2014
>   Call Trace:
>     dump_stack+0x85/0xba
>     ubi_eba_write_leb+0xa1e/0xa40 [ubi]
>     vol_cdev_write+0x307/0x520 [ubi]
>     vfs_write+0xfa/0x280
>     ksys_pwrite64+0xc5/0xe0
>     __x64_sys_pwrite64+0x22/0x30
>     do_syscall_64+0xbf/0x440
>
> In function ubi_wl_get_peb, the operation of filling the pool
> (ubi_update_fastmap) with free PEBs and fetching a free PEB from the pool
> is not atomic. After thread A filling the pool with free PEB, free PEB may
> be taken away by thread B. When thread A checks the expression again, the
> condition is still unsatisfactory. At this time, there may still be free
> PEBs on UBI that can be filled into the pool.
>
> This patch increases the number of attempts to obtain PEB. An extreme
> case (No free PEBs left after creating test volumes) has been tested on
> different type of machines for 100 times. The biggest number of attempts
> are shown below:
>
>              x86_64     arm64
>   2-core        4         4
>   4-core        8         4
>   8-core        4         4
>
> Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>

Thanks for addressing this!
I'll take this version. :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
