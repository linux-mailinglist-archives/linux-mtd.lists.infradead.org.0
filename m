Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCC77810D
	for <lists+linux-mtd@lfdr.de>; Sun, 28 Jul 2019 21:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLX/OzE1pfp7zNsatu7tVsvfYYmNahvFfeqvfIEs7oM=; b=JIfBaxo3P6Yt9G
	AsJotifsem7mHeHMM6bdBvyLwh537gbwFAl7yRpoI0CYHkV5W4Tan21XNW31iNsQwWJI6fM7SCKO5
	acw2eCKLDOKijDJCtefNHEjqkM2Y8OckTRBLhB8KOdRwfnapLAAM4hcOEFp4aIxLffjNIkh8I1fN7
	gsGQsWZk33CSb2m2wrNu6ZTUgXq9BxReq528w6ugvlQ3L1hcQOnBIJSM9zKP8JVL6bHyiJ+/rIdp6
	JhriNEgUEiSGLua5YSnimcIsbtG6DW8/cjY1UJCxWe9i/6WC3Rt9lYAdJm0DjakRR5Hm7sWZabD2g
	QoluU+4x1xGFOuTXCiow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hromc-0000cz-GQ; Sun, 28 Jul 2019 19:24:38 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hromT-0000cc-Qx
 for linux-mtd@lists.infradead.org; Sun, 28 Jul 2019 19:24:31 +0000
Received: from callcc.thunk.org (96-72-102-169-static.hfc.comcastbusiness.net
 [96.72.102.169] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6SJONer007423
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 28 Jul 2019 15:24:24 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 5848D4202F5; Sun, 28 Jul 2019 15:24:17 -0400 (EDT)
Date: Sun, 28 Jul 2019 15:24:17 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH v7 07/16] fscrypt: add FS_IOC_REMOVE_ENCRYPTION_KEY ioctl
Message-ID: <20190728192417.GG6088@mit.edu>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-8-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726224141.14044-8-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_122430_044520_38B315F9 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Satya Tangirala <satyat@google.com>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 03:41:32PM -0700, Eric Biggers wrote:
> +	fscrypt_warn(NULL,
> +		     "%s: %zu inodes still busy after removing key with description %*phN, including ino %lu (%s)",

nit: s/inodes/inode(s)/

> +
> +/*
> + * Try to remove an fscrypt master encryption key.  If other users have also
> + * added the key, we'll remove the current user's usage of the key, then return
> + * -EUSERS.  Otherwise we'll continue on and try to actually remove the key.

Nit: this should be moved to patch #11

Also, perror(EUSERS) will display "Too many users" which is going to
be confusing.  I understand why you chose this; we would like to
distinguish between there are still inodes using this key, and there
are other users using this key.

Do we really need to return EUSERS in this case?  It's actually not an
*error* that other users are using the key.  After all, the unlink(2)
system call doesn't return an advisory error when you delete a file
which has other hard links.  And an application which does care about
this detail can always call FS_IOC_ENCRYPTION_KEY_STATUS() and check
user_count.

Other than these nits, looks good.  Feel free to add:

Reviewed-by: Theodore Ts'o <tytso@mit.edu>

						- Ted

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
