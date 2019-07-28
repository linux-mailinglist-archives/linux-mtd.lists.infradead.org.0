Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE4F78002
	for <lists+linux-mtd@lfdr.de>; Sun, 28 Jul 2019 17:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+Pjfn4K2XL9o3uuxGtkYrWtmv4oFS8mecDdQC6BvIw=; b=SuXjF5py1ydB/P
	lLbTTgRMUJLstMJRTfH6i7pGaXMmeomeA6IIzSM9HQNsUrN7rjHOqydK2bpYpaOGsFBTw0hVlX6zO
	3XL0OOxEhJzNWu6kSyTrLFNWMqn0mGMnalC3QkwLc6l4LDAyVKlJeOzAOIZsnF5PwpamvhgkYsp2d
	ZzEp7HFYtJJKVSp5++MFqEh6fq/H+8fuTiyi9UgZduxy3beC3gtWFo+oY9FYdn3y5KUdfFA1KyU8T
	AzVpQeWuKdAVFtuNTVGT12Ssb9o66BT93JLcdKClvDfCsZ8TnxXwdIeWyhibPBxY45iIKztJBmo1M
	Nq2jrx42BQUNQvYb/1ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrknv-0002Zi-W6; Sun, 28 Jul 2019 15:09:44 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrknl-0002ZL-EB
 for linux-mtd@lists.infradead.org; Sun, 28 Jul 2019 15:09:34 +0000
Received: from callcc.thunk.org (96-72-102-169-static.hfc.comcastbusiness.net
 [96.72.102.169] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6SF9SUd026710
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 28 Jul 2019 11:09:29 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id BDCE54202F5; Sun, 28 Jul 2019 11:09:27 -0400 (EDT)
Date: Sun, 28 Jul 2019 11:09:27 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH v7 04/16] fscrypt: add ->ci_inode to fscrypt_info
Message-ID: <20190728150927.GD6088@mit.edu>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-5-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726224141.14044-5-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_080933_643185_0BEF3749 
X-CRM114-Status: UNSURE (   8.56  )
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

On Fri, Jul 26, 2019 at 03:41:29PM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Add an inode back-pointer to 'struct fscrypt_info', such that
> inode->i_crypt_info->ci_inode == inode.
> 
> This will be useful for:
> 
> 1. Evicting the inodes when a fscrypt key is removed, since we'll track
>    the inodes using a given key by linking their fscrypt_infos together,
>    rather than the inodes directly.  This avoids bloating 'struct inode'
>    with a new list_head.
> 
> 2. Simplifying the per-file key setup, since the inode pointer won't
>    have to be passed around everywhere just in case something goes wrong
>    and it's needed for fscrypt_warn().
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Looks good, feel free to add:

Reviewed-by: Theodore Ts'o <tytso@mit.edu>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
