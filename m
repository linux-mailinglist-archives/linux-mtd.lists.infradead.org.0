Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B3D8ABDF
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 02:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDJXtiOQlrx7RsUOX9gO3FtB4WSniv4QN5uRW/dLouQ=; b=Uc41c3p7GXnbmh
	TziDvbRZrQ8+D4Kc+8PuJsUsUesloJQpCmmsigokJFkcXfIC7MecEzEjb0SWsFLeNNZPj6V2Le8c8
	vBNJL+7n2d60kvwD5be7h5m9SG++9BxDLnNctRn2x1rYpPDS67nMtmmyx3tkC/FnUnwPRb7etquDW
	CfQZRsmNy1o95RCdGTXZbQm6Ruxsq+774yK4D2yaM2QE4dPJ/SDYrP4JTGNRbBL8SY/Ltu97T7ns8
	d1XeEdiFm3I0Ij4ggPnHZk1PGKnQA3eHNFWrSP8HRp5LbiEfCXk/XOjO6vt4sPzGoAZ+s10ry6fMA
	dzqX8FjqKRvE2xDOxW5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxKU0-0004Y3-F9; Tue, 13 Aug 2019 00:16:12 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxKTp-0004Xm-Km
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 00:16:03 +0000
Received: from callcc.thunk.org (guestnat-104-133-9-109.corp.google.com
 [104.133.9.109] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7D0FuIa017672
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 12 Aug 2019 20:15:57 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id BDC084218EF; Mon, 12 Aug 2019 20:15:55 -0400 (EDT)
Date: Mon, 12 Aug 2019 20:15:55 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH v8 15/20] fscrypt: add
 FS_IOC_REMOVE_ENCRYPTION_KEY_ALL_USERS ioctl
Message-ID: <20190813001555.GJ28705@mit.edu>
References: <20190805162521.90882-1-ebiggers@kernel.org>
 <20190805162521.90882-16-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805162521.90882-16-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_171601_850821_08E8D2A4 
X-CRM114-Status: UNSURE (   9.94  )
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

On Mon, Aug 05, 2019 at 09:25:16AM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Add a root-only variant of the FS_IOC_REMOVE_ENCRYPTION_KEY ioctl which
> removes all users' claims of the key, not just the current user's claim.
> I.e., it always removes the key itself, no matter how many users have
> added it.
> 
> This is useful for forcing a directory to be locked, without having to
> figure out which user ID(s) the key was added under.  This is planned to
> be used by a command like 'sudo fscrypt lock DIR --all-users' in the
> fscrypt userspace tool (http://github.com/google/fscrypt).
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Looks good, thanks.   Feel free to add:

Reviewed-by: Theodore Ts'o <tytso@mit.edu>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
