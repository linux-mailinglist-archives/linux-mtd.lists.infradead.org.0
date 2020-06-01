Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F711EA2D9
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 13:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ln3gpltlnuwrBdNU83q+zjCh9V+bRHLrExQrdmio9vY=; b=eKKIlWp4/Nbc7P
	oY0kUcBhHjELpllxmZlVw1+0xZ79EWI0tLSos6dq61Cn0U/Vt3f8oUuDQdHl1H/V1gSlslPHrtj7Z
	cjnXOO7bTQuHSi9S64VtbJHypDqrwn6t2+RCLqnHToprZv7rDY5AhsLUj1JefuVs/N6om7w5gN8YX
	hW9HRS3Zt6pNIinDx+P2jE29MX5V4+HxjaRSm08KTw8ofPG6kVMgHOcuhdfPh0fUT65STlKR7KLLk
	Id12kTYKcIlPNeyfl3vl67L8oD+E6PXoFHYiq9+oAxEB+aVyHzxGCZBnLTvVtSehMaQEVCKrfV+c0
	oJEQuXCUlu8q6i5N3HMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfil3-0006Xn-Nq; Mon, 01 Jun 2020 11:37:33 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfikd-0006KB-QO
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 11:37:09 +0000
Received: by mail-lj1-x241.google.com with SMTP id u10so6457289ljj.9
 for <linux-mtd@lists.infradead.org>; Mon, 01 Jun 2020 04:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uQTt+MIIpyDA4belDkYAgM2iFZj3fYj7DkPTdahh8pc=;
 b=mFkTPyu0DgEndR/rPSLh+6SZhzSM1qBKDd8PBw9+8FvGjQLyi0X4GhIxr44O0HNY9S
 B0O6ex76hLxTjxqQ49jCMJRn0P5+NwecUxkmaO+2TZvf9guPUE23aZWwKzSV1NJUHrcB
 XWTjHPSBLmNyW5MpuJeasWOkKZDwWVMWV09Kuyua48ogCAyegiD3cR/TT1fDiwk8TBVe
 y4rDFfND0mqTQzB7qrGexH6onIGb5aDrS1KF78f7S5UesCrxYaMWTUjSc4eMyNToKq9P
 irMvgdInEjpirCLJqjXh2FRQc1HtYKpAsHox8q+6ds+nU4NbLZHd1w9jc1+L/R2rJGAo
 PjRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uQTt+MIIpyDA4belDkYAgM2iFZj3fYj7DkPTdahh8pc=;
 b=B//OO9TbRMReUwNLjLSRO2ec1YgThcI4iuj6YiDV+3OY81or7V5h3qmaCZOQ6I3piT
 zBIVgbjE9WBcLuU7ltjyTzDq0pxwzU4PyeEY7zFmJ6Nh6rVI2avlt7SzGBs4fve0Q7/6
 EUak7TiF1/oXYbbEAo1HUkwet/CbK2nhhbFTYvNBltqdX3vhqHsrs2TqzeqgP2gJi0tg
 QRIkMAVpBfV3t/iYSQ0gJHxcHl4UDENitDzZj6RsB078Gx/FiNXFDVV418EVndgwEAzm
 GS8dZ8riQiyM807eZdqvQfza2z/7bHfaXlU1v4sEImAyFhNHn+nGk22RXvZiIA1uTnWz
 nHJw==
X-Gm-Message-State: AOAM532SJjr/vGnyyhhn1/6q9i+fO+Fw4YwtZfgbchQUETVazL5KlTfP
 hS+hL72klXUvmmrwBwDiOQmq6Ob+Baf6UH8FD8lSlQ==
X-Google-Smtp-Source: ABdhPJw+PTS+SxItJ484C0YqddclYX1X+Em1nuXbhwpxd5uIYFTeFzaNLSV1mhgdPe0vjmuzIUkSf9IuyYYdVc5kqow=
X-Received: by 2002:a2e:92d7:: with SMTP id k23mr1854314ljh.100.1591011425955; 
 Mon, 01 Jun 2020 04:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200528081003.238804-1-linus.walleij@linaro.org>
 <20200601074957.GE1181806@T590>
In-Reply-To: <20200601074957.GE1181806@T590>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 1 Jun 2020 13:36:54 +0200
Message-ID: <CACRpkdYL4-Z=kaS+RfniVr=Sn-yOf+=CKMJDsn=eTK3atmGohg@mail.gmail.com>
Subject: Re: [PATCH] block: Flag elevators suitable for single queue
To: Ming Lei <ming.lei@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_043707_877784_28ED4B15 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <damien.lemoal@wdc.com>,
 Paolo Valente <paolo.valente@linaro.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 linux-block <linux-block@vger.kernel.org>, linux-mtd@lists.infradead.org,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 9:50 AM Ming Lei <ming.lei@redhat.com> wrote:
> On Thu, May 28, 2020 at 10:10:03AM +0200, Linus Walleij wrote:
> > The Kyber block scheduler is not suitable for single hardware
> > queue devices, so add a new flag for single hardware queue
> > devices and add that to the deadline and BFQ schedulers
> > so the Kyber scheduler will not be selected for single queue
> > devices.
>
> The above may not be true for some single hw queue high performance HBA(
> such as megasas), which can get better performance from none, so it is
> reasonable to get better performance from kyber, see 6ce3dd6eec11 ("blk-mq:
> issue directly if hw queue isn't busy in case of 'none'"), and the
> following link:
>
> https://lore.kernel.org/linux-block/20180710010331.27479-1-ming.lei@redhat.com/

I see, but isn't the case rather that none is preferred and kyber gives
the same characteristics because it's not standing in the way
as much?

It looks like if we should add a special flag for these devices with
very fast single queues so they can say "I prefer none", do you
agree?

Yours,
Linus Walleij

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
