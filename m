Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8ECF1399
	for <lists+linux-mtd@lfdr.de>; Wed,  6 Nov 2019 11:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpWVhhUmMvmIt4cXXjSR0vbPRumRDqMobT26rEGLv8g=; b=f5IGnArHaUsvbI
	5zglpiGdHzcyjLsm7OSxLu3T9+UclVfAY9buN9XgzPM5NwQvljVxyV3X93iNNa8jatWUFVU7V7a5v
	fVkqK3YGpx7A/1LsRNebf+d3Qa2yh286WFSSkAzxDW4+1VMNKXstiONn0V/DBF/FuiV0zjcwlKI69
	2XmoJYjbx2b4IqrVzhPXVwyDTo1vbOXz5ynmj3vJrIv9rGl2esk6KGXf/9xOpNFM1Jw0IxZrOqOBF
	HTxpP4piivradZ8odbYFePXp1l4PRzMDx1Q66zHs9CHSabY0/8eiIlDFzDbyO798WCYPTemanxTBE
	we0O0gqejPFX6aorPoIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIKn-0004ZA-OY; Wed, 06 Nov 2019 10:14:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIKc-0004YJ-Jd
 for linux-mtd@lists.infradead.org; Wed, 06 Nov 2019 10:14:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 40A73AC8B;
 Wed,  6 Nov 2019 10:14:29 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id 7D9481E47E5; Wed,  6 Nov 2019 11:14:28 +0100 (CET)
Date: Wed, 6 Nov 2019 11:14:28 +0100
From: Jan Kara <jack@suse.cz>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 7/7] ubifs: Add quota support
Message-ID: <20191106101428.GD16085@quack2.suse.cz>
References: <20191106091537.32480-1-s.hauer@pengutronix.de>
 <20191106091537.32480-8-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106091537.32480-8-s.hauer@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_021430_787347_84093084 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dongsheng Yang <yangds.fnst@cn.fujitsu.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 kernel@pengutronix.de, Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed 06-11-19 10:15:37, Sascha Hauer wrote:
> This introduces poor man's quota support for UBIFS. Unlike other
> implementations we never store anything on the flash. This has two
> big advantages:
> 
> - No possible regressions with a changed on-disk format
> - no quota files can get out of sync.
> 
> There are downsides as well:
> 
> - During mount the whole index must be scanned which takes some time
> - The quota limits must be set manually each time a filesystem is mounted.
> 
> UBIFS is targetted for embedded systems and quota limits are likely not
> changed interactively, so having to restore the quota limits with a
> script shouldn't be a big deal. The mount time penalty is a price we
> must pay, but for that we get a simple and straight forward
> implementation for this rather rarely used feature.
> 
> The quota data itself is stored in a red-black tree in memory. It is
> implemented as a quota format. When enabled with the "quota" mount
> option all three quota types (user, group, project) are enabled.
> 
> The quota integration into UBIFS is taken from a series posted earlier
> by Dongsheng Yang. Like the earlier series we only account regular files
> for quota. All others are counted in the number of files, but do not
> require any quota space.
> 
> Signed-off-by: Dongsheng Yang <yangds.fnst@cn.fujitsu.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Two small comments from a quick look:

> +/**
> + * ubifs_dqblk_find_next - find the next qid
> + * @c: UBIFS file-system description object
> + * @qid: The qid to look for
> + *
> + * Find the next dqblk entry with a qid that is bigger or equally big than the
> + * given qid. Returns the next dqblk entry if found or NULL if no dqblk exists
> + * with a qid that is at least equally big.
> + */
> +static struct ubifs_dqblk *ubifs_dqblk_find_next(struct ubifs_info *c,
> +						 struct kqid qid)
> +{
> +	struct rb_node *node = c->dqblk_tree[qid.type].rb_node;
> +	struct ubifs_dqblk *next = NULL;
> +
> +	while (node) {
> +		struct ubifs_dqblk *ud = rb_entry(node, struct ubifs_dqblk, rb);
> +
> +		if (qid_eq(qid, ud->kqid))
> +			return ud;
> +
> +		if (qid_lt(qid, ud->kqid)) {
> +			if (!next || qid_lt(ud->kqid, next->kqid))
> +				next = ud;
> +
> +			node = node->rb_left;
> +		} else {
> +			node = node->rb_right;
> +		}
> +	}
> +
> +	return next;
> +}

Why not use rb_next() here? It should do what you need, shouldn't it?


> @@ -435,6 +438,9 @@ static int ubifs_show_options(struct seq_file *s, struct dentry *root)
>  	else if (c->mount_opts.chk_data_crc == 1)
>  		seq_puts(s, ",no_chk_data_crc");
>  
> +	if (c->quota_enable)
> +		seq_puts(s, ",quota");
> +

I'd expect here to see 'usrquota', 'grpquota', 'prjquota' etc. to match
mount options user has used.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
