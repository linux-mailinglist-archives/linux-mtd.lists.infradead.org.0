Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20F695D84
	for <lists+linux-mtd@lfdr.de>; Tue, 20 Aug 2019 13:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwGnWLbfeeHrLoaN6WVaKv9ES8WRJfDnSCwVMQ0IGEk=; b=B/kIbl9U6VWzo+
	Ud7GFNnj699p1EE41jW3zQltWgFF3f0XvBUZnacKBxOyzEnyS7dfzhpnkj3XDZ96W3XlqE87X5FSZ
	011g4BGDy6w/jxO+9/Oms8tPcQkDpKAiyXqdAqVwBRIp015ZhxTbiaN2zu2rJ8ICbvNuqJ0E1YxiX
	IG222iUkrSS1IIGD7PwGNDZPvUNJvPo2r9ZQMZXumexeCoXvx515m0ZTX0qnI7rx5xzuoDcvj45X0
	HzFJ7cYqWWn6C+0+jrD6qGeAjYAq2sW//hNUer60CkIj+ubD7xHAbBemvHPNzi/vIRkZYKWC7TUkp
	bmHvi/Iv4ITsclOani3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02Qx-0006ic-Q7; Tue, 20 Aug 2019 11:36:16 +0000
Received: from joe.alarsen.net ([2a01:4f8:191:10e8:1::fe]
 helo=mail.alarsen.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02QA-00062D-Bs
 for linux-mtd@lists.infradead.org; Tue, 20 Aug 2019 11:35:28 +0000
Received: from oscar.alarsen.net (unknown
 [IPv6:2001:470:1f0b:246:3924:9405:bfa9:9e67])
 by joe.alarsen.net (Postfix) with ESMTPS id E9D242B80E32;
 Tue, 20 Aug 2019 13:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alarsen.net; s=joe;
 t=1566300504; bh=mDk8OlCGIB6EhD5weVd+fJ6RnWW2vsYjn5UPSJ49uVE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SEh2P2AZ2TnUVaY61ToGPfeBiJ9MSzdTp97WuG6X/ffbN9fYq6MysDpCQT3EX4Yf0
 xicb80NRjLi5IbI5SarXz2OYSswAH8TKM+qJCIeP+idML96WA5znjZZVoEOG5kB8O2
 qXeM0uhYorlnqqauep/RqWer5HjmA4IP1WCerrMs=
Received: from oscar.localnet (localhost [IPv6:::1])
 by oscar.alarsen.net (Postfix) with ESMTP id 4117F27C0945;
 Tue, 20 Aug 2019 13:28:23 +0200 (CEST)
From: Anders Larsen <al@alarsen.net>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Subject: Re: [PATCH v8 06/20] fs: Fill in max and min timestamps in superblock
Date: Tue, 20 Aug 2019 13:28:23 +0200
Message-ID: <10056508.664JITJLOY@alarsen.net>
In-Reply-To: <20190818165817.32634-7-deepa.kernel@gmail.com>
References: <20190818165817.32634-1-deepa.kernel@gmail.com>
 <20190818165817.32634-7-deepa.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043527_022038_994F3509 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, darrick.wong@oracle.com, y2038@lists.linaro.org,
 richard@nod.at, codalist@coda.cs.cmu.edu, hch@infradead.org, coda@cs.cmu.edu,
 linux-ext4@vger.kernel.org, salah.triki@gmail.com, dushistov@mail.ru,
 arnd@arndb.de, reiserfs-devel@vger.kernel.org, viro@zeniv.linux.org.uk,
 aivazian.tigran@gmail.com, jaharkes@cs.cmu.edu, luisbg@kernel.org,
 nico@fluxnic.net, linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 jack@suse.com, linux-fsdevel@vger.kernel.org, phillip@squashfs.org.uk,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sunday, 2019-08-18 18:58 Deepa Dinamani wrote:
> Fill in the appropriate limits to avoid inconsistencies
> in the vfs cached inode times when timestamps are
> outside the permitted range.
> 
> Even though some filesystems are read-only, fill in the
> timestamps to reflect the on-disk representation.
> 
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> Reviewed-by: Darrick J. Wong <darrick.wong@oracle.com>
> Cc: aivazian.tigran@gmail.com
> Cc: al@alarsen.net
> Cc: coda@cs.cmu.edu
> Cc: darrick.wong@oracle.com
> Cc: dushistov@mail.ru
> Cc: dwmw2@infradead.org
> Cc: hch@infradead.org
> Cc: jack@suse.com
> Cc: jaharkes@cs.cmu.edu
> Cc: luisbg@kernel.org
> Cc: nico@fluxnic.net
> Cc: phillip@squashfs.org.uk
> Cc: richard@nod.at
> Cc: salah.triki@gmail.com
> Cc: shaggy@kernel.org
> Cc: linux-xfs@vger.kernel.org
> Cc: codalist@coda.cs.cmu.edu
> Cc: linux-ext4@vger.kernel.org
> Cc: linux-mtd@lists.infradead.org
> Cc: jfs-discussion@lists.sourceforge.net
> Cc: reiserfs-devel@vger.kernel.org
> ---
>  fs/befs/linuxvfs.c       | 2 ++
>  fs/bfs/inode.c           | 2 ++
>  fs/coda/inode.c          | 3 +++
>  fs/cramfs/inode.c        | 2 ++
>  fs/efs/super.c           | 2 ++
>  fs/ext2/super.c          | 2 ++
>  fs/freevxfs/vxfs_super.c | 2 ++
>  fs/jffs2/fs.c            | 3 +++
>  fs/jfs/super.c           | 2 ++
>  fs/minix/inode.c         | 2 ++
>  fs/qnx4/inode.c          | 2 ++

wrt qnx4, feel free to add
Acked-by: Anders Larsen <al@alarsen.net>




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
