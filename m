Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D2E158648
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Feb 2020 00:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iz2s5XJv0nEoQVijWl3uODvqziY1raERMDiz+G20ZdE=; b=SRYv4BxUqTX2oD
	LCEK8dP49kcLitQEW4nIggLIzo53iDYwU5TSMXOn+/cP34ANu5bMrqMMsjg/TPj86z0cRGiKlqywJ
	7MYRZfnkFPQPpoKH7iQtUe4XJtoOgk6XOh2dE4Dq1XJNrUBlNxL5+7KOvqWtK+nQiGJKpkYUjtEIH
	IlOdjWIdUd+yYdaB1Uq6r0yOu3U4CGXCEet+FEuQHwLuU9ticz00GR7iVhASZkmm/1yuYZ0Sjc9kO
	SFcCWiJXCY8ExrOnwdnTx/s1/klqUw/qH/CHGlVZqulyWA74T08wM4WstOW6ePnr6PmzXsmmswT4/
	V2O1/ppbyx4IK8HMQ+UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1IjD-0005y7-9c; Mon, 10 Feb 2020 23:44:35 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Ij5-0005ZZ-Gd
 for linux-mtd@lists.infradead.org; Mon, 10 Feb 2020 23:44:29 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1j1Igp-00AcMq-LS; Mon, 10 Feb 2020 23:42:07 +0000
Date: Mon, 10 Feb 2020 23:42:07 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Daniel Rosenberg <drosen@google.com>
Subject: Re: [PATCH v7 2/8] fs: Add standard casefolding support
Message-ID: <20200210234207.GJ23230@ZenIV.linux.org.uk>
References: <20200208013552.241832-1-drosen@google.com>
 <20200208013552.241832-3-drosen@google.com>
 <20200208021216.GE23230@ZenIV.linux.org.uk>
 <CA+PiJmTYbEA-hgrKwtp0jZXqsfYrzgogOZ0Pt=gTCtqhBfnqFA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+PiJmTYbEA-hgrKwtp0jZXqsfYrzgogOZ0Pt=gTCtqhBfnqFA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_154427_551210_32B29E08 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Jonathan Corbet <corbet@lwn.net>, Richard Weinberger <richard@nod.at>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Chao Yu <chao@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, Eric Biggers <ebiggers@kernel.org>,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 03:11:13PM -0800, Daniel Rosenberg wrote:
> On Fri, Feb 7, 2020 at 6:12 PM Al Viro <viro@zeniv.linux.org.uk> wrote:
> >
> > On Fri, Feb 07, 2020 at 05:35:46PM -0800, Daniel Rosenberg wrote:
> >
> >
> > Again, is that safe in case when the contents of the string str points to
> > keeps changing under you?
> 
> I'm not sure what you mean. I thought it was safe to use the str and
> len passed into d_compare. Even if it gets changed under RCU
> conditions I thought there was some code to ensure that the name/len
> pair passed in is consistent, and any other inconsistencies would get
> caught by d_seq later. Are there unsafe code paths that can follow?

If you ever fetch the same byte twice, you might see different values.
You need a fairly careful use of READ_ONCE() or equivalents to make
sure that you don't get screwed over by that.

Sure, ->d_seq mismatch will throw the result out, but you need to make
sure you won't oops/step on uninitialized memory/etc. in process.

It's not impossible to get right, but it's not trivial and you need all
code working with that much more careful than normal for string handling.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
