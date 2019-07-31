Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 914BC7B686
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 02:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8m/37VNNcDSjQMhh2CYO0Msi5+Z4sw1XjnEKk6NspIc=; b=AzJRVXbqA4pYUz
	tpdpmhppKDsdhy/UCAGyso7qWWBP7H/Wf6Ch9Sw1rnOQT+4Gcy/Kgfn8GthpeU0FcfGplJcy+rbQ+
	oDSjwaljOLgkiS70GghGslZRW+JobV3NYDqEGp0IJVoIqlVhb/xwN+BIavaVn1jRtTqM372FVZHf8
	1zN4NN3Xv3n3LWsNRZxG8/wpPYvHwhbBCdFfoAXiNQwMNcMC1Mo4Fq9BQ14Vkzc9nq30DsALnBjv+
	w7ClsIePMrKWYZTotz412dIxHUwOvcQNYay1htPb60KG/iOOJgMeyMc3MbtrcX2AUsFYyjJ74AC4B
	8sdyeDC/6d8O3YtVAy2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hscAt-0001hx-Nh; Wed, 31 Jul 2019 00:08:59 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hscAd-0001Zk-8f
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 00:08:44 +0000
Received: by mail-io1-xd42.google.com with SMTP id j6so12522034ioa.5
 for <linux-mtd@lists.infradead.org>; Tue, 30 Jul 2019 17:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8JheWTgIzFxYJeqUL2EvPnkBwvWfIxP2sSvvMHXbZc4=;
 b=hWYJ5Hswuxo5q6pljdWc5Msm3VQGPE+o0HSCQmzoXmEPpO4Z+T78LSXBhG2RqlKjA5
 uuHQ1vElZ+CI1PYhfIjSjVmxF+yXKi/O93nZMTrtRa0m21fyg2+JGse6k3wFoGXup9lP
 bNxdr5XyabSWOxZ8nS3tsaecozIcnxczcu71Ko1/opKV8LhMDy/bdSgSXTlDA6nVnGe/
 WJDgjLIInCFxEFkHKUpjj3ok4lp9ISYt3dlugX7qNuFCQQ4EvmiL+mkFCY/ZEY+MfL+y
 CacADCQ3DvEVeKzsAjzKyhLQ216WFCimRRRaOv5irGoCAMZUXg8xpKt9CYWu6jV/L5OK
 Iadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8JheWTgIzFxYJeqUL2EvPnkBwvWfIxP2sSvvMHXbZc4=;
 b=rldJsKiQwk2QulMnRqv71NvkQUGlwqE7CSnTipch1IxfeDxoKL6tonTcxfCKXVzaAX
 cBcmvtCcfbSErvPj2C1twsfTN6oxPfT8bEiVjR7V3ghq42GS/7uXDBvlePj5IK4N1Hru
 utoawwjU4RQzEuNubqiBNyJvKC1JVxaFADVImS+Y1Hc0ztSYeTtVTlL1omCttvSlgwpk
 JIAnc0zcBP8/Fm5ISohqwiHEPISCXySxri2853HUqvPVPG5H20B7Er6zDi10fFAMaOx1
 kV2wrG2wFxVPg9oPkonJ9e5SZuc39OhRxWtCggJwjadmkCKP1qcpQ/Kh74IQYuBC+zFn
 2cfg==
X-Gm-Message-State: APjAAAUJ9FZ190M32NflixNuz+HxiwI7j6+i45yJZVJW6Hh6o0n/oVcx
 5FYCvsu1lLsisQwdG0ayc7JlpENCeKiiVdN/5R4=
X-Google-Smtp-Source: APXvYqw7z/G000E74naYRSALQNnmNRrw0cRjYs2C5wAzrF9FiInot9iHNesX21g3d95n0NHpLL9UMtgt3fxiJGInFeE=
X-Received: by 2002:a6b:f406:: with SMTP id i6mr38634089iog.110.1564531722141; 
 Tue, 30 Jul 2019 17:08:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190730014924.2193-1-deepa.kernel@gmail.com>
 <20190730014924.2193-4-deepa.kernel@gmail.com>
 <87d0hsapwr.fsf@mail.parknet.co.jp>
 <CABeXuvqgaxDSR8N_D1Tdw06g_5PGinZS--6nx-bPtAWP4v+mwg@mail.gmail.com>
 <5340224D-5625-48A6-909E-70B24D2084BC@tuxera.com>
In-Reply-To: <5340224D-5625-48A6-909E-70B24D2084BC@tuxera.com>
From: Deepa Dinamani <deepa.kernel@gmail.com>
Date: Tue, 30 Jul 2019 17:08:30 -0700
Message-ID: <CABeXuvq_9YTTGZwmxO1WuEivuttDesNHKxeSQL5SsvkBSR884Q@mail.gmail.com>
Subject: Re: [PATCH 03/20] timestamp_truncate: Replace users of
 timespec64_trunc
To: Anton Altaparmakov <anton@tuxera.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_170843_315519_4486F484 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deepa.kernel[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Artem Bityutskiy <dedekind1@gmail.com>,
 y2038 Mailman List <y2038@lists.linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 "yuchao0@huawei.com" <yuchao0@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Tejun Heo <tj@kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Richard Weinberger <richard@nod.at>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, "Linux F2FS DEV,
 Mailing List" <linux-f2fs-devel@lists.sourceforge.net>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 stoph Hellwig <hch@lst.de>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 3:28 PM Anton Altaparmakov <anton@tuxera.com> wrote:
>
> Hi Deepa,
>
> > On 30 Jul 2019, at 18:26, Deepa Dinamani <deepa.kernel@gmail.com> wrote:
> >
> > On Tue, Jul 30, 2019 at 1:27 AM OGAWA Hirofumi
> > <hirofumi@mail.parknet.co.jp> wrote:
> >>
> >> Deepa Dinamani <deepa.kernel@gmail.com> writes:
> >>
> >>> diff --git a/fs/fat/misc.c b/fs/fat/misc.c
> >>> index 1e08bd54c5fb..53bb7c6bf993 100644
> >>> --- a/fs/fat/misc.c
> >>> +++ b/fs/fat/misc.c
> >>> @@ -307,8 +307,9 @@ int fat_truncate_time(struct inode *inode, struct timespec64 *now, int flags)
> >>>              inode->i_atime = (struct timespec64){ seconds, 0 };
> >>>      }
> >>>      if (flags & S_CTIME) {
> >>> -             if (sbi->options.isvfat)
> >>> -                     inode->i_ctime = timespec64_trunc(*now, 10000000);
> >>> +             if (sbi->options.isvfat) {
> >>> +                     inode->i_ctime = timestamp_truncate(*now, inode);
> >>> +             }
> >>>              else
> >>>                      inode->i_ctime = fat_timespec64_trunc_2secs(*now);
> >>>      }
> >>
> >> Looks like broken. It changed to sb->s_time_gran from 10000000, and
> >> changed coding style.
> >
> > This is using a new api: timestamp_truncate(). granularity is gotten
> > by inode->sb->s_time_gran. See Patch [2/20]:
> > https://lkml.org/lkml/2019/7/29/1853
> >
> > So this is not broken if fat is filling in the right granularity in the sb.
>
> It is broken for FAT because FAT has different granularities for different timestamps so it cannot put the correct value in the sb as that only allows one granularity.  Your patch is totally broken for fat as it would be immediately obvious if you spent a few minutes looking at the code...

It seemed to me that FAT had already covered the special cases (2s and
1d) granularities by using internal functions. This one could also be
an inlined calculation, but I will just drop the FAT part from this
patch and leave it as is for now.

Thanks,
Deepa

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
