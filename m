Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FB7B93F5
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 17:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDKG9RiAWdbjLcwe6De5gfLWkONI182ufuQoGArvTlg=; b=p0PQWMyHdgL0WH
	JBnEt8DiUhxZ/844PLTqiNqqkHRlIJLvuhzYvMO6Wd5iYJ7BMPgSslRgN6o6yIZUPcdu6yD92QAmE
	d5RGxVcLCNBj8eJehrGaveF1asUlveLCYinaR6Z+OGw0gXg9nlOOp9+apSoAb3FDw6gK6VD8Fa4d1
	/7tDQSZJ+5btrglYiyHSPJqe9e7KN1lJNJMDdalLDNjJHJKXgbBsMLGioxHtahO51xIFzbpPz6hL0
	aZrs4zB1her60KDnx71aBvH+PqxJp5XO6qBXtbeYf71tLmGoAshaAIozL1CaRWJyoC1PP2jhnD5Ax
	KPCUP/jFxAsB9iDE+xVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBKpx-0003en-CI; Fri, 20 Sep 2019 15:28:45 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBKpm-0003XQ-6M
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 15:28:36 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.2 #3 (Red Hat
 Linux)) id 1iBKpY-0000P5-0U; Fri, 20 Sep 2019 15:28:20 +0000
Date: Fri, 20 Sep 2019 16:28:19 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Xiaoming Ni <nixiaoming@huawei.com>
Subject: Re: [PATCH] jffs2:freely allocate memory when parameters are invalid
Message-ID: <20190920152819.GO1131@ZenIV.linux.org.uk>
References: <1568962478-126260-1-git-send-email-nixiaoming@huawei.com>
 <20190920114336.GM1131@ZenIV.linux.org.uk>
 <206f8d57-dad9-26c3-6bf6-1d000f5698d4@huawei.com>
 <20190920124532.GN1131@ZenIV.linux.org.uk>
 <20190920125442.GA20754@ZenIV.linux.org.uk>
 <eb679ad2-4020-951c-e4d1-60cb059a5ca8@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb679ad2-4020-951c-e4d1-60cb059a5ca8@huawei.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_082834_243286_C5AA7C5F 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bbrezillon@kernel.org, richard@nod.at, dilinger@queued.net,
 linux-kernel@vger.kernel.org, daniel.santos@pobox.com,
 linux-mtd@lists.infradead.org, houtao1@huawei.com, dwmw2@infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 10:13:53PM +0800, Xiaoming Ni wrote:
> 1. drivers/mtd/mtdsuper.c
> mount_mtd_aux() {
> ....
> =A0=A0=A0/* jffs2_sb_info is allocated in jffs2_fill_super, */
> =A0=A0=A0 ret =3D fill_super(sb, data, flags & SB_SILENT ? 1 : 0);
> =A0=A0=A0 if (ret < 0) {
> =A0=A0=A0=A0=A0=A0=A0 deactivate_locked_super(sb); /* If the parameter is=
 wrong, release it here*/
> =A0=A0=A0=A0=A0=A0=A0 return ERR_PTR(ret);
> =A0=A0=A0=A0}
> ...
> }
> =

> 2. fs/super.c
> deactivate_locked_super()
> ---> fs->kill_sb(s);
> =

> 3. fs/jffs2/super.c
> =A0jffs2_kill_sb()
> =A0=A0=A0 kfree(c); /*release jffs2_sb_info allocated by jffs2_fill_super=
 here
> =

> Here memory allocation and release,
> experienced the function of mount_mtd_aux/deactivate_locked_super/jffs2_k=
ill_sb three different files,
> the path is relatively long,
> if any of the three functions between the errors,

If any of the three functions _what_?

> it will cause problems (such as memory leaks)
 =

> I still think this is easier to understand:
>  Free the memory allocated by the current function in the failed branch

No.  Again, "failed" branch is going to be practically untested during
any later code changes.  The more you have to do in those, the faster they
rots.  And they _do_ rot - we'd seen that happening again and again.

As a general rule, the fewer cleanups are required on failure exits, the
better off we are.

> static void jffs2_kill_sb(struct super_block *sb)
> {
> =A0=A0=A0 struct jffs2_sb_info *c =3D JFFS2_SB_INFO(sb);
> =A0=A0=A0 if (c && !sb_rdonly(sb))
> 		/* If sb is not read only,
> 		 * then jffs2_stop_garbage_collect_thread() will be executed
> 		 * when the jffs2_fill_super parameter is invalid.
> 		 */
> =A0=A0=A0=A0=A0=A0=A0 jffs2_stop_garbage_collect_thread(c);
> =A0=A0=A0 kill_mtd_super(sb);
> =A0=A0=A0 kfree(c);
> }
> =

> void jffs2_stop_garbage_collect_thread(struct jffs2_sb_info *c)
> {
> =A0=A0=A0 int wait =3D 0;
> 	/* When the jffs2_fill_super parameter is invalid,
> 	 * this lock is not initialized.
> 	 * Is this a code problem ?
> 	 */
> =A0=A0=A0 spin_lock(&c->erase_completion_lock);

Not in practice and gone in mainline this cycle.  But yes, those initializa=
tions
should've been done prior to any failure exits -
"jffs2: free jffs2_sb_info through jffs2_kill_sb()" ought to have moved them
prior to the call of jffs2_parse_options().

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
