Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73863795D1
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 21:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9G3yBDH+33j2xxxeXpAP80S4xYM3GQtE7trmClM5Uc=; b=PZZ+YMfFjBKr55
	saKRNL/2tf/JEN04h3qHIakENJJRtvWgjtf2bmxrbeeWSLd/l/wt0zka1vshmdxSM9FFQ+z529+Ru
	l2MvGU7Hsi3dPOWDo1uqY7fax/alxQPDmzl63jfekQ54dkfNfEyRjs3ZtHQ/cDWUR5Em5K016uxXD
	IGLST9KBdQrfTxMco81Cacm3x1IPNwbLBkJKER0awYKZLvtYdkjHpQbsb+Rl7YhrHy0V8aMHbxSbN
	Gbv8WNTojAK5iJp1N65xY+uHLKS+Csx+RH7qymrtroXYlwrTm5l6NWDBxfInPR3YO2V8JkYJsjBSi
	5uiJnmpBfgln6f3roWlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBc0-0001HM-7k; Mon, 29 Jul 2019 19:47:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBbb-0001H2-Dv
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 19:46:48 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C031C205F4;
 Mon, 29 Jul 2019 19:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564429607;
 bh=8Slb/dcgJuOY+mm6dVYYikaN4v+qkAQ5N+ZwtSce/eI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r/QgV/Aa24jZcj1+VmNkDQtk9eYteOJ3HaDEJxXWAnq67HBQqoCgM4v64bpEo3cnW
 d1fLgk4VdQ6kcWFSM/MvQYxGQ2fT7ccgYrDTaxOtNdJ8pNCRzoXEdrLqM1gGUs5W5i
 cYniPprJp6BlXGrbGMSEofsXk1WX4mUaAEFckltY=
Date: Mon, 29 Jul 2019 12:46:45 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [PATCH v7 06/16] fscrypt: add FS_IOC_ADD_ENCRYPTION_KEY ioctl
Message-ID: <20190729194644.GE169027@gmail.com>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 linux-fscrypt@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, linux-api@vger.kernel.org,
 linux-crypto@vger.kernel.org, keyrings@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>,
 Satya Tangirala <satyat@google.com>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-7-ebiggers@kernel.org>
 <20190728185003.GF6088@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728185003.GF6088@mit.edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_124647_506257_5EC76C6D 
X-CRM114-Status: GOOD (  21.64  )
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

On Sun, Jul 28, 2019 at 02:50:03PM -0400, Theodore Y. Ts'o wrote:
> On Fri, Jul 26, 2019 at 03:41:31PM -0700, Eric Biggers wrote:
> > From: Eric Biggers <ebiggers@google.com>
> > 
> > Add a new fscrypt ioctl, FS_IOC_ADD_ENCRYPTION_KEY.  This ioctl adds an
> > encryption key to the filesystem's fscrypt keyring ->s_master_keys,
> > making any files encrypted with that key appear "unlocked".
> 
> Note: it think it's going to be useful to make the keyring id
> available someplace like /sys/fs/<fs>/<blkdev>/keyring, or preferably
> in the new fsinfo system call.  Yes, the system administrator can paw
> through /proc/keys and try to figure it out, but it will be nicer if
> there's a direct way to do that.
> 
> For that matter, we could just add a new ioctl which returns the file
> system's keyring id.  That way an application program won't have to
> try to figure out what a file's underlying sb->s_id happens to be.
> (Especially if things like overlayfs are involved.)

Keep in mind that the new ioctls (FS_IOC_ADD_ENCRYPTION_KEY,
FS_IOC_REMOVE_ENCRYPTION_KEY, FS_IOC_GET_ENCRYPTION_KEY_STATUS) don't take the
keyring ID as a parameter, since it's already known from the filesystem the
ioctl is executed on.  So there actually isn't much that can be done with the
keyring ID.  But sure, if it's needed later we can add an API to get it.

> 
> > diff --git a/include/uapi/linux/fscrypt.h b/include/uapi/linux/fscrypt.h
> > index 29a945d165def..93d6eabaa7de4 100644
> > --- a/include/uapi/linux/fscrypt.h
> > +++ b/include/uapi/linux/fscrypt.h
> > +
> > +struct fscrypt_key_specifier {
> > +#define FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR	1
> > +	__u32 type;
> > +	__u32 __reserved;
> 
> Can you move the definition of FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR
> outside of the structure definition, and then add a comment about what
> is a "descriptor" key spec?  (And then in a later patch, please add a
> comment about what is an "identifier" key type.)  There's an
> explanation in Documentation/filesystems/fscrypt.rst, I know, but a
> one or two line comment plus a pointer to
> Documentation/filesystems/fscrypt.rst in the header file would be
> really helpful.

I'll add a brief comment that explains the key specifier.

I've already added a pointer to Documentation/filesystems/fscrypt.rst at the top
of the header (this was one of the cleanups in v6 => v7):

/*
 * fscrypt user API
 *
 * These ioctls can be used on filesystems that support fscrypt.  See the
 * "User API" section of Documentation/filesystems/fscrypt.rst.
 */

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
