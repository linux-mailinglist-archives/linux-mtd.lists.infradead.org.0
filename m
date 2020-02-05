Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264CA15397F
	for <lists+linux-mtd@lfdr.de>; Wed,  5 Feb 2020 21:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ijExsVkBKE6p4XPSIgKx3Lia7pt21CJ2rq0wkHgAJQ=; b=RDYWuiEAkCQ41S
	UFsjJ5l1ox5FR15H7VP7VButouCruEPvyR1fo0YIFzASY4pji+O2QifBSfD/ixG61bhj+OTXEE7RY
	CSXeuD2QXs5qQV2ykfu6tkJbLoAzCj7tLqdMSiYUSQn9DPXWoaMsPV937Y2AfJzc7+HcA4HXJoLKL
	Zf5lAoP9mY+XuGSju8zaWfHQG/Gkbfc8qSwYw3QDrPEbc3NwZAFdsYtELyFDUWrfNu+MODeSkljzs
	zNXwB2GFBxr4MWOs/OhgBDYZWQUv6XlCZC7DP0OkkZCwSMzhkk5A9rY8wxcrj1uzKTMKWHqC+yMZe
	9dHcqsGHjNHSdfnGVubA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izRCk-00025E-9M; Wed, 05 Feb 2020 20:23:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izRCZ-00024t-3Y
 for linux-mtd@lists.infradead.org; Wed, 05 Feb 2020 20:23:12 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A60F12912B6;
 Wed,  5 Feb 2020 20:23:04 +0000 (GMT)
Date: Wed, 5 Feb 2020 21:23:01 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: JH <jupiter.hce@gmail.com>
Subject: Re: mtd_nandbiterrs errors
Message-ID: <20200205212301.1e26c263@collabora.com>
In-Reply-To: <CAA=hcWSX9tBOjX8DEsg+=9NPdKzdwQBa1PyxA-r9vCLVsz52tg@mail.gmail.com>
References: <CAA=hcWTvGf9_izDMJhER-S=vEYcc22K4Syp5CuVjUr9tND7cgQ@mail.gmail.com>
 <CAA=hcWSX9tBOjX8DEsg+=9NPdKzdwQBa1PyxA-r9vCLVsz52tg@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_122311_279552_F4FC0C94 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 5 Feb 2020 22:28:50 +1100
JH <jupiter.hce@gmail.com> wrote:

> Resolved, using kernel test probably a bad idea, change to use
> mtd-utils nandbiterrs resolved issue.

I doubt it solved the real problem: ECC is not working properly.

> > [  695.257984] mtd_nandbiterrs: Inserted biterror @ 0/0
> > [  695.262984] mtd_nandbiterrs: rewrite page
> > [  695.273646] mtd_nandbiterrs: read_page
> > [  695.280000] mtd_nandbiterrs: Read reported 2 corrected bit errors

The ECC engine should report an uncorrectable error here, not 2
corrected bits. BTW, an ECC of 2bits/512bytes sounds weak for a 2k-page
NAND. What's the NAND part you're testing with?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
