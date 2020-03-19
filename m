Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A3318C129
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Mar 2020 21:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWLI55NpEuo5l5Pc63fR+bbhoLjlSlRptG0jfb+8bxc=; b=dmnbJcwDIJc3dx
	HTncbRiYYvprt8s3bQco47fJy77sYgjxNWy266fb/rkAqJCdRgMNfyZ5h+Y+eolfnnBZrJ4zuyybL
	XqPWIKRDWPzKBgwk6djEapiAhZ0q03IMEXuArTj4NwNr3e/zV8zB7x7JFBLCGGxdtTedoj/KBF5BS
	qsJU5Z1kU34n6WTYydg9iRZlk9gPB1BA3XvAcAXpqbjVNaIeCsrQtJVmEuRwHoe6NrC9z1y6tYCMn
	oe1KsWZzbabSVp2/5xm6uyQi+2TxV0IUG8JkOeaC97BlRXo1p1juLocPEUMkIKCOexNWLrU3eiuN5
	pHdZcpwTcG+lC8LgnHqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1dg-0005FM-0j; Thu, 19 Mar 2020 20:19:36 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1dW-0005El-2w
 for linux-mtd@lists.infradead.org; Thu, 19 Mar 2020 20:19:27 +0000
Received: from callcc.thunk.org (pool-72-93-95-157.bstnma.fios.verizon.net
 [72.93.95.157]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 02JKJEjG024401
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Mar 2020 16:19:14 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 38C4F420EBA; Thu, 19 Mar 2020 16:19:14 -0400 (EDT)
Date: Thu, 19 Mar 2020 16:19:14 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH 1/4] fscrypt: add FS_IOC_GET_ENCRYPTION_NONCE ioctl
Message-ID: <20200319201914.GD1067245@mit.edu>
References: <20200314205052.93294-1-ebiggers@kernel.org>
 <20200314205052.93294-2-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314205052.93294-2-ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_131926_298927_06FC655A 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-api@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 01:50:49PM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Add an ioctl FS_IOC_GET_ENCRYPTION_NONCE which retrieves the nonce from
> an encrypted file or directory.  The nonce is the 16-byte random value
> stored in the inode's encryption xattr.  It is normally used together
> with the master key to derive the inode's actual encryption key.
> 
> The nonces are needed by automated tests that verify the correctness of
> the ciphertext on-disk.  Except for the IV_INO_LBLK_64 case, there's no
> way to replicate a file's ciphertext without knowing that file's nonce.
> 
> The nonces aren't secret, and the existing ciphertext verification tests
> in xfstests retrieve them from disk using debugfs or dump.f2fs.  But in
> environments that lack these debugging tools, getting the nonces by
> manually parsing the filesystem structure would be very hard.
> 
> To make this important type of testing much easier, let's just add an
> ioctl that retrieves the nonce.
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Reviewed-by: Theodore Ts'o <tytso@mit.edu>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
