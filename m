Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E9C918E9
	for <lists+linux-mtd@lfdr.de>; Sun, 18 Aug 2019 20:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZQ1s/ZbgkIWD9ydgs16xvo2MCkffloqdAb99cij8Ak=; b=o4rE3srW49zqVO
	ig1O/NVqaZvzUVdTtmNqn7L127CdsjP1TovgohF/0vCi6DH9M4cMdgmBqAEXQnrNcfd8ABaDdmZII
	ryAQdH4w5SxFg8owIPq1GbXijQhMzCwMwTIpHeZqttZS3uCzn6E+izlBpJeW+PuCfbhDsRZ2L38js
	REHVoNoNor3mQTMe+AGYSyWrJuBcTn/e0udHsP1+NUMOX90k3c2jbI+s5N9JX5SzSz9lg8WKFu8G4
	G4t23+KZ/VutfQW3o1gAdwVsSacO++kip1pjM6MtskChiWDFdrUF1Tzh4fPVezXnZxFIN72x84Qnn
	0pFNcWS29Ag5tU8kK0bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzQ1G-0002wW-P5; Sun, 18 Aug 2019 18:35:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzQ0y-0002vJ-N1
 for linux-mtd@lists.infradead.org; Sun, 18 Aug 2019 18:34:54 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D91862184D;
 Sun, 18 Aug 2019 18:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566153288;
 bh=NoAluoc+Uq1qt0jwwoy3iiCN6uLBPDpdA+kJGNLfpEc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gGZ5UHz+VcRsH4bqNPorYZKMdOjs4yjmQumubPysA2fMTlAuE1QxyfIcxRbYwSVeI
 Qb4pWxTOnTUKPIM2ipvQtTNTl0RqCtrF1ds4J+2Oe4TVNBnOCeRoFiFduU+U2Qjj+q
 RM0RP0rlCS881frkAmEiHevGSBTCsQWY54ANTTN4=
Date: Sun, 18 Aug 2019 20:34:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Subject: Re: [PATCH v8 03/20] timestamp_truncate: Replace users of
 timespec64_trunc
Message-ID: <20190818183446.GA2791@kroah.com>
References: <20190818165817.32634-1-deepa.kernel@gmail.com>
 <20190818165817.32634-4-deepa.kernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818165817.32634-4-deepa.kernel@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_113452_772103_EE362C69 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: arnd@arndb.de, dedekind1@gmail.com, y2038@lists.linaro.org, richard@nod.at,
 yuchao0@huawei.com, adrian.hunter@intel.com, linux-kernel@vger.kernel.org,
 tj@kernel.org, linux-mtd@lists.infradead.org, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, jaegeuk@kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-ntfs-dev@lists.sourceforge.net,
 hch@lst.de, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, Aug 18, 2019 at 09:58:00AM -0700, Deepa Dinamani wrote:
> Update the inode timestamp updates to use timestamp_truncate()
> instead of timespec64_trunc().
> 
> The change was mostly generated by the following coccinelle
> script.
> 
> virtual context
> virtual patch
> 
> @r1 depends on patch forall@
> struct inode *inode;
> identifier i_xtime =~ "^i_[acm]time$";
> expression e;
> @@
> 
> inode->i_xtime =
> - timespec64_trunc(
> + timestamp_truncate(
> ...,
> - e);
> + inode);
> 
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> Cc: adrian.hunter@intel.com
> Cc: dedekind1@gmail.com
> Cc: gregkh@linuxfoundation.org
> Cc: hch@lst.de
> Cc: jaegeuk@kernel.org
> Cc: jlbec@evilplan.org
> Cc: richard@nod.at
> Cc: tj@kernel.org
> Cc: yuchao0@huawei.com
> Cc: linux-f2fs-devel@lists.sourceforge.net
> Cc: linux-ntfs-dev@lists.sourceforge.net
> Cc: linux-mtd@lists.infradead.org
> ---
>  fs/attr.c           | 21 ++++++++++++---------
>  fs/configfs/inode.c | 12 ++++++------
>  fs/f2fs/file.c      | 21 ++++++++++++---------
>  fs/kernfs/inode.c   |  7 +++----
>  fs/ntfs/inode.c     | 21 ++++++++++++---------
>  fs/ubifs/file.c     | 21 ++++++++++++---------
>  6 files changed, 57 insertions(+), 46 deletions(-)

For kernfs:
	Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
