Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948BE18564F
	for <lists+linux-mtd@lfdr.de>; Sat, 14 Mar 2020 21:53:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UgnWEHtu88+1Wwm4n6DymTucNBP8TTF2J1+Qgarwk4o=; b=L2GffO/9wJsKrQ
	wwEhHDBa95b7eGwapK1nRg/PfnILDiVv2L0pvWhZ+gl9PCuymF56gopWTzkqog1ay8NcGDRQrXOm2
	H1vwMy1CoE7ejG7zUZohppW3Y1snZUMpAkse6L912GciEMqdnArsuhf36EWsqaZCbpTJ3SMeCpmbt
	bwsTrhu1lkVUA2lNQfWBTgJkoEdSzujYLivJO4IgF8/WkSmWfhB9aOB7Zlf7VgbizT+DHtbkAXSPh
	oDqwqBRUweE1SToWEw/gKzxEMuOceOudaT3FDLWNDzp/UkpZVsUJB1qC7v801UZSimC9kxT7Cam1l
	a2Je6I3kj6k5y9mPdIkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDDmt-0003Ac-PT; Sat, 14 Mar 2020 20:53:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDDmU-00034O-HV
 for linux-mtd@lists.infradead.org; Sat, 14 Mar 2020 20:53:15 +0000
Received: from sol.hsd1.ca.comcast.net (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E76F22071B;
 Sat, 14 Mar 2020 20:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584219193;
 bh=nlaaveyfQbhFKfwiAaphWpQDQEdEAujbuJUQUWFnHF0=;
 h=From:To:Cc:Subject:Date:From;
 b=0iSH8Q5D+Ml4kWit103vNhqqB1ao1wz8fX85tuNaSR98NmuiY+2hC1jyJD/ruJ/V1
 199VRhsa+r9bu1MzO7xz9Tr7s0TnpAj5smS4RburSHj7ylnB0x9tbam9/SzEee07yX
 pQtOWhG8kxmo09f3EZX3BsptKW71I9wsopcIgkek=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH 0/4] fscrypt: add ioctl to get file's encryption nonce
Date: Sat, 14 Mar 2020 13:50:48 -0700
Message-Id: <20200314205052.93294-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_135314_604937_482378B7 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-fsdevel@vger.kernel.org, linux-api@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This patchset adds an ioctl FS_IOC_GET_ENCRYPTION_NONCE which retrieves
the nonce from an encrypted file or directory.

This is useful for automated ciphertext verification testing.

See patch #1 for more details.

Eric Biggers (4):
  fscrypt: add FS_IOC_GET_ENCRYPTION_NONCE ioctl
  ext4: wire up FS_IOC_GET_ENCRYPTION_NONCE
  f2fs: wire up FS_IOC_GET_ENCRYPTION_NONCE
  ubifs: wire up FS_IOC_GET_ENCRYPTION_NONCE

 Documentation/filesystems/fscrypt.rst | 11 +++++++++++
 fs/crypto/fscrypt_private.h           | 20 ++++++++++++++++++++
 fs/crypto/keysetup.c                  | 16 ++--------------
 fs/crypto/policy.c                    | 21 ++++++++++++++++++++-
 fs/ext4/ioctl.c                       |  6 ++++++
 fs/f2fs/file.c                        | 11 +++++++++++
 fs/ubifs/ioctl.c                      |  4 ++++
 include/linux/fscrypt.h               |  6 ++++++
 include/uapi/linux/fscrypt.h          |  1 +
 9 files changed, 81 insertions(+), 15 deletions(-)


base-commit: 98d54f81e36ba3bf92172791eba5ca5bd813989b
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
