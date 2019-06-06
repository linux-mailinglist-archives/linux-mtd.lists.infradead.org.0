Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B6737740
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Jun 2019 16:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPJSqwSOB5iiqodClFvzKc54vEPZxQPFgYK8YGEFd+g=; b=BOaZoAhL3oxPbm
	Z9hdBYU6AD7/JPo0vMN/2f5HnvNdTzaQqNd459QZ7DhVw1C8UngQPPrK8+NLfGfGve6NF9Jn9tzRG
	Retrf6C9VgQq/ZhCh5qYjB+uqQnZ4i/SL2+kYRWUwLoYHU3Ylxi77BjJI7RXHrU2maPVRTWsBDxDG
	OT7vmmXD71V8eAmhfLs0/MVDS9oZmCXqgowur9eJ1Nea4XF4rJwyF7lk3HwZYImv1NnTjNbnW2WhH
	mFeHfnKPrw/7JYYkhvlR33P1IzqobTzHYTb8jV5/Ig1DKXqB4mnMjGmKtCd82IVW7qwDGqNsSupAc
	b4DB04/cv0rKyhXth0DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYtnx-0000Bl-4N; Thu, 06 Jun 2019 14:55:49 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYtnp-0000BP-Tg
 for linux-mtd@lists.infradead.org; Thu, 06 Jun 2019 14:55:43 +0000
Received: by mail-wr1-x42b.google.com with SMTP id d18so2768927wrs.5
 for <linux-mtd@lists.infradead.org>; Thu, 06 Jun 2019 07:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GQLOFkp+oSM0xEu1CIf5Re8tlevGZwv1T+tzc9N2MfM=;
 b=feEgqISNGQUFEgs4E2RCkneDoVN/ClzsDm2uDAKDHJ5EkAD4Sc+j0rXDRuVOHpcHLr
 rCn8+ljsAK2wNpMMknfUQi43eA5dm5nHbMufV2CFfAp+oK8J2rV0HBSAaQOt1H4eR4WZ
 IlB5+OT2JDuc1KwnjiQmpdUubkhPwtCjNHovh1vXAFRhkQHBL8tmXmuXXCRTbTy+nLkY
 ho21X6wt/HbBiWC+8+b3RURDKiCMGcnm6Wg9koIra/8CnqGSissqacYaC+r9cILzERvo
 ecUftQMD1Y1y4ZzEeuocUDVDw56GhBdlJvfmgMZxF4LmDVUwDf8qIGiexZWDrp2OOitF
 B6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GQLOFkp+oSM0xEu1CIf5Re8tlevGZwv1T+tzc9N2MfM=;
 b=st1uUGyqsL0CONJROMWH98DhxJNdCDoq3jz56lchl5lcPDXXf7p1t670LqJeqbJKq7
 EJEnevcfFA3Ux3AVbBBu/c0cmbWhUt1WCbbRAdJMrxs+0YGB7YngzDCDtmPBT6AT2dcS
 S0hXo4yRI2KBEvZelM5dV9vSNagUt+GtMigR3MwpoepgJklPYEB9JKooj+K3LJ4WSu5s
 RFcS+UUBNVKWQ9FjOSGHS6CfgvKr8qQleHnX5VXCJlmvNBSoC+5bnEtadl90GK+gdNqE
 sQnfDP6KDXv3pJb34GDyNQ5+tavHHLpjVDev6Aq/GtX+bpHGuH6cVVeWB9Ok2jR8VRcI
 I8OQ==
X-Gm-Message-State: APjAAAViMLHjGdVA6r3LgOnXug/72CKelkqBaYzualLaOCBk4dI/fN4A
 UTCVkfsdAylKSM/PR3mrHXhCCof/vJhHP3hVbP0=
X-Google-Smtp-Source: APXvYqzhpWept4cnUyOwdlHO/coG3YDUpO/Lt/tPcIJp0vB0jUp1KtDp7i7+Hsp+STgNtY/f87uZN+blbrRmTgtlLjg=
X-Received: by 2002:a5d:4086:: with SMTP id o6mr10027470wrp.185.1559832939486; 
 Thu, 06 Jun 2019 07:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190606121037.40a1cc5e@sergmir.emcraft.com>
In-Reply-To: <20190606121037.40a1cc5e@sergmir.emcraft.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 6 Jun 2019 16:55:27 +0200
Message-ID: <CAFLxGvx4iqpU8pq8CPwah9M+Qa2YkpXEiSmndeVy2mLadNQn_g@mail.gmail.com>
Subject: Re: UBIFS: file data corruption during the power cut-off test
To: Sergei Poselenov <sposelenov@emcraft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_075542_206549_AE5EC986 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jun 6, 2019 at 11:10 AM Sergei Poselenov <sposelenov@emcraft.com> wrote:
>
> Hello,
>
> We have an embedded system based on i.MX 6ULL, with the root filesystem deployed on a UBI volume built on top of the SLC NAND device. The volume is mounted as "rw,sync,relatime".
>
> We are doing the following test:
>
>    - Copy the same file (/bin/busybox) to a different file names, in a sequence.
>
>    - Power is cut off during the copy sequence.
>
>    - After reboot, UBI mounts OK, and we see a number of valid copies of /bin/busybox (md5sum matches), and the last file with the short length (partially written), as expected.
>
> The question is: should we expect the last partially-written file to have the valid data of the original? We observe that quite often, the last 512 or so bytes in the short file doesn't match the original.

Hm, I don't fully understand your question.
If you copy files and this is interrupted, the copy is not complete
and therefore contents are missing.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
