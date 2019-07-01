Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAF23D3DF
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Jun 2019 19:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpmzyBJGqaG9murp/BgmqBNOYLxWRCxV6Vy1K8xvmfo=; b=X9k8YWK/J8M2lp
	KIUt6LlgRI1lfc2rtNOpdjS0JDw4+rE94qfDiXenZ4eb5KyxQXUxabtMmCeGurMb+SsZ9m0cy/+Gj
	G38BeaUAbmKRGIodsY0E08vix8ypyBzwg/enXOV+FSCmrmludbjWxI0sUrFlDys53MT9hWzV48Ga4
	kVO3pDKChEjjDumHL6HOiFmcSsgStV4/dw2UMiB5BuIY+pB9IYHIfyYBrRhwBn8QRHEhOeJgNIgkD
	XG6Y9wbR6KX3sDq0A6ik3xmqdB7cJB9IUnAHwUzvYd1Ay5XOEsNKXcqNRwdburFRDeNOhYmzT5AaB
	FmBntUHRRfpKtqajTwaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakSw-0003ZZ-PK; Tue, 11 Jun 2019 17:21:46 +0000
Received: from chamillionaire.breakpoint.cc ([193.142.43.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakSa-0003QZ-Ve
 for linux-mtd@lists.infradead.org; Tue, 11 Jun 2019 17:21:26 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.89)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1hakSU-0007HL-K0; Tue, 11 Jun 2019 19:21:18 +0200
Date: Tue, 11 Jun 2019 19:21:18 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Emil Lenngren <emil.lenngren@gmail.com>
Subject: Re: [PATCH v2] mkfs.ubifs: Add ZSTD compression
Message-ID: <20190611172117.awht3kogioilxnia@flow>
References: <20190601104322.57inoggnek3crg55@flow>
 <CAO1O6sdeY6ZY_PhoZrVuqCg20F0Dt3Y_mXXr-OYUMD4HZMihvg@mail.gmail.com>
 <1380627689.233779.1559939049026.JavaMail.zimbra@sigma-star.at>
 <CAO1O6sc4RfdrDGiJgXYZaDeZ2e46Rr=PFhqFYYWB9Gqd8XH8NQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO1O6sc4RfdrDGiJgXYZaDeZ2e46Rr=PFhqFYYWB9Gqd8XH8NQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_102125_192934_871310DA 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Weinberger <richard@sigma-star.at>, linux-mtd@lists.infradead.org,
 David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 2019-06-10 19:34:53 [+0200], Emil Lenngren wrote:
> Hi all,
Hi,

> After some more investigations, although increasing compression level
> certainly increases compression time, decompression time does not seem
> to be increased by increasing compression level. See
> http://www.open-zfs.org/w/images/b/b3/03-OpenZFS_2017_-_ZStandard_in_ZFS.pdf
> page 9 for a benchmark. The benchmark even shows this seems to apply
> to gz as well...
> 
> SquashFS has also added support for zstd and squashfs-tools uses level
> 15 as the default level (see
> https://git.kernel.org/pub/scm/fs/squashfs/squashfs-tools.git/commit/?id=e38956b92f738518c29734399629e7cdb33072d3
> at the bottom).
> 
> While the kernel compression level should maybe stay at 3, for
> mkfs.ubifs where speed doesn't matter that much, a higher level such
> as 15 might not be bad after all. So I have two different proposals:
> either just set level 15 OR set level 15 and also provide an option
> for mkfs.ubifs to override it if one for some reason wants to generate
> the image faster.
> 
> What do you think?

So the original problem was that ZSTD_CLEVEL_DEFAULT is not defined in
earlier releases of zstd and I would suggest to use `0' as stated here
in this thread.
Larger levels take more time to compress and I don't see the benefit in
doing compared to the size of the compressed image. I included my
numbers in the initial commit.
Also, if you use a larger compression level in mkfs compared to the
kernel then your image will grow if you rewrite existing files.

I've been told that for RO images (where higher compression levels
matter and compression is done once at creation time) the best thing to
do is to use squashfs on top of ubi.

> /Emil

Sebastian

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
