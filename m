Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C941B8ABCD
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 02:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjr9ZBShPM6k3sy5XGlR8qWNwiKga+5z3D6tMy4w3Ag=; b=p1qtR7v88qHEFc
	fTyZKGu+DpNxCoC6mCywA3E5ibzE15ag8lIodwaAoaJhbiFLnbCiJvady1j0KglcPKGgmMHfx7NFi
	d5OfWRWyquAjssbwezO+4xPAzpSErui2ji2IL7aeCimqKFc9jmqIowyZxVMwEQlrV3CRTzZUorj+H
	sYl5rcin33VviiFfiyv3vAcexdiSoWJNSLRC8fOxzz0YJKJZxHVA1fuQyAC5w6mfonzZ/WMPwL+cM
	+e83m9eQ9mUFNS3Ja7hlOomg2cKyX8vKcXVL8Pao/lCx4IT+ru5zMIpFjov6MjiJadR9CXqAJMxDq
	agMPEXqIRDUKx+yFGnxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxKL5-00016Z-Kc; Tue, 13 Aug 2019 00:06:59 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxKKx-00016C-79
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 00:06:52 +0000
Received: from callcc.thunk.org (guestnat-104-133-9-109.corp.google.com
 [104.133.9.109] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7D06i57014906
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 12 Aug 2019 20:06:46 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 3F35E4218EF; Mon, 12 Aug 2019 20:06:44 -0400 (EDT)
Date: Mon, 12 Aug 2019 20:06:44 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH v8 10/20] fscrypt: add FS_IOC_REMOVE_ENCRYPTION_KEY ioctl
Message-ID: <20190813000644.GH28705@mit.edu>
References: <20190805162521.90882-1-ebiggers@kernel.org>
 <20190805162521.90882-11-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805162521.90882-11-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_170651_444981_99F476CD 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
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
Cc: Satya Tangirala <satyat@google.com>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

> +		/* Some inodes still reference this key; try to evict them. */
> +		if (try_to_lock_encrypted_files(sb, mk) != 0)
> +			status_flags |=
> +				FSCRYPT_KEY_REMOVAL_STATUS_FLAG_FILES_BUSY;
> +	}

try_to_lock_encrypted_files() can return other errors besides -EBUSY;
in particular sync_filesystem() can return other errors, such as -EIO
or -EFSCORUPTED.  In that case, I think we're better off returning the
relevant status code back to the user.  We will have already wiped the
master key, but this situation will only happen in exceptional
conditions (e.g., user has ejected the sdcard, etc.), so it's not
worth it to try to undo the master key wipe to try to restore things
to the pre-ioctl execution state.

So I think we should capture the return code from
try_to_lock_encrypted_files, and if it is EBUSY, we can set FILES_BUSY
flag and return success.  Otherwise, we should return the error.

If you agree, please fix that up and then feel free to add:

Reviewed-by: Theodore Ts'o <tytso@mit.edu>

						- Ted

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
