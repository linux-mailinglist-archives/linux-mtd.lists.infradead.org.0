Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BECADC9CF6
	for <lists+linux-mtd@lfdr.de>; Thu,  3 Oct 2019 13:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZwgaqNzWZHfFk/OaZyriuQzek+TaIrc6vHnMob2/9jU=; b=aWLHfM07j4qsFg
	scp21LByR9M/Lu7h/+GNFiuPZmAYkNQXnHPN3YNWR92eBycT9gdthzmoKq3Mg1a1FJJCc4b90FHih
	0a110bJBubBev6S/zJv7oOU2Kz4ATv/q3zscqmdZwlojDyik6UZSlY9uJftGrCppSCwJ0h5CBusyl
	q67Ga3OJV2qwRJgWFFPTopzE1zH7Ob5YIJ9L2h8XI9PW5iazLXBhM3DYjfwyGcq7fI3iu+L1JYG1g
	+nHk+yX2ocr6YxotnA4RVoTbUF1r886OS9CPPIVkebgOCheF381FiCY4gk1eqkfqcv/NvJmtNnbjZ
	Y5g0whNk+4EI0b5B4+Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFz42-00007X-5s; Thu, 03 Oct 2019 11:14:30 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFz3u-000072-SJ
 for linux-mtd@lists.infradead.org; Thu, 03 Oct 2019 11:14:24 +0000
Received: by mail-io1-xd2a.google.com with SMTP id v2so4476705iob.10
 for <linux-mtd@lists.infradead.org>; Thu, 03 Oct 2019 04:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=5GX89ICN4Q34LyObAKsykG2qlDX85SmdSZtT5PrmLy0=;
 b=IYBcbUJ+K16b7AlJxGJphda1Wa3Up00x6jGHEdS2ViARilp79E+c0PkiYo/gL/miiL
 w7wVaoKbwT8AKGGscp0mjC076mTn8KnkcAjmTunhAX+zihoqWADwqkMc5cXpHge9tfx1
 rT4p44oi+GV4cSmK7Fu+Px+0r1TjByXy2ZpIepNz3qwKLlryHUxc+sfaPj23CQQaXHlI
 KBvySn3fWHqmcr5/sgegjDBICillxZfd4i9rgl+/hPBi+LekXoD/ePoy8+PHqn8WrbNQ
 EUSlnGU8jFXPr4nvtEo01LEWS69MoLvPOPXK9KeMec0P/QA/sJ1Mqh4K8mBJzNs86XlP
 1doQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=5GX89ICN4Q34LyObAKsykG2qlDX85SmdSZtT5PrmLy0=;
 b=q2hxXJwyrRR1nIfDAeSf5HiwYPJoPcTEtcVTYJNuYdlu3zpsMXPRkRN4aK6LjhjU3k
 RlauoVM8mmC9M5khbZaVf5dAfwlpD6Ko/Wt3j+7bEQ0qHxiPlh4V0AKf3sMfkwo7bS7V
 JArTQ8kpadJP4CVQr4f+dn2W9ZLyCESDoMyqtwXpITwNfcE0EprBWdK4IO2LJOXCThC9
 Tj5/0nlq+rOZR13D7I6v/d8mHOHUPoFkF3kEvSafUwWOmqqZkwZedg5sCS/CLc/d9gvb
 pwn3EWGbdpaSEGgHsUKGhF7fltGhSrIg3TwIvsd3GdTwsBlKwZoUgq/RFV9US4dZVf0a
 iLTg==
X-Gm-Message-State: APjAAAU9ZsUXmeldco53lEr74lKdKnnVwjpApSlsP9dmIHqg6EnH2aF1
 wftZc3e6D7bhWFQQ3DJoH4i2UFgHukoq5IlFmz2cI0WV
X-Google-Smtp-Source: APXvYqxRzDsS2C4f+9MjJp3Bpdw1cFlkYvCcUhlSLQptkbLRGOsiV8e5f2lWWtafpcrD7/I/PLYD2+bIXBoblGp9+1k=
X-Received: by 2002:a6b:740c:: with SMTP id s12mr7782288iog.301.1570101261121; 
 Thu, 03 Oct 2019 04:14:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP;
 Thu, 3 Oct 2019 04:14:20 -0700 (PDT)
In-Reply-To: <CAFLxGvxg3dYoiiTy7=vNwC75s529akqx0DO3ozLrP_TbhATr_g@mail.gmail.com>
References: <CAA=hcWSR52BJB4+k2k4CwLTQUVmvJvR=bjRx6kqe2aar-PH21w@mail.gmail.com>
 <CAFLxGvxg3dYoiiTy7=vNwC75s529akqx0DO3ozLrP_TbhATr_g@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 3 Oct 2019 21:14:20 +1000
Message-ID: <CAA=hcWTzAMU5GvGzcG2Ha5RH_=QUTEAa3gZkMoe=cgtZGG+h+Q@mail.gmail.com>
Subject: Re: How the bad blocks occured in despite MTD manages the bad blocks
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_041422_935222_F44C88F2 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Thanks Richard and Steve.

On 10/3/19, Richard Weinberger <richard.weinberger@gmail.com> wrote:
>> My understinding is that MTD manages the NAND bad blocks, but can the
>> MTD prevent bad blocks happening?
>
> It does not. UBI does by applying wear-leveling.

I should mention it is the rootfs using ubifs, the kernel is 5.1.

>> My iMX6 NAND device was only up and running about a month, it now
>> failed to boot from NAND due to the bad blocks:
>
> Why do you think so?

I was told by hardware engineer, it was broken by bad block problem.

>> (a) what could be common cause to trigger bad blacks?
>
> Mostly due to block aging.

>> (b) if I reflush the NAND will the bad blacks recovered or just mapped
>> it to bad block list?
>
> A bad block will be bad forever.
>
>> .......
>> Bad block table found at page 131008, version 0x01
>> Bad block table found at page 130944, version 0x01
>
> Having a bad block table is nothing bad.

So that was not the cause to break the boot.

>> ................
>> [FAILED] Failed to mount Kernel Debug File System.
>> [FAILED] Failed to mount Temporary Directory (/tmp).
>> [FAILED] Failed to start Remount Root and Kernel File Systems.
>> [FAILED] Failed to mount /var/volatile.
>> [FAILED] Failed to mount FUSE Control File System.
>
> This lines are useless. Why exactly is it failing? And *what* fails?

After those lines, the boot stopped in an emergent mode in a prompt to
suggest to log in by Ctl-D, but that could not work, I was not able to
log into the file system, nor can I get kernel log. From your
experience, what could be likely the causes, hardware or software?

Thanks Steve and Richard.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
