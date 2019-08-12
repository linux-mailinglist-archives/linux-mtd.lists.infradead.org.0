Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0E58A762
	for <lists+linux-mtd@lfdr.de>; Mon, 12 Aug 2019 21:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoUM/W23IwUJKHnKO4hd5RtMh9Xq8ZiwGVWlfbxGdXE=; b=LUjvTQlf1QajB2
	Abvlsn9XVloVWMRIYg6Aili9p6jY/MTxsnb2944YaMYdC8YnSa42YUo6RUfkJnM42xcjQ/WzWTolx
	Razjo8aqlEKPebNvHJv2TSo2mgOtDl5l+zlwXuslRYRxWS+Dyw8xcR5CwUDyqsMlifuuqZ3LBm9+X
	tonjHbui4oceJdxpAlquj5SCNAQP/XvpHJLyoyQDHmXlTeGmIuTdMHF4U4eGjQzPXbRURATjWd7/9
	wooRNA5trdjqOkhqJ8jdguWM7pfhbJvX1dMyyxczLRnP+nE7AmxxlO/oJCCExcTdn2JDTMOjY5nZE
	YvFTSMK4UHrMTvZXgm3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGBd-0007OX-47; Mon, 12 Aug 2019 19:40:57 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGBC-0007Hw-1l
 for linux-mtd@lists.infradead.org; Mon, 12 Aug 2019 19:40:31 +0000
Received: by mail-ot1-x332.google.com with SMTP id m24so10408122otp.12
 for <linux-mtd@lists.infradead.org>; Mon, 12 Aug 2019 12:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yWqECs8BcbsWorAVX1TlWGfTakP2SBca2m7vdcbx+6o=;
 b=PfLkuTjfFPEPP+hl2XcYYFZyCWNhmwrbKm2S0y4d4ABOQ7lPbjcrDOKysrTdLeKgcP
 iyZd+D/yaFK0tawZG0G7SXt1hDRhECVSW7X9tacbKImDdtP+2Zt2hxjX+4dDN/opO5Ao
 qo6FZOdNF8+SwAT53lC9tVgNR4to9iJbRanQZv4CslQBIXjl41yoioov4/Be0CQb4pZ8
 RzEOCpb3v3yp5V9RNzdYpEb6OVmPY6PASDKKygN5Bg2CDz3bhAr48rfGNQQRaHNlGVWj
 oEEdqHELQI1B8p5oY3GK6552ULWGjjzMrUSKRESDRKtEO57NhJQ7ht3iOFIkfLQS0o/Y
 vr3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yWqECs8BcbsWorAVX1TlWGfTakP2SBca2m7vdcbx+6o=;
 b=rEPBjvAr1jXIT9/d23lrEzUKQ2eDdyrBrvWaFIbSeI4i6i+RlZEK7rEbKfUEEBQVzl
 /ROtMXWtvytQmoSOeA92fQj3BGXMusgoQvW98i0oZGGJlbOyy2LuSLrlyuxD2J5x+nGy
 jQ04zYlaCja08edO+39sKmS321aHelnDD7Mpm2YPXzsYll4+ih31Vh8P5kmg0PyRTVZM
 IkSLd+vPWy8vq3s9VikoRyzZThn2RYqMzjIojqYhC3FNkjM7ts/YxHVNPBST+4HVBwU+
 YYtlVQ8o1xS5PaBmdD8VKKkxWdFT7qKO5LETpi+MltKI4aEaBzriysYR8b5a496w+v8o
 qMjw==
X-Gm-Message-State: APjAAAX1XGsLUcY2OYZjmEgiLocIxPCpz8sX4wyCXlDs1xmyWie2s6jW
 Die8I4NHjeHNChXFf3FENMG0qB3etRNrFglOX+w=
X-Google-Smtp-Source: APXvYqzlfbtHQNZpKZWLKRGz5Ohu9pRZkmfyxjOXLveGrf5wohjZw4hdEcuupmqKZwsm8B28I/kzzxG6hE3M4jPa96E=
X-Received: by 2002:a5e:8b03:: with SMTP id g3mr15385688iok.170.1565638828627; 
 Mon, 12 Aug 2019 12:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR04MB496741DA4839DC07450F3E3997150@AM6PR04MB4967.eurprd04.prod.outlook.com>
 <CAFLxGvwZ_85eR5Qkjka4CyDOAP_jw-hpk7WwttbAzjLFS4MavQ@mail.gmail.com>
In-Reply-To: <CAFLxGvwZ_85eR5Qkjka4CyDOAP_jw-hpk7WwttbAzjLFS4MavQ@mail.gmail.com>
From: Han Xu <xhnjupt@gmail.com>
Date: Mon, 12 Aug 2019 14:40:17 -0500
Message-ID: <CA+EcR23V1nP9d6iYysT6vR+n8-BRnU-vursaxvcGB1LdBy+8NQ@mail.gmail.com>
Subject: Re: 5.2.0-rc1 UBIFS bad unlock balance
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_124030_149618_61605451 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xhnjupt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Han Xu <han.xu@nxp.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 3:59 PM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Tue, Jun 4, 2019 at 10:21 PM Han Xu <han.xu@nxp.com> wrote:
> >
> > Hi Richard,
> >
> > Found such issue with lock debugging. Running bonnie++ on QSPI with UBIFS.
> >
> > Erasing 64 Kibyte @ 1ff0000 -- 100 % complete
> > [  129.575631] ubi0: attaching mtd0
> > [  129.620067] ubi0: scanning is finished
> > [  129.623888] ubi0: empty MTD device detected
> > [  129.723031] ubi0: attached mtd0 (name "30bb0000.spi", size 32 MiB)
> > [  129.729289] ubi0: PEB size: 65536 bytes (64 KiB), LEB size: 65408 bytes
> > [  129.735994] ubi0: min./max. I/O unit sizes: 1/256, sub-page size 1
> > [  129.742267] ubi0: VID header offset: 64 (aligned 64), data offset: 128
> > [  129.748915] ubi0: good PEBs: 512, bad PEBs: 0, corrupted PEBs: 0
> > [  129.755026] ubi0: user volume: 0, internal volumes: 1, max. volumes count: 128
> > [  129.762365] ubi0: max/mean erase counter: 0/0, WL threshold: 4096, image sequence number: 445061296
> > [  129.771508] ubi0: available PEBs: 508, total reserved PEBs: 4, PEBs reserved for bad PEB handling: 0
> > [  129.781182] ubi0: background thread "ubi_bgt0d" started, PID 516
> > UBI device number 0, total 512 LEBs (33488896 bytes, 31.9 MiB), available 508 LEBs (33227264 bytes, 31.6 MiB), LEB size 65408 bytes (63.8 KiB)
> > Set volume size to 33227264
> > Volume ID 0, size 508 LEBs (33227264 bytes, 31.6 MiB), LEB size 65408 bytes (63.8 KiB), dynamic, name "test", alignment 1
> > [  132.036227] UBIFS (ubi0:0): default file-system created
> > [  132.046036] UBIFS (ubi0:0): Mounting in unauthenticated mode
> > [  132.052526] UBIFS (ubi0:0): background thread "ubifs_bgt0_0" started, PID 524
> > [  132.095082] UBIFS (ubi0:0): UBIFS: mounted UBI device 0, volume 0, name "test"
> > [  132.102377] UBIFS (ubi0:0): LEB size: 65408 bytes (63 KiB), min./max. I/O unit sizes: 8 bytes/256 bytes
> > [  132.111870] UBIFS (ubi0:0): FS size: 32573184 bytes (31 MiB, 498 LEBs), journal size 1635200 bytes (1 MiB, 25 LEBs)
> > [  132.122423] UBIFS (ubi0:0): reserved for root: 1538511 bytes (1502 KiB)
> > [  132.129123] UBIFS (ubi0:0): media format: w5/r0 (latest is w5/r0), UUID 2866BEC7-B74D-4793-8A66-E113C824711F, small LPT model
> > Using uid:0, gid:0.
> > Writing with putc()...done
> > Writing intelligently...done
> > Rewriting...done
> > Reading with getc()...done
> > Reading intelligently...done
> > start 'em...done...done...done...
> > Create files in sequential order...done.
> > Stat files in sequential order...done.
> > Delete files in sequential order...[  162.282301]
> > [  162.283809] =====================================
> > [  162.288514] WARNING: bad unlock balance detected!
> > [  162.293221] 5.2.0-rc1-next-20190524-45490-g89d8c504132e-dirty #24 Not tainted
> > [  162.300356] -------------------------------------
> > [  162.305061] bonnie++/525 is trying to release lock (&(&c->orphan_lock)->rlock) at:
> > [  162.312643] [<ffff0000104a0774>] ubifs_delete_orphan+0xec/0xfc
> > [  162.318476] but there are no more locks to release!
> > [  162.323353]
> > [  162.323353] other info that might help us debug this:
> > [  162.329881] 2 locks held by bonnie++/525:
> > [  162.333890]  #0: 00000000a21aa66e (sb_writers#10){.+.+}, at: mnt_want_write+0x20/0x4c
> > [  162.341734]  #1: 000000002fe597e5 (&c->commit_sem){++++}, at: make_reservation+0x84/0x3b4
> > [  162.349919]
> > [  162.349919] stack backtrace:
> > [  162.354281] CPU: 1 PID: 525 Comm: bonnie++ Not tainted 5.2.0-rc1-next-20190524-45490-g89d8c504132e-dirty #24
>
> I see the bug, thanks a lot for reporting!
> But it is not in 5.2-rc1, the bad commit is so far only in linux-next.

Ping, any fixing plans?

>
> --
> Thanks,
> //richard
>
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/



-- 
Sincerely,

Han XU

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
