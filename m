Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B185217CBB6
	for <lists+linux-mtd@lfdr.de>; Sat,  7 Mar 2020 04:51:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31Z0woKaI8qd76tCzILUrykE3oYEP6OJlCCgAGgLCKo=; b=CdE0wVlhtrAqVc
	8ia4BQBdO09mf/AIAJlIsjdZ4hn4zm2wLHb5vpR0AUb3Efv1OB6dGPcxqPnLfX1H4cozA6ytTZhmJ
	HhIzIeSjpNgcBCf15DaLtPhNWmGYo8jNLVdmrz7PWk6JD7lfmVo0EV+VHh1+pGxN6oM10qkan9kmr
	+NaVMz0RTXidzlIUEiP0knJVXLf2iyaxkSz5XxcV+g9ed4g9Zn59N7Eku+e94Bc9FBVEJN/x8VbYq
	KOYhNqokmHjf+YHXaWutWiOhgz86qZkk2x4H64ibnvkQMYCt30J9yC7FTHgg5Xzjbu6D5kNPwIsSH
	jwW6/kBboBdbYf4US2Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAQUj-0000S2-3P; Sat, 07 Mar 2020 03:51:21 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAQUX-0007cL-Ng
 for linux-mtd@lists.infradead.org; Sat, 07 Mar 2020 03:51:11 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jAQSI-006ea4-7q; Sat, 07 Mar 2020 03:48:50 +0000
Date: Sat, 7 Mar 2020 03:48:50 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Daniel Rosenberg <drosen@google.com>
Subject: Re: [PATCH v8 2/8] fs: Add standard casefolding support
Message-ID: <20200307034850.GH23230@ZenIV.linux.org.uk>
References: <20200307023611.204708-1-drosen@google.com>
 <20200307023611.204708-3-drosen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200307023611.204708-3-drosen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_195109_772183_523AE92A 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-team@android.com, Theodore Ts'o <tytso@mit.edu>,
 Jonathan Corbet <corbet@lwn.net>, Richard Weinberger <richard@nod.at>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Chao Yu <chao@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, Eric Biggers <ebiggers@kernel.org>,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 06:36:05PM -0800, Daniel Rosenberg wrote:

> +/**
> + * generic_ci_d_hash - generic implementation of d_hash for casefolding
> + * @dentry: Entry whose name we are hashing
> + * @len: length of str
> + * @qstr: name of the dentry, safely paired with len
> + * @str: qstr to set hash of
> + *
> + * This performs a case insensitive hash of the given str.
> + * If casefolding is not required, it leaves the hash unchanged.
> + */
> +int generic_ci_d_hash(const struct dentry *dentry, struct qstr *str)
> +{
> +	const struct inode *inode = READ_ONCE(dentry->d_inode);
> +	struct super_block *sb = dentry->d_sb;
> +	const struct unicode_map *um = sb->s_encoding;
> +	char small_name[DNAME_INLINE_LEN];
> +	struct qstr entry = QSTR_INIT(str->name, str->len);
> +	int ret = 0;
> +
> +	if (!inode || !needs_casefold(inode))
> +		return 0;
> +
> +	if (make_name_stable(um, dentry, &entry, small_name))
> +		goto err;
> +	ret = utf8_casefold_hash(um, dentry, &entry);
> +	if (ret < 0)
> +		goto err;
> +
> +	return 0;
> +err:
> +	if (sb_has_enc_strict_mode(sb))
> +		ret = -EINVAL;
> +	else
> +		ret = 0;
> +	return ret;
> +}

	Have you even tested that?  Could you tell me where does the calculated
hash go?  And just what is it doing trying to check if the name we are about to
look up in directory specified by 'dentry' might be pointing to dentry->d_iname?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
