Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABED1404EE
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 09:12:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxXx/r+7WTbj9T5cDuuErr6FpE48b6fzf82OPAzfbhg=; b=BNawO7JvNWUlXR
	DY748VNo1w2FKgdn9r0CZbB+xcWBJyKS1vConiP/+bOAawVBgTRLB2a2leH3zWJ/ZTgafoTI0WYT5
	YuCp0acv6+KaxjeJw78R2d9QgHgCK7ok5jTEQd/c6sVGjqBi7Wky7K+6LUI54wBRBmF6ak08hGq04
	DyrVaFMTp4uwoB56xwVlmRT+8AsbcJuxDLtHTWh8o5mzvo+jv3rqnXwep0qcN5VPMhe4R6i2aJuCZ
	WqVa6Tipoy7x+vO5EDjS7SAL8wL1tpQcJWxTXy0XToNDAqOH3+mZeMhTjFI9iJd12AuojLwe9XV9D
	Tx6m1KNaB/8omBi/h5Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMkP-0004b6-1f; Fri, 17 Jan 2020 08:12:53 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1isMkI-0004ao-RH; Fri, 17 Jan 2020 08:12:46 +0000
Date: Fri, 17 Jan 2020 00:12:46 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH] fscrypt: reserve flags for hardware-wrapped keys feature
Message-ID: <20200117081246.GA16846@infradead.org>
References: <20200116192008.35766-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116192008.35766-1-ebiggers@kernel.org>
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
Cc: Barani Muthukumaran <bmuthuku@codeaurora.org>,
 Gaurav Kashyap <gaurkash@codeaurora.org>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 Theodore Ts'o <tytso@mit.edu>, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 11:20:08AM -0800, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Reserve flags for the hardware-wrapped keys feature which is being
> worked on [1].  FSCRYPT_POLICY_FLAG_HW_WRAPPED_KEY will denote that the
> encryption policy needs a hardware-wrapped key to be unlocked.
> FSCRYPT_ADD_KEY_FLAG_HW_WRAPPED will denote that the key being added is
> a hardware-wrapped key.
> 
> This reservation is tentative, and these codepoints may be reused if the
> feature is not upstreamed.

NAK.  While the feature itself sounds really useful we don't just
reserve format bits for code not upstream.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
