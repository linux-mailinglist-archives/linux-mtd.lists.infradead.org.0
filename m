Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F214837BE2
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Jun 2019 20:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUnJyY85StDmxVkkoX/7bTip7hsgsxhN1KK56RXLU2o=; b=t4cRGwufvyMDIA
	3PsN6PDHp2nUmTkjFDuogE1kDQO3VhilbFeVeykG9T9uMMYmaFIxT+KfAUhcA9UGR/b1P3u1gN1wp
	xHdh88Pi49pHwLHqTVnTI7FZpiYdEzFoqvsUME4uN8hSXJUp6rnJTNQH3JYMdt6Lf65ciD+IkSHak
	1az6gDstXFeoPsHvox4iRhz24rlnlmKwBus2QrmzX/0CiHNhOe4tDjCdlNfMvc3k/rkI8ycCqAG8t
	tWhduLXlT5scj4bIpRyknCVAesd4hW1+uMNVoEiJ8eOzHUFreyEqMxev1tktTqiyMwYGsIN9V6Sor
	fvcW0c+D9CgO3aZBMNow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwoP-00007B-R5; Thu, 06 Jun 2019 18:08:29 +0000
Received: from host2.emcraft.com ([138.197.218.152])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwo6-00006s-KF
 for linux-mtd@lists.infradead.org; Thu, 06 Jun 2019 18:08:12 +0000
Received: from sergmir.emcraft.com (unknown [176.110.122.116])
 by host2.emcraft.com (Postfix) with ESMTPSA id B1F9340044E;
 Thu,  6 Jun 2019 11:08:06 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 host2.emcraft.com B1F9340044E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emcraft.com;
 s=default; t=1559844487;
 bh=L62vFtJZORBPvVhOnVGyBVi77f+PR/oAhsxao2Fx0oI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G/L+7de7O12c4ly+mYHGMuzUczma3V8fRhwFbETig0mRBKAyXwZkC8AM1VBIuN8mP
 l2d0HEufNEvxuDX4EJNWCvuwtkqGf0IK628dcgcF/7KGpi/i4N7nz9/S3jZLt3r46d
 TZGRgQsVcf0ajqBV8wRIYQPEnBk0AiC20yNZaFk8=
Date: Thu, 6 Jun 2019 21:08:03 +0300
From: Sergei Poselenov <sposelenov@emcraft.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: UBIFS: file data corruption during the power cut-off test
Message-ID: <20190606210803.481cbc5d@sergmir.emcraft.com>
In-Reply-To: <CAFLxGvx4iqpU8pq8CPwah9M+Qa2YkpXEiSmndeVy2mLadNQn_g@mail.gmail.com>
References: <20190606121037.40a1cc5e@sergmir.emcraft.com>
 <CAFLxGvx4iqpU8pq8CPwah9M+Qa2YkpXEiSmndeVy2mLadNQn_g@mail.gmail.com>
Organization: Emcraft Systems
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-3.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=disabled
 version=3.4.1
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on host2.emcraft.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_110811_047485_ACBA6D7B 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hello Richard,


On Thu, 6 Jun 2019 16:55:27 +0200 Richard Weinberger <richard.weinberger@gmail.com> wrote:

> On Thu, Jun 6, 2019 at 11:10 AM Sergei Poselenov <sposelenov@emcraft.com> wrote:
> >
> > Hello,
> >
> > We have an embedded system based on i.MX 6ULL, with the root filesystem deployed on a UBI volume built on top of the SLC NAND device. The volume is mounted as "rw,sync,relatime".
> >
> > We are doing the following test:
> >
> >    - Copy the same file (/bin/busybox) to a different file names, in a sequence.
> >
> >    - Power is cut off during the copy sequence.
> >
> >    - After reboot, UBI mounts OK, and we see a number of valid copies of /bin/busybox (md5sum matches), and the last file with the short length (partially written), as expected.
> >
> > The question is: should we expect the last partially-written file to have the valid data of the original? We observe that quite often, the last 512 or so bytes in the short file doesn't match the original.  
> 
> Hm, I don't fully understand your question.
> If you copy files and this is interrupted, the copy is not complete
> and therefore contents are missing.
> 

This is understood. However, on the file length that is written to the partition, I'd expect that the file content will be the same as in the original file. This is not so.
Is it expected, or is it a deficiency of UBI?

Thanks!

Regards,
Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
