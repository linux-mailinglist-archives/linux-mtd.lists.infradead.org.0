Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34C715A10D
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Feb 2020 07:07:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWNYK7rngjT1bCwu0LSXo6rXe1GFvLkTlK5NeKFbh3o=; b=QVIfo3Mwdu+Xhp
	E8+KWG8AqWdeZG1GS7PTgZum/9yLv0Ch1o34v20ric9KM15q7W3S98yNqdTDLBRFf6miRuLCCRCrT
	Q5Hpxc2enCYGQkpSWE1eRjTJijRmT1ynnVPBA93uHma2AXCEHoyxzDI7NA1kQZxfAGTFKs3Um3VHs
	ZILuZ5+lnRllfz2UZW/oGub4aKUWX6InZGWUeFKzh0dQuEMz2fODCsLeeI+Q6GYHCwtUok0uR648z
	xZ2ZJ2EUaFBRuNMQD5vyX1yH+S68qNwi6niDZJnJ/Mvt2c2kt0QQDRIU74torqMtpUSaJ//5OSIiu
	261iJTp52LVEJ/tN1kgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1lAm-0007qn-Dl; Wed, 12 Feb 2020 06:06:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1lAa-0007qR-Uk
 for linux-mtd@lists.infradead.org; Wed, 12 Feb 2020 06:06:46 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20AE2206ED;
 Wed, 12 Feb 2020 06:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581487604;
 bh=l14Pn3KEL9YjzF1tPgOKaV7EFnEulcGerPufvbmsbT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j5hgBd1bdd/1YHYNsBxsxgHhUKtp/yLRqow31sWL4QpSNfOvdiTIIPgVDMyiAGJqg
 XUT1ZKQCNzV6zDB/nYfmYOsQBd6GPJPIW692CSRtURC/qPWn7rFN0+Tggepd4CFCDC
 toZnWhAiEsjvVOMYcB1lfDxfzgO1q24ahIVd4gpI=
Date: Tue, 11 Feb 2020 22:06:42 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v7 6/8] f2fs: Handle casefolding with Encryption
Message-ID: <20200212060642.GJ870@sol.localdomain>
References: <20200208013552.241832-1-drosen@google.com>
 <20200208013552.241832-7-drosen@google.com>
 <20200212051013.GG870@sol.localdomain>
 <20200212055511.GL23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212055511.GL23230@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_220645_013636_CEC33C04 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-team@android.com, Theodore Ts'o <tytso@mit.edu>,
 Daniel Rosenberg <drosen@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chao Yu <chao@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 05:55:11AM +0000, Al Viro wrote:
> On Tue, Feb 11, 2020 at 09:10:13PM -0800, Eric Biggers wrote:
> 
> > How about:
> > 
> > int f2fs_ci_compare(const struct inode *parent, const struct qstr *name,
> > 		    u8 *de_name, size_t de_name_len, bool quick)
> > {
> > 	const struct super_block *sb = parent->i_sb;
> > 	const struct unicode_map *um = sb->s_encoding;
> > 	struct fscrypt_str decrypted_name = FSTR_INIT(NULL, de_name_len);
> > 	struct qstr entry = QSTR_INIT(de_name, de_name_len);
> > 	int ret;
> > 
> > 	if (IS_ENCRYPTED(parent)) {
> 
> oops.  parent->d_inode is unstable here; could have become NULL by that
> point.
> 
> > 	if (quick)
> > 		ret = utf8_strncasecmp_folded(um, name, &entry);
> > 	else
> > 		ret = utf8_strncasecmp(um, name, &entry);
> > 	if (ret < 0) {
> > 		/* Handle invalid character sequence as either an error
> > 		 * or as an opaque byte sequence.
> > 		 */
> 
> Really?  How would the callers possibly tell mismatch from an
> error?  And if they could, would would they *do* with that
> error, seeing that it might be an effect of a race with
> rename()?
> 
> Again, ->d_compare() is NOT given a stable name.  Or *parent.  Or
> (parent->d_inode).

After the patch earlier in the series that created generic_ci_d_compare() and
switched f2fs to use it, f2fs_ci_compare() is only called when the filesystem is
actually searching a directory, not from ->d_compare().  So the names and
parent->d_inode are stable in it.

But, that also means the GFP_ATOMIC isn't needed, and f2fs_ci_compare() should
be made 'static'.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
