Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB52A6161D
	for <lists+linux-mtd@lfdr.de>; Sun,  7 Jul 2019 20:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+mCmCIXUhl5WTO5zuDBR5rXt/FHcmyg10n96UOL908=; b=M1/Sym942KHYbK
	ILu/3h2UzpZrIsPlQziJzHGtv6w6KtA/udOXfjgbpqSWw3+oM5ZZRkmLeEhxdaml2HlDb0RNB8THL
	elIRiE1K90/NkWtESqptETBkEwBXsP7UxYKrGRjp9cMvgk9cInU6GBKW4ByeLsYjFMVSTsURRqBf/
	/3Yqx07AEOzRzxcLEvhKDPplleHQZjMBvfdE3Jrc6lExZhqG7lqnwUDtcMKiN5TCTOnQht+SI8u/j
	zX/M9f/1n8oJKjv/g5mVbMFmYnMshEEPXjxekYQRLm0HdbnRgoReiW5Yc4AkYLIO72HZ9/BNGIBZD
	7JM00d9zVg5OKPhF4qfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkCBL-0004V9-Ac; Sun, 07 Jul 2019 18:46:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkCBA-0004Uk-SN
 for linux-mtd@lists.infradead.org; Sun, 07 Jul 2019 18:46:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so13613218wms.2
 for <linux-mtd@lists.infradead.org>; Sun, 07 Jul 2019 11:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L6timX0gQJEBIxMah3pF3mfpam6FwMoFqJWEfMCkqVc=;
 b=DjO120H1Z7WiybUUq/FmlobfZa+0Tjq2/BBSi8wrF94PSYVlvDjUg6zU1JBbgBRW/V
 jR6mC9zd5YO7XyYs6j78VgXOGQ9o77M0zBe9oQIG8PVruN0uMFQB8rAb7HMVfgtPRb/W
 x8dYcmSMvvoNrSRQ+l25JyEe8MvOl9dk8KZbCmY9uKT0SkDAF3+FzUtbeydT2IAKpWlt
 ThVrveUStdnioYPWHxgo+I6X+9+vWU9Fue1nE4oIky9eAhFkjw2dTu7q2dTr/hI1n64b
 qEp2+n0+S5NEeIW641OuRxaWmywIBug3B27Qn/mhQXwV0uKISvtJLXOBSFfI8XFo5avU
 Cb7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L6timX0gQJEBIxMah3pF3mfpam6FwMoFqJWEfMCkqVc=;
 b=lLN+GREc+DBqN0QmKQ/8tTBc1OkMgvV5ns0L51lLursgx9LtU74mBg1/6JzMbqYTUD
 mfn7Wfsq1aFT3+uQTMoOIR6fEMoHU2jMEGPwsBF2YfSfbg0KwFhbPBA8CjFHWZruWfaX
 X/UQ8VwLy63ooebSjnITT4zs/A4al9os2LpiDtb3pUKssdsAR3RX3Cv5IzbjKqlERQnt
 8JM+yQWsgHWoDMuVa/uRLzL5ihXv7VQYLaDBZecs5SXkMDJ1nIlnljVYdKZjjKq2BqeP
 TY4TdBW0EZDGYUpLZB+014K7nCBYZmpAINtoKbantn2zX3CHjquwWRVlXMwgMq41FgRC
 hJHg==
X-Gm-Message-State: APjAAAUJRemcby69s8oEjxN+RY36f0ls+qMTqk1MX88LGU5G6VFQMBwA
 Ik1qUoCY1L/7etS+KT+5zWc0SX9w9q/drW7YrMk=
X-Google-Smtp-Source: APXvYqxDsivsH4zthvW9FrIbBJrXLQ+6bpjhTvoaebrztfH+5uj3+I0VL3iV7hqmTctsYaJSnmcoo9Ll1g+TsbU8zy4=
X-Received: by 2002:a1c:9e4d:: with SMTP id h74mr13651549wme.9.1562525187486; 
 Sun, 07 Jul 2019 11:46:27 -0700 (PDT)
MIME-Version: 1.0
References: <1559114302-10507-1-git-send-email-dingxiang@cmss.chinamobile.com>
In-Reply-To: <1559114302-10507-1-git-send-email-dingxiang@cmss.chinamobile.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 7 Jul 2019 20:46:16 +0200
Message-ID: <CAFLxGvwi4WzHT7FAZaucjSMy=L+Y2GY8oL3uFyBto+hK+BBTLA@mail.gmail.com>
Subject: Re: [PATCH] mtd: afs: remove unneeded NULL check
To: Ding Xiang <dingxiang@cmss.chinamobile.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_114628_915342_3FD5C62C 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 9:19 AM Ding Xiang
<dingxiang@cmss.chinamobile.com> wrote:
>
> NULL check before kfree is unneeded, so remove it.
>
> Signed-off-by: Ding Xiang <dingxiang@cmss.chinamobile.com>

Applied.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
