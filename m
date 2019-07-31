Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 078697D206
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 01:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKG/l1kuWMN4lOqhPVUJ8Zl+6rL63fsWZIxtRiBMUok=; b=STPJQUY3PZAM8l
	9XkGftFaA0U/Mg8GCRMKwUevqZnKD1G18wH1MqKDwXnwOaLqctYhkx1IMgWpErWrB2c5IUaFO8+ak
	VhPsM+2W+eRlCLBddqpWkmr6My75zmAfo0aAreTaqCkxN/HLv2uts8K7ao7jQzPqa59m1lFtBh0gK
	BL4fPBJwVl4QrdylQI383jh3Kytov4nsXqlSxQDt72Gg9mFzijuToM7VB3RzjM6w6HAdQMeVKJkk9
	1LFPw6qRaBKGVCYAzOAaQblZYjrP2Ih+2JWfET3QHjHDMDrQ2aXhOpejAAXDPybriH9OO/Pjwnqcu
	3qT17xMxd1YFRLggu0tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsyBM-0008VT-9b; Wed, 31 Jul 2019 23:38:56 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsyBE-0008V7-FO
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 23:38:50 +0000
Received: from callcc.thunk.org (96-72-102-169-static.hfc.comcastbusiness.net
 [96.72.102.169] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6VNchZY000330
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 31 Jul 2019 19:38:44 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 3EE374202F5; Wed, 31 Jul 2019 19:38:43 -0400 (EDT)
Date: Wed, 31 Jul 2019 19:38:43 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: linux-fscrypt@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, linux-api@vger.kernel.org,
 linux-crypto@vger.kernel.org, keyrings@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>, Satya Tangirala <satyat@google.com>
Subject: Re: [PATCH v7 07/16] fscrypt: add FS_IOC_REMOVE_ENCRYPTION_KEY ioctl
Message-ID: <20190731233843.GA2769@mit.edu>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-8-ebiggers@kernel.org>
 <20190728192417.GG6088@mit.edu> <20190729195827.GF169027@gmail.com>
 <20190731183802.GA687@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731183802.GA687@sol.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_163848_686110_71914759 
X-CRM114-Status: GOOD (  18.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 11:38:02AM -0700, Eric Biggers wrote:
> 
> This is perhaps different from what users expect from unlink().  It's well known
> that unlink() just deletes the filename, not the file itself if it's still open
> or has other links.  And unlink() by itself isn't meant for use cases where the
> file absolutely must be securely erased.  But FS_IOC_REMOVE_ENCRYPTION_KEY
> really is meant primarily for that sort of thing.

Seems to me that part of the confusion is FS_IOC_REMOVE_ENCRYPTION_KEY
does two things.  One is "remove the user's handle on the key".  The
other is "purge all keys" (which requires root).  So it does two
different things with one ioctl.

> To give a concrete example: my patch for the userspace tool
> https://github.com/google/fscrypt adds a command 'fscrypt lock' which locks an
> encrypted directory.  If, say, someone runs 'fscrypt unlock' as uid 0 and then
> 'fscrypt lock' as uid 1000, then FS_IOC_REMOVE_ENCRYPTION_KEY can't actually
> remove the key.  I need to make the tool show a proper error message in this
> case.  To do so, it would help to get a unique error code (e.g. EUSERS) from
> FS_IOC_REMOVE_ENCRYPTION_KEY, rather than get the ambiguous error code ENOKEY
> and have to call FS_IOC_GET_ENCRYPTION_KEY_STATUS to get the real status.

What about having "fscrypt lock" call FS_IOC_GET_ENCRYPTION_KEY_STATUS
and print a warning message saying, "we can't lock it because N other
users who have registered a key".  I'd argue fscrypt should do this
regardless of whether or not FS_IOC_REMOVE_ENCRYPTION_KEY returns
EUSERS or not.

> Also, we already have the EBUSY case.  This means that the ioctl removed the
> master key secret itself; however, some files were still in-use, so the key
> remains in the "incompletely removed" state.  If we were actually going for
> unlink() semantics, then for consistency this case really ought to return 0 and
> unlink the key object, and people who care about in-use files would need to use
> FS_IOC_GET_ENCRYPTION_KEY_STATUS.  But most people *will* care about this, and
> may even want to retry the ioctl later, which isn't something youh can do with
> pure unlink() semantics.

It seems to me that the EBUSY and EUSERS errors should be status bits
which gets returned to the user in a bitfield --- and if the key has
been removed, or the user's claim on the key's existence has been
removed, the ioctl returns success.

That way we don't have to deal with the semantic disconnect where some
errors don't actually change system state, and other errors that *do*
change system state (as in, the key gets removed, or the user's claim
on the key gets removed), but still returns than error.

We could also add a flag which indicates where if there are files that
are still busy, or there are other users keeping a key in use, the
ioctl fails hard and returns an error.  At least that way we keep
consistency where an error means, "nothing has changed".

	    	     	   	  	   - Ted

P.S.  BTW, one of the comments which I didn't make was the
documentation didn't adequately explain which error codes means,
"success but with a caveat", and which errors means, "we failed and
didn't do anything".  But since I was arguing for changing the
behavior, I decided not to complain about the documentation.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
