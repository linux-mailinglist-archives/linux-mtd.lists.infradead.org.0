Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2538CFBA02
	for <lists+linux-mtd@lfdr.de>; Wed, 13 Nov 2019 21:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vEGG2XZootCHB0ZPnhqiwjICe8WFzkNJufQds3EKTY=; b=HHWcgSzBUaQmvp
	VYpFDM+oXui+gAWgl4cvoLOhicxyUdducAIy4SfAQxwetgKkr4ImqJgFR3yZDp9O5w28gm8/2mysP
	pG3i7WAwWkn0y4AMnyaWYgB0dCVlK8DCglSg84EjKSyLTbBSyobB6ZMJRaKDkrDfIO86/tX0GLkAz
	m/PQ2ODSkhVxvG9ZjR02M6cSJi2KjmrGf06zl/PjH/rDN16ethPTSXnIJNBg2DZkgGXP/mjgSdwdZ
	qfBlmXdKTQfgXUJH0sHENvfkRhL8hZD75xDAu07Kf5fE+f8eYBBTpKzb9D5WzXNlOsqdcJ6LxqtAS
	zsBEwRIz6L1nJzA75dhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUzMx-00005N-3D; Wed, 13 Nov 2019 20:36:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUzMn-0008WF-NA
 for linux-mtd@lists.infradead.org; Wed, 13 Nov 2019 20:35:55 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1D53206F0;
 Wed, 13 Nov 2019 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573677354;
 bh=F7ZEXH3Tifjy9sGUrwh8Fhs+H6mYs1GYZonZpiJuwEo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cN+5BXj91Btq6Ry/bO1VhiaNdo4x1+Lt3QDXuQLQyXlsCVgrWNJGKLW3Zy0M3qYgf
 kZYrGKdT5NAbCuJckqXAScixPVqWmbN98LNs2qdXXxKYYq+xhab0ygSaprMlJrUDjc
 2Rl8cQmt+I9y4p/mks0qpzDMku7DMTI2kzVonDxM=
Date: Wed, 13 Nov 2019 12:35:51 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: David Howells <dhowells@redhat.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>, keyrings@vger.kernel.org
Subject: Re: [PATCH] fscrypt: support passing a keyring key to
 FS_IOC_ADD_ENCRYPTION_KEY
Message-ID: <20191113203550.GI221701@gmail.com>
Mail-Followup-To: David Howells <dhowells@redhat.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 keyrings@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 "Theodore Y . Ts'o" <tytso@mit.edu>,
 Ondrej Mosnacek <omosnace@redhat.com>,
 linux-f2fs-devel@lists.sourceforge.net,
 Paul Lawrence <paullawrence@google.com>,
 linux-mtd@lists.infradead.org, Ondrej Kozina <okozina@redhat.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>
References: <20191107001259.115018-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107001259.115018-1-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_123553_810253_E8FEEDA6 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -4.6 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Theodore Y . Ts'o" <tytso@mit.edu>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-f2fs-devel@lists.sourceforge.net,
 Paul Lawrence <paullawrence@google.com>, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, Ondrej Kozina <okozina@redhat.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 04:12:59PM -0800, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Extend the FS_IOC_ADD_ENCRYPTION_KEY ioctl to allow the raw key to be
> specified by a Linux keyring key, rather than specified directly.
> 
> This is useful because fscrypt keys belong to a particular filesystem
> instance, so they are destroyed when that filesystem is unmounted.
> Usually this is desired.  But in some cases, userspace may need to
> unmount and re-mount the filesystem while keeping the keys, e.g. during
> a system update.  This requires keeping the keys somewhere else too.
> 
> The keys could be kept in memory in a userspace daemon.  But depending
> on the security architecture and assumptions, it can be preferable to
> keep them only in kernel memory, where they are unreadable by userspace.
> 
> We also can't solve this by going back to the original fscrypt API
> (where for each file, the master key was looked up in the process's
> keyring hierarchy) because that caused lots of problems of its own.
> 
> Therefore, add the ability for FS_IOC_ADD_ENCRYPTION_KEY to accept a
> Linux keyring key.  This solves the problem by allowing userspace to (if
> needed) save the keys securely in a Linux keyring for re-provisioning,
> while still using the new fscrypt key management ioctls.
> 
> This is analogous to how dm-crypt accepts a Linux keyring key, but the
> key is then stored internally in the dm-crypt data structures rather
> than being looked up again each time the dm-crypt device is accessed.
> 
> Use a custom key type "fscrypt-provisioning" rather than one of the
> existing key types such as "logon".  This is strongly desired because it
> enforces that these keys are only usable for a particular purpose: for
> fscrypt as input to a particular KDF.  Otherwise, the keys could also be
> passed to any kernel API that accepts a "logon" key with any service
> prefix, e.g. dm-crypt, UBIFS, or (recently proposed) AF_ALG.  This would
> risk leaking information about the raw key despite it ostensibly being
> unreadable.  Of course, this mistake has already been made for multiple
> kernel APIs; but since this is a new API, let's do it right.
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>

David and Jarkko, are you okay with this patch from a keyrings subsystem
perspective?

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
