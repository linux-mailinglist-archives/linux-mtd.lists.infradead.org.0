Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21562B325C
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Sep 2019 00:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqSb8frrnKjBr2L4TNUZ/8YY8X/gOCIwRUdS/r0fzC4=; b=ZrRGQBOY4ad/5I
	K4i3LSdhnBQBgaQPol3x2rDAhwNnZhjuGABxW6BQ6ioZMQU0JE2jp3YvjjLZj8Y0xvxlVKWHyt9ib
	d6xrUa6gAEVmkLgesikSU36ofa8JOBW6wGk7PKjrCMpCXrZ1i03RKEYSXB0REV60leBkF2YhGiDxP
	BbvvoB9u+8kKL5BZsRBrk/REdT03ji/nvi7dnhBw0APLkznBwtmznJqg3o/cLm1CzaVAK7KWKJiQf
	R7q9y5B1MPdeyHJlkzk7xqpOJiM7MW5VgwgZ499rRhJeluZL/wYTHdkiBEAkJjewkKrTZ4mbamJzs
	xW3lR0RQ/m8byvh567Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9cZO-0001lQ-UH; Sun, 15 Sep 2019 22:00:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9cZG-0001l0-9a
 for linux-mtd@lists.infradead.org; Sun, 15 Sep 2019 22:00:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id 7so7939036wme.1
 for <linux-mtd@lists.infradead.org>; Sun, 15 Sep 2019 15:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gQdTRLfDQUCYZ+ePsNsrBtHX9iXkkifpvhZzWmMPBiI=;
 b=G5aA3r6TGufs7D9PUrvFhJV77rAX2+dF3xkNzIvlCB8lcuhcCRxFrl8IiCsz5+pCqR
 iGIs76v3Opqsb+jWi23TZVohDPeIxd7DZvJtF0mo/VpQ+PpFdYdsrM69qOaKK15naVBP
 7tKHqHsjSZJEegoIElIXGx71lJpP7YlugQpshwV7RJpUzqdgNQWIgSXotexOWJpwtB/3
 ZFBZ6IpjBj+j/E7IztCJSFI7U1o7aaGMT1nUp7ERh4b7AOWSHqpesjH1GzTvIUYFp91O
 jxeVhPDa75ck8OBZ76QIbjnN5EYf5tdddikeEFumaQifoVFW9NwwRnjxV8/8o/KihONO
 sHEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gQdTRLfDQUCYZ+ePsNsrBtHX9iXkkifpvhZzWmMPBiI=;
 b=CMIzRvEJBQ7gIeemH/3JXpASO6+ae+cA/2w7HGUt8muOffKvjRddR1q1Hmpcf5aG8N
 u8zbOMPFYQ9lvWmn0PqA0btfEdRStGXyCjkppJ0sQToFUbE0Eii6gJRJg60v3sfaRLKN
 wEmNocC4E27N8k6i3yZ4O80newYidOUQTqojJB9CybjMeH2radHaZAA5QfG9eCXbqR8a
 Yf2345LFucQhLH5fjoLGUvsirUIfc4ym+Q2zDIPVnVyDnsc8vIGmx5WLNAQcIVKr/L8X
 C5ai+LxVUgh179lqTkV9v3+g18rFGzGaVkdvHGUSggsHxAvd0Jl+bPw0ckK2oordpyrw
 2RKQ==
X-Gm-Message-State: APjAAAU37QG5011f9fa0LNJtIGv9DRrKpXyWeOYFj/LRAassEA5B70UJ
 xTkrXhEBJ4AZ74SEozVSC5C7ClOw9Ca/Rj7Ra2Y=
X-Google-Smtp-Source: APXvYqwM766NmGaQH6bvzzDdlCLOpreegzZP3+wcsPCJHvkAQrHROSzA4YV1Zoh3R6XagU3E9yYZ0Mtq7L5TdR0mGVU=
X-Received: by 2002:a1c:be02:: with SMTP id o2mr10910147wmf.109.1568584822928; 
 Sun, 15 Sep 2019 15:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <1563602720-113903-1-git-send-email-chengzhihao1@huawei.com>
 <CAFLxGvxEAGtQDFm4G3orY+M9yuthDA4j0+u=HbE9DKuo7H8WCg@mail.gmail.com>
 <0B80F9D4116B2F4484E7279D5A66984F7A7472@dggemi524-mbx.china.huawei.com>
 <CAFLxGvz__aw+BnfmGS3XXGqT6n6q-9miLPoVcL9KuvaZ2QbVUQ@mail.gmail.com>
 <0B80F9D4116B2F4484E7279D5A66984F7C0325@dggemi524-mbx.china.huawei.com>
In-Reply-To: <0B80F9D4116B2F4484E7279D5A66984F7C0325@dggemi524-mbx.china.huawei.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 16 Sep 2019 00:00:10 +0200
Message-ID: <CAFLxGvwpYHKi_nf0-uVWWpzG5Yv-hXgOD=9zHmmHHn+Fv+PJDA@mail.gmail.com>
Subject: Re: [PATCH] ubifs: ubifs_tnc_start_commit: Fix OOB in layout_in_gaps
To: chengzhihao <chengzhihao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_150026_337471_58141691 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Artem Bityutskiy <dedekind1@gmail.com>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>, "zhangyi \(F\)" <yi.zhang@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 10:01 AM chengzhihao <chengzhihao1@huawei.com> wrote:
>
> >  ubifs_assert(c, p < c->gap_lebs + c->lst.idx_lebs);
>
> I've done 50 problem reproduces on different flash devices and made sure that the assertion was not triggered. See record.txt for details.

Thanks for letting me know. :)
I need to give this another thought, then we can apply it for -rc2.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
