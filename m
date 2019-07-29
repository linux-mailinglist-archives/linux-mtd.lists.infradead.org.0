Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E28C7972C
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 21:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Od8O5/e5f/cA2s99eAsT7S9CHPPfvdVc3DShpdkvrFg=; b=cpeysk9qVPRZo0
	4OMyz4KaZzTdWkmjqvaw2eUoz/33nD+tTdkRgZ5dqpFbljEE0N0TcNh94NVuTfgAKAWsONlLX1Hdw
	vTyQJVBlZLhyltlO81Xd1EHcNaA7dFeQdicT7KhmSM/fa24HmPHuEXcNs5OnY75rRTBK7JJsvjFh7
	vZP1NueMTzIbSxkbK825y/LwvhdvGqZtFjVuNDtfX5PMp63yqIWF1kIdRfd4v3LeDrtTiwer2M+Wa
	S5vMSsF3DsOXQSbaiCh/n36l852SXMoq8tWgZ9FbLeA3bBlHkFmOIeqSAfaK2CXDeMZWfsw+Zfx3Y
	t3Y5bmTuYcFSb5gZeLfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBn5-0007ga-Un; Mon, 29 Jul 2019 19:58:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBmw-0007ft-C4
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 19:58:31 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B93BB204EC;
 Mon, 29 Jul 2019 19:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564430310;
 bh=MUgzS0F8d9HlQcIKk/AeINedk5YvM3Io6WjGyuY8L/w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iS8QBHsmz86M34KZIw9nisCR2fm0L+w7kPLmRgKBgKMY9InqdG7s5arcER6e70Hiv
 1m2j+mTH3W8YpqEW3EcAFnbX72omhY6EUmca5vAe644L7pPOodpSDNlZw9817U4/I8
 NeTf0yKRDUJxPPPBQRoViELwNkQzTSRuae1WjtFI=
Date: Mon, 29 Jul 2019 12:58:28 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [PATCH v7 07/16] fscrypt: add FS_IOC_REMOVE_ENCRYPTION_KEY ioctl
Message-ID: <20190729195827.GF169027@gmail.com>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 linux-fscrypt@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, linux-api@vger.kernel.org,
 linux-crypto@vger.kernel.org, keyrings@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>,
 Satya Tangirala <satyat@google.com>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-8-ebiggers@kernel.org>
 <20190728192417.GG6088@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728192417.GG6088@mit.edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_125830_428789_5C6241B9 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.5 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Satya Tangirala <satyat@google.com>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 03:24:17PM -0400, Theodore Y. Ts'o wrote:
> > +
> > +/*
> > + * Try to remove an fscrypt master encryption key.  If other users have also
> > + * added the key, we'll remove the current user's usage of the key, then return
> > + * -EUSERS.  Otherwise we'll continue on and try to actually remove the key.
> 
> Nit: this should be moved to patch #11
> 
> Also, perror(EUSERS) will display "Too many users" which is going to
> be confusing.  I understand why you chose this; we would like to
> distinguish between there are still inodes using this key, and there
> are other users using this key.
> 
> Do we really need to return EUSERS in this case?  It's actually not an
> *error* that other users are using the key.  After all, the unlink(2)
> system call doesn't return an advisory error when you delete a file
> which has other hard links.  And an application which does care about
> this detail can always call FS_IOC_ENCRYPTION_KEY_STATUS() and check
> user_count.
> 

Returning 0 when the key wasn't fully removed might also be confusing.  But I
guess you're right that returning an error doesn't match how syscalls usually
work.  It did remove the current user's usage of the key, after all, rather than
completely fail.  And as you point out, if someone cares about other users
having added the key, they can use FS_IOC_GET_ENCRYPTION_KEY_STATUS.

So I guess I'll change it to 0.

Thanks!

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
