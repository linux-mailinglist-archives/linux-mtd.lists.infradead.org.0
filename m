Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAB6B3254
	for <lists+linux-mtd@lfdr.de>; Sun, 15 Sep 2019 23:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0pSnbUa9bnZJpb/hJj5tTGwzfEaDQjcecKtFGcp+I4=; b=Rvsj54dT7dRwKK
	6qwOHDsXj+A+MvDpPbaTmsUtjPBg5vhU5rTod9FBrujN0XUhHR1NoFhp5FiHnjT+ukDVnUjilAWOK
	eHRWpC5uQKtMbXTluNOMr/JMv8FjaPtR7ldbDaojH8Ca+riAFMwdu6TzbMPqibezM4D2YzWguXkY3
	uN996g58BfYN+lZN7y2v0iTpdcVMl/XEgTUIQWWClKTUmySiwkZZtMLyjR0MWhRFpcHRAH3itIifJ
	88j7uwk2PSwDgTL3ZXhBOo9O/Q6IohfWf6OVAJsmLm7Kk4IWtYmT+a70LlhIavwe+IoIHcBy+G9tf
	7EhrBtaURtgiavFCgshA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9cO1-0005N0-6x; Sun, 15 Sep 2019 21:48:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9cNt-0005MT-HP
 for linux-mtd@lists.infradead.org; Sun, 15 Sep 2019 21:48:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id g207so7903219wmg.5
 for <linux-mtd@lists.infradead.org>; Sun, 15 Sep 2019 14:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7YPlMyof8WqPF8ZmJB0HBvRCNYO8+zALYU1pj43TpWQ=;
 b=E4MfMBoQFMHUMWPodSzHAUEKrMxeWkyH6wsw3ge1Ne6IlZylQjEcJMPv/jdqViAmJT
 Ib/fWnOYpDRTPfRJR03CQRV5srH9f0JImRYrk22zBAWaN8zLy+1yM4x+LS4Rku46B1ym
 XtObLe+nN8b7BLdOZ55Snx5HCPKHueh6G8C4T+sRJKOeQdrTMheTsV6pxKRTS1TZ2hc6
 sPI+fT0NqH0ptVOGagIP8dJNBiJZ374l/oGC1o9kakubXmhELyKKyH6jXl+Z0OAM2jak
 JxSL4YgA2wcqQ/fxviMKgvd5tXGacqhCvrpyD0l4uWrOsVYXmJbwsMvo3ywG9QVxy7/g
 oMCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7YPlMyof8WqPF8ZmJB0HBvRCNYO8+zALYU1pj43TpWQ=;
 b=lrcUtl+EMC9ilmEivse3TEV5/L3J63c0DRERdnITF+yCGq5OOZEEk4chQRnnS+t+r1
 wKnDCuuowr69bPz4VG35guOgqa3ukv2atfnbqOWOQdOfM2k4QH/LedcKj2LCxKDFRm90
 ciCTxHVt7aypR5tw30t4bGXRwi4CwaDkl3VCnNGb5KF2tyVcrDkwdQhkLWvKW/TjD56J
 6LMIfDmIkoePnMMRIf2ipno0fJoFdcMStAP5tTGtMhOdsUcKKVn71znU5d4bLkUyefWw
 03GrpAGY+WofAVjYAVFd+6jbZYhbMxD3XS3KXJiruuXmYU4x6PLebGMru8QQRJ703Oi5
 n/CA==
X-Gm-Message-State: APjAAAW8mUMmqLAZF77kR+4qPbd9jWVihJvcUtqC6hPMdzcRavqmBRdi
 5DnpWb+MUsQd3WC+Htr3/jcNfCpq5QsrEc8GmeM=
X-Google-Smtp-Source: APXvYqzqHlZDoxlC/Ud5Qmw4DL3M/ozdtFQnQSuZrpxddCnLxZ33Zss/Dl8dkxsihGu8kUuC+5+0IOiTdXEYtpWEV5M=
X-Received: by 2002:a1c:1d4:: with SMTP id 203mr11413186wmb.104.1568584119274; 
 Sun, 15 Sep 2019 14:48:39 -0700 (PDT)
MIME-Version: 1.0
References: <1566221892-16744-1-git-send-email-yihuaijie@huawei.com>
In-Reply-To: <1566221892-16744-1-git-send-email-yihuaijie@huawei.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 15 Sep 2019 23:48:27 +0200
Message-ID: <CAFLxGvx_adbxyfA5iUZaHHw4aM1gbdOTMQdirx0FH1LamihdKg@mail.gmail.com>
Subject: Re: [PATCH] mtd: fix oops when writing to phram device on arm64
To: Huaijie Yi <yihuaijie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_144841_581803_C5A2EEBA 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Joern Engel <joern@lazybastard.org>, linux-mtd@lists.infradead.org,
 Marek Vasut <marek.vasut@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 3:39 PM Huaijie Yi <yihuaijie@huawei.com> wrote:
>
> From: yihuaijie <yihuaijie@huawei.com>
>
> memcpy() to memory remaped by ioremap() at an address not aligned
> to 8-bytes will cause oops on arm64 platform, fixing this by using
> ioremap_wc().

This might be the right thing on arm64, but I fear not for all other
archs and configurations.

We had a similar chain of problems already with our sram driver.
See:
eb43e023130b ("misc: sram: add optional ioremap without write combining")
0ab163ad1ea0 ("misc: sram: switch to ioremap_wc from ioremap")

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
